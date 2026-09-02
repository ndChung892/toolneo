/* Address: 006b04c0 | Ghidra name: FUN_006b04c0 */

void FUN_006b04c0(void)

{
  int iVar1;
  undefined4 uVar2;
  int iVar3;
  
  uVar2 = 0;
  iVar1 = FUN_00eaeae1(0);
  *(undefined ***)(iVar1 + 8) = &PTR_DAT_01bd4568;
  *(undefined ***)(iVar1 + 0xc) = &PTR_DAT_01bd435c;
  *(undefined ***)(iVar1 + 0x10) = &PTR_DAT_01bd4478;
  if (PTR_FUN_01c214f8 != (undefined *)0x0) {
    FUN_00e8e0d6();
  }
  iVar3 = DAT_01c28540;
  FUN_00eaec39();
  iVar1 = FUN_00eaeae1(uVar2);
  *(undefined ***)(iVar1 + 8) = &PTR_DAT_01bd4320;
  *(undefined ***)(iVar1 + 0xc) = &PTR_DAT_01bd4438;
  *(undefined ***)(iVar1 + 0x10) = &PTR_DAT_01bd42dc;
  FUN_00eaebca();
  iVar1 = FUN_00eaeae1();
  *(undefined ***)(iVar1 + 8) = &PTR_DAT_01bd44d4;
  *(undefined ***)(iVar1 + 0xc) = &PTR_DAT_01bd43b0;
  iVar1 = iVar3 + 0xc;
  FUN_00e4db20(&PTR_DAT_01549ec4);
  FUN_00e4edc0(iVar1);
  FUN_00eaebca();
  iVar1 = FUN_00eaeae1();
  *(undefined ***)(iVar1 + 8) = &PTR_DAT_01bd451c;
  *(undefined ***)(iVar1 + 0xc) = &PTR_DAT_01bd43f0;
  iVar3 = iVar3 + 0x10;
  FUN_00e4db20(&PTR_DAT_01549ec4);
  FUN_00e4edc0(iVar3);
  FUN_00eaebca();
  if (PTR_LAB_01c22250 != (undefined *)0x0) {
    FUN_00e8ec86();
  }
  if (*(int *)(DAT_01c28f88 + 0x10) != 0) {
    FUN_00eaebef();
    return;
  }
                    /* WARNING: Subroutine does not return */
  FUN_00911740();
}

