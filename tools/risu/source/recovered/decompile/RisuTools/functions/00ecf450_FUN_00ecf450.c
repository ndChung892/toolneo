/* Address: 00ecf450 | Ghidra name: FUN_00ecf450 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_00ecf450(undefined4 param_1)

{
  if (3 < DAT_01c831f4) {
    param_1 = DAT_01c86058;
    FUN_00eb8c10(0xd,3,
                 "{ =========== BEGINGC %d, (requested generation = %lu, collect_classes = %lu) ==========\n"
                 ,DAT_01c86058,DAT_01c8605c,DAT_01c86090);
  }
  _DAT_01c860a0 = DAT_01c86eb0;
  if (DAT_01c86070 != 0) {
    DAT_01c86d3c = (uint)(DAT_01c86d3c == 0);
    *(undefined4 *)(&DAT_01c869f8 + DAT_01c86d3c * 0x80) = DAT_01c86058;
  }
  FUN_00ec2310(param_1);
  FUN_00ed08f0();
  if (DAT_01c86070 != 0) {
    DAT_01c8618c = DAT_01c8618c + 1;
    return;
  }
  if (DAT_01c8605c == 2) {
    DAT_01c86188 = DAT_01c86188 + 1;
    return;
  }
  if (DAT_01c8609c != 0) {
    *(int *)(&DAT_01c869ec + DAT_01c8605c * 4) = *(int *)(&DAT_01c869ec + DAT_01c8605c * 4) + 1;
  }
  return;
}

