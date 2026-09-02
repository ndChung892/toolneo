/* Address: 0077d300 | Ghidra name: FUN_0077d300 */

void __fastcall FUN_0077d300(int param_1)

{
  int iVar1;
  int iVar2;
  undefined **ppuVar3;
  undefined4 uVar4;
  int iVar5;
  undefined4 local_1c;
  undefined4 local_18;
  int local_14;
  
  local_14 = 0;
  local_18 = 0;
  if (*(int *)(param_1 + 4) == 0) {
    local_14 = *(int *)(param_1 + 0x10);
    *(undefined4 *)(param_1 + 0x10) = 0;
    *(undefined4 *)(param_1 + 4) = 0xffffffff;
  }
  else {
    local_14 = FUN_0077a680(&PTR_DAT_01c0f488,5000,&PTR_DAT_01be7740);
    if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 4) = 0;
      FUN_00eaeca8();
      FUN_00d92840(&PTR_DAT_01545528);
      FUN_00dfca00(&PTR_DAT_015573f8);
      return;
    }
  }
  if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  if (((*(int *)(local_14 + 0x20) != 0) && (*(int *)(*(int *)(local_14 + 0x20) + 4) != 0)) &&
     (iVar1 = FUN_00905af0(), iVar1 != 0)) {
    local_1c = 0x7c;
    iVar1 = FUN_00908570(0,&local_1c,1);
    if (2 < *(int *)(iVar1 + 4)) {
      iVar2 = *(int *)(iVar1 + 0xc);
      if (iVar2 == 0) {
        local_18 = 0;
      }
      else {
        iVar5 = iVar2 + 8;
        uVar4 = *(undefined4 *)(iVar2 + 4);
        FUN_00958ea0(iVar5,uVar4);
        iVar2 = FUN_00dd21c0(&local_18,iVar5,uVar4);
        if (iVar2 == 0) {
          ppuVar3 = *(undefined ***)(iVar1 + 0x10);
          uVar4 = local_18;
          goto LAB_0077d43c;
        }
      }
    }
  }
  ppuVar3 = &PTR_DAT_01b39360;
  uVar4 = 0xffffffff;
LAB_0077d43c:
  *(undefined4 *)(param_1 + 4) = 0xfffffffe;
  if (*(int *)(param_1 + 0xc) == 0) {
    iVar1 = FUN_00eae9a0();
    *(undefined4 *)(iVar1 + 0x1c) = 0x1000000;
    iVar1 = FUN_00eaec39();
    *(undefined4 *)(iVar1 + 0x24) = uVar4;
    FUN_00eaeca8();
  }
  else {
    iVar1 = FUN_00c73b10(ppuVar3,uVar4);
    if (iVar1 == 0) {
                    /* WARNING: Subroutine does not return */
      FUN_00931e50();
    }
  }
  return;
}

