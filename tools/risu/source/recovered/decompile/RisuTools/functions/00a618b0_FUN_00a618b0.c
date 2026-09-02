/* Address: 00a618b0 | Ghidra name: FUN_00a618b0 */

void __fastcall FUN_00a618b0(int param_1)

{
  int iVar1;
  uint uVar2;
  
  uVar2 = *(uint *)(param_1 + 0x2c);
  iVar1 = *(int *)(param_1 + 0x14);
  if (uVar2 == *(uint *)(iVar1 + 4)) {
    FUN_00a62c10(&PTR_DAT_01b8fb88);
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  *(uint *)(param_1 + 0x2c) = uVar2 + 1;
  if (uVar2 < *(uint *)(iVar1 + 4)) {
    uVar2 = (uint)*(ushort *)(iVar1 + 8 + uVar2 * 2);
    if (uVar2 - 0x61 < 0x1a) {
      uVar2 = uVar2 - 0x20 & 0xffff;
    }
    if ((uVar2 - 0x40 & 0xffff) < 0x20) {
      return;
    }
    FUN_00a62c10(&PTR_DAT_01bd3278);
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
                    /* WARNING: Subroutine does not return */
  FUN_009c2bf0();
}

