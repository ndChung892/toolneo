/* Address: 0097bc70 | Ghidra name: FUN_0097bc70 */

void __fastcall FUN_0097bc70(undefined4 param_1,ushort param_2,undefined4 param_3,ushort param_4)

{
  int iVar1;
  undefined4 uVar2;
  int iVar3;
  
  if (0x3ff < param_2 - 0xd800) {
    iVar1 = FUN_00eae9a0();
    *(undefined4 *)(iVar1 + 4) = 0xd800;
    iVar1 = FUN_00eae9a0();
    *(undefined4 *)(iVar1 + 4) = 0xdbff;
    FUN_00eae9a0();
    uVar2 = FUN_00930f30(iVar1);
    FUN_009117c0(uVar2);
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  if (0x3ff < param_4 - 0xdc00) {
    iVar1 = FUN_00eae9a0();
    *(undefined4 *)(iVar1 + 4) = 0xdc00;
    iVar1 = FUN_00eae9a0();
    *(undefined4 *)(iVar1 + 4) = 0xdfff;
    FUN_00eae9a0();
    uVar2 = FUN_00930f30(iVar1);
    FUN_009117c0(uVar2);
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  uVar2 = FUN_00912c00();
  iVar1 = FUN_00eae9a0();
  *(undefined4 *)(iVar1 + 4) = uVar2;
  iVar3 = FUN_00eae9a0();
  *(undefined4 *)(iVar3 + 4) = param_3;
  uVar2 = FUN_00eae9a0();
  FUN_00930f30(iVar3);
  FUN_0097bdf0(param_3,param_4,param_2);
                    /* WARNING: Subroutine does not return */
  FUN_00eaeefb(uVar2,iVar1);
}

