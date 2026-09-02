/* Address: 0099f3e0 | Ghidra name: FUN_0099f3e0 */

void __fastcall FUN_0099f3e0(undefined4 param_1,int param_2,int param_3)

{
  int iVar1;
  int *piVar2;
  
  iVar1 = FUN_009c0010();
  if (iVar1 == 0) {
    piVar2 = (int *)FUN_009c0100();
    if (*piVar2 == 0) {
      FUN_0090e760();
    }
    FUN_00eae9a0();
    FUN_00930f30(&PTR_DAT_01b6cad0);
    FUN_00928850();
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  iVar1 = 0;
  if (*(ushort *)(param_3 + 0xe) != 0) {
    do {
      if (*(int *)(param_3 + 0x14 + (uint)*(ushort *)(param_3 + 0xc) * 4 + iVar1 * 4) == param_2) {
        FUN_00eae9a0();
        FUN_0091d150();
                    /* WARNING: Subroutine does not return */
        FUN_00eaeefb();
      }
      iVar1 = iVar1 + 1;
    } while (iVar1 < (int)(uint)*(ushort *)(param_3 + 0xe));
  }
  piVar2 = (int *)FUN_009c0100();
  if (*piVar2 == 0) {
    FUN_0090e760();
  }
  piVar2 = (int *)FUN_009c0100();
  iVar1 = *piVar2;
  if (iVar1 == 0) {
    iVar1 = FUN_0090e760();
  }
  FUN_00eae9a0();
  FUN_00930f30(iVar1);
  FUN_00928850();
                    /* WARNING: Subroutine does not return */
  FUN_00eaeefb();
}

