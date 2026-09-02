// Ghidra headless post-script: export strings and decompile functions that reference
// application-oriented strings. This is an evidence collector, not a source restorer.
import ghidra.app.decompiler.*;
import ghidra.app.script.GhidraScript;
import ghidra.program.model.address.Address;
import ghidra.program.model.data.StringDataInstance;
import ghidra.program.model.listing.*;
import ghidra.program.model.symbol.Reference;

import java.io.*;
import java.nio.charset.StandardCharsets;
import java.util.*;

public class ExportInterestingFunctions extends GhidraScript {
    private static final String[] NEEDLES = {
        "login", "auth", "token", "party", "invite", "map", "portal", "move",
        "battle", "auto", "npc", "monster", "boss", "quest", "pet", "proxy",
        "allocate", "free?port", "socks", "risu", "flash", "character", "line"
    };

    @Override
    public void run() throws Exception {
        String[] args = getScriptArgs();
        if (args.length != 1) throw new IllegalArgumentException("Expected output directory");
        File out = new File(args[0]);
        File funcsDir = new File(out, "functions");
        funcsDir.mkdirs();

        Set<Function> selected = new TreeSet<>(Comparator.comparing(f -> f.getEntryPoint().toString()));
        try (PrintWriter strings = writer(new File(out, "strings-xrefs.tsv"))) {
            strings.println("string_address\tfunction_address\tfunction_name\tstring");
            DataIterator data = currentProgram.getListing().getDefinedData(true);
            while (data.hasNext() && !monitor.isCancelled()) {
                Data item = data.next();
                if (!item.hasStringValue()) continue;
                String value;
                try { value = StringDataInstance.getStringDataInstance(item).getStringValue(); }
                catch (Exception ignored) { continue; }
                if (value == null || !interesting(value)) continue;
                Reference[] refs = getReferencesTo(item.getAddress());
                if (refs.length == 0) strings.println(tsv(item.getAddress(), null, null, value));
                for (Reference ref : refs) {
                    Function f = getFunctionContaining(ref.getFromAddress());
                    if (f != null) selected.add(f);
                    strings.println(tsv(item.getAddress(), f == null ? null : f.getEntryPoint(),
                        f == null ? null : f.getName(), value));
                }
            }
        }

        DecompInterface decompiler = new DecompInterface();
        decompiler.toggleCCode(true);
        decompiler.toggleSyntaxTree(true);
        decompiler.setSimplificationStyle("decompile");
        if (!decompiler.openProgram(currentProgram)) throw new IOException("Cannot open program in decompiler");

        try (PrintWriter index = writer(new File(out, "functions-index.tsv"))) {
            index.println("address\tname\tfile\tstatus");
            for (Function f : selected) {
                if (monitor.isCancelled()) break;
                String base = f.getEntryPoint() + "_" + safe(f.getName()) + ".c";
                DecompileResults result = decompiler.decompileFunction(f, 90, monitor);
                String status = result.decompileCompleted() ? "ok" : result.getErrorMessage();
                index.println(f.getEntryPoint() + "\t" + clean(f.getName()) + "\t" + base + "\t" + clean(status));
                try (PrintWriter pw = writer(new File(funcsDir, base))) {
                    pw.println("/* Address: " + f.getEntryPoint() + " | Ghidra name: " + f.getName() + " */");
                    if (result.decompileCompleted() && result.getDecompiledFunction() != null)
                        pw.println(result.getDecompiledFunction().getC());
                    else pw.println("/* Decompile failed: " + clean(status) + " */");
                }
            }
        } finally {
            decompiler.dispose();
        }
        println("Exported " + selected.size() + " interesting functions to " + out.getAbsolutePath());
    }

    private boolean interesting(String value) {
        String lower = value.toLowerCase(Locale.ROOT);
        for (String needle : NEEDLES) if (lower.contains(needle)) return true;
        return false;
    }

    private PrintWriter writer(File file) throws IOException {
        return new PrintWriter(new OutputStreamWriter(new FileOutputStream(file), StandardCharsets.UTF_8));
    }

    private String tsv(Address stringAddr, Address functionAddr, String functionName, String value) {
        return stringAddr + "\t" + (functionAddr == null ? "" : functionAddr) + "\t" +
            clean(functionName) + "\t" + clean(value);
    }

    private String clean(String s) { return s == null ? "" : s.replace('\t', ' ').replace('\r', ' ').replace('\n', ' '); }
    private String safe(String s) { return clean(s).replaceAll("[^A-Za-z0-9_.-]", "_"); }
}
