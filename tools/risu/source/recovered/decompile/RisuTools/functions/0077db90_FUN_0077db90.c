/* Address: 0077db90 | Ghidra name: FUN_0077db90 */

void __fastcall FUN_0077db90(int param_1)

{
  int iVar1;
  int iVar2;
  int iVar3;
  undefined4 uVar4;
  undefined4 local_20;
  int local_1c;
  int local_18;
  int local_14;
  
  local_14 = 0;
  local_18 = 0;
  local_1c = 0;
  if (*(int *)(param_1 + 4) == 0) {
    local_14 = *(int *)(param_1 + 0x10);
    *(undefined4 *)(param_1 + 0x10) = 0;
    *(undefined4 *)(param_1 + 4) = 0xffffffff;
  }
  else {
    local_14 = FUN_0077a680(&PTR_DAT_01c0f488,5000,&PTR_DAT_01be7830);
    if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 4) = 0;
      FUN_00eaeca8();
      FUN_00d93000();
      FUN_00dfca00(&PTR_DAT_01557404);
      return;
    }
  }
  if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  if ((*(int *)(local_14 + 0x20) != 0) && (*(int *)(*(int *)(local_14 + 0x20) + 4) != 0)) {
    iVar1 = FUN_00905af0();
    if (iVar1 != 0) {
      FUN_00909650();
    }
    local_20 = 0x7c;
    iVar1 = FUN_00908570(0,&local_20,1);
    if (1 < *(int *)(iVar1 + 4)) {
      iVar2 = *(int *)(iVar1 + 8);
      if (iVar2 == 0) {
        local_18 = 0;
      }
      else {
        iVar3 = iVar2 + 8;
        uVar4 = *(undefined4 *)(iVar2 + 4);
        FUN_00958ea0(iVar3,uVar4);
        iVar2 = FUN_00dd21c0(&local_18,iVar3,uVar4);
        if (iVar2 == 0) {
          iVar1 = *(int *)(iVar1 + 0xc);
          if (iVar1 == 0) {
            local_1c = 0;
          }
          else {
            iVar2 = iVar1 + 8;
            uVar4 = *(undefined4 *)(iVar1 + 4);
            FUN_00958ea0(iVar2,uVar4);
            iVar3 = FUN_00dd21c0(&local_1c,iVar2,uVar4);
            iVar1 = local_18;
            iVar2 = local_1c;
            if (iVar3 == 0) goto LAB_0077dd0d;
          }
        }
      }
    }
  }
  iVar1 = 0;
  iVar2 = 0;
LAB_0077dd0d:
  *(undefined4 *)(param_1 + 4) = 0xfffffffe;
  if (*(int *)(param_1 + 0xc) == 0) {
    if (iVar1 == 0 && iVar2 == 0) {
      if (PTR_LAB_01c258dc != (undefined *)0x0) {
        FUN_00e8f98a();
      }
    }
    else {
      iVar3 = FUN_00eae9a0();
      *(undefined4 *)(iVar3 + 0x1c) = 0x1000000;
      *(int *)(iVar3 + 0x20) = iVar1;
      *(int *)(iVar3 + 0x24) = iVar2;
    }
    FUN_00eaeca8();
  }
  else {
    iVar1 = FUN_00c52960(iVar1,iVar2);
    if (iVar1 == 0) {
                    /* WARNING: Subroutine does not return */
      FUN_00931e50();
    }
  }
  return;
}

