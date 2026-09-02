/* Address: 00a35740 | Ghidra name: FUN_00a35740 */

/* WARNING: Removing unreachable block (ram,0x00a35832) */
/* WARNING: Removing unreachable block (ram,0x00a358c7) */

void __fastcall FUN_00a35740(undefined4 param_1,int param_2)

{
  undefined1 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  int iStack_24;
  
  iStack_24 = 0;
  iVar4 = FUN_00a492a0();
  iVar5 = *(int *)(param_2 + 0x2c);
  if (iVar5 == 0) {
    iVar5 = FUN_0090da80();
  }
  iVar6 = FUN_009307c0(0xd,u_LineNumber__01b3a6c4);
  if (-1 < iVar6) {
    FUN_0099d430(3);
    iVar6 = FUN_00909690(iVar6);
    if ((iVar6 == 0) || (*(int *)(iVar6 + 4) != 0)) {
      FUN_0099d670(iVar6,iVar5);
    }
    else {
      FUN_00930280(*(int *)(iVar6 + 4) * 2);
      iStack_24 = *(int *)(iVar6 + 4);
    }
    if (iStack_24 == 0) {
      FUN_0099d6f0();
      if ((iVar4 == 0) || (*(int *)(iVar4 + 4) != 0)) {
        FUN_0099d670();
      }
      else {
        FUN_00930280(*(int *)(iVar4 + 4) * 2);
        iStack_24 = *(int *)(iVar4 + 4);
      }
      if (iStack_24 == 0) {
        FUN_0099d6f0();
        iVar5 = FUN_00909650();
        if ((iVar5 == 0) || (*(int *)(iVar5 + 4) != 0)) {
          FUN_0099d670();
        }
        else {
          FUN_00930280(*(int *)(iVar5 + 4) * 2);
        }
        FUN_0099d560();
        goto LAB_00a3595f;
      }
    }
                    /* WARNING: Subroutine does not return */
    FUN_009318f0();
  }
  FUN_00906b80(&PTR_DAT_01b42d2c,iVar4);
LAB_00a3595f:
  uVar1 = *(undefined1 *)(param_2 + 0x3c);
  uVar2 = *(undefined4 *)(param_2 + 0x44);
  uVar3 = *(undefined4 *)(param_2 + 0x48);
  FUN_00eae9a0();
  FUN_00a392e0(param_2,*(undefined4 *)(param_2 + 0x4c),*(undefined4 *)(param_2 + 0x50),
               *(undefined4 *)(param_2 + 0x54),*(undefined4 *)(param_2 + 0x58),uVar1,0,uVar2,uVar3,
               iVar4);
                    /* WARNING: Subroutine does not return */
  FUN_00eaeefb();
}

