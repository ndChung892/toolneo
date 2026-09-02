/* Address: 00706c80 | Ghidra name: FUN_00706c80 */

/* WARNING: Removing unreachable block (ram,0x00706d2e) */
/* WARNING: Removing unreachable block (ram,0x00706d3c) */
/* WARNING: Removing unreachable block (ram,0x00706d43) */
/* WARNING: Removing unreachable block (ram,0x00706d54) */

void __fastcall FUN_00706c80(int param_1)

{
  uint uVar1;
  int iVar2;
  int iVar3;
  float10 fVar4;
  undefined8 uVar5;
  
  uVar5 = FUN_009bafa0();
  fVar4 = (float10)FUN_00eb6270(uVar5);
  if (PTR_FUN_01c22284 != (undefined *)0x0) {
    FUN_00e8cd4a();
  }
  uVar5 = FUN_00eb61b0((double)fVar4 * DAT_01c22298);
  iVar3 = (int)((ulonglong)uVar5 >> 0x20);
  if (((*(char *)(param_1 + 0x1c) != '\0') &&
      (uVar1 = (uint)(*(uint *)(param_1 + 0x24) < (uint)uVar5),
      iVar2 = *(int *)(param_1 + 0x28) - iVar3,
      (SBORROW4(*(int *)(param_1 + 0x28),iVar3) != SBORROW4(iVar2,uVar1)) !=
      (int)(iVar2 - uVar1) < 0)) && (*(int *)(param_1 + 0x18) != 0)) {
    FUN_0043bbd0();
    if (*(int *)(param_1 + 0x18) != 0) {
      FUN_006cd470();
    }
    FUN_00706a10();
  }
  return;
}

