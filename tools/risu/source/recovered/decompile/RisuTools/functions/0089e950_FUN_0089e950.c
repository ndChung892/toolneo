/* Address: 0089e950 | Ghidra name: FUN_0089e950 */

/* WARNING: Removing unreachable block (ram,0x0089ea16) */
/* WARNING: Removing unreachable block (ram,0x0089ea3b) */
/* WARNING: Removing unreachable block (ram,0x0089ea26) */
/* WARNING: Removing unreachable block (ram,0x0089ea39) */
/* WARNING: Removing unreachable block (ram,0x0089ea44) */
/* WARNING: Removing unreachable block (ram,0x0089ea88) */
/* WARNING: Removing unreachable block (ram,0x0089eaef) */
/* WARNING: Removing unreachable block (ram,0x0089eafc) */
/* WARNING: Removing unreachable block (ram,0x0089ea98) */
/* WARNING: Removing unreachable block (ram,0x0089eab1) */

void __fastcall FUN_0089e950(int *param_1)

{
  undefined4 uVar1;
  int iVar2;
  int local_28;
  int iStack_24;
  
  if ((param_1[4] == 0) || (*(int *)(*(int *)(*(int *)(*param_1 + 4) + 0x10) + 0x34) != 0)) {
    if (param_1[4] == 0) {
      local_28 = param_1[9];
      iStack_24 = param_1[10];
      param_1[9] = 0;
      param_1[10] = 0;
      param_1[0xb] = 0;
      param_1[4] = -1;
    }
    else {
      iVar2 = *(int *)(*param_1 + 4);
      FUN_00eae9a0();
      iVar2 = *(int *)(*(int *)(iVar2 + 0x10) + 0x34);
      FUN_00eaebef(param_1[2]);
      FUN_00eaebef();
      uVar1 = FUN_00eaec14();
      (**(code **)(iVar2 + 0x10))(param_1[8],uVar1);
      local_28 = 0;
      iStack_24 = 0;
    }
    if (local_28 != 0) {
      iVar2 = FUN_0099aa80();
      if (iVar2 == 0) {
        iStack_24 = (*(code *)PTR_FUN_01c52748)();
      }
      else {
        if ((*(uint *)(iVar2 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        iStack_24 = *(int *)(iVar2 + 0x20);
      }
    }
    if (iStack_24 == 0) {
      (**(code **)(*(int *)param_1[1] + 0x40))();
      iVar2 = FUN_00eae9a0();
      FUN_0090da50();
      *(undefined ***)(iVar2 + 4) = &PTR_DAT_01bc6040;
                    /* WARNING: Subroutine does not return */
      FUN_00eaeefb();
    }
  }
  param_1[4] = -2;
  if (param_1[6] == 0) {
    FUN_00eaeca8();
    if (PTR_DAT_01c240c4 != (undefined *)0x0) {
      FUN_00e8f77b();
    }
    FUN_00eaeca8();
  }
  else {
    iVar2 = FUN_00cc8af0();
    if (iVar2 == 0) {
                    /* WARNING: Subroutine does not return */
      FUN_00931e50();
    }
  }
  return;
}

