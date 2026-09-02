# RisuGame.dll pseudocode notes

Status: **derived from the supplied prior analysis report; raw decompiler export needs revalidation**.

```text
on process attach:
    disable thread callbacks
    locate ws2_32!connect
    install an inline hook

hooked connect(socket, destination):
    if destination is the observed game endpoint and RISU_SOCKS_PORT is set:
        connect to 127.0.0.1:RISU_SOCKS_PORT
        perform a SOCKS5 no-auth CONNECT handshake for the original destination
        return success/failure
    otherwise:
        call the original connect
```

This file intentionally records behavior rather than providing a buildable injector/hook.
Function addresses, exact bytes, and error paths should be added after a fresh decompile.
