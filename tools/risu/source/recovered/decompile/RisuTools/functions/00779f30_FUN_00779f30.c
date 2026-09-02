/* Address: 00779f30 | Ghidra name: FUN_00779f30 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_00779f30(int param_1)

{
  int iVar1;
  int iVar2;
  int iVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 local_28;
  int local_1c;
  int local_18;
  
  iVar2 = *(int *)(param_1 + 0xc);
  iVar1 = *(int *)(param_1 + 8);
  if (iVar2 == 0) {
    local_18 = *(int *)(param_1 + 0x14);
    *(undefined4 *)(param_1 + 0x14) = 0;
    *(undefined4 *)(param_1 + 0xc) = 0xffffffff;
  }
  else {
    if (iVar2 == 1) {
      local_1c = *(int *)(param_1 + 0x18);
      *(undefined4 *)(param_1 + 0x18) = 0;
      *(undefined4 *)(param_1 + 0xc) = 0xffffffff;
      goto LAB_0077a055;
    }
    iVar3 = FUN_00eae9a0();
    FUN_00a1f570();
    if (PTR_LAB_01c22148 != (undefined *)0x0) {
      FUN_00e8eba9();
    }
    FUN_00906aa0(&PTR_DAT_01ba4560);
    FUN_009d4fe0();
    FUN_00a1dc80();
    FUN_00911f20();
    FUN_00908120(&PTR_DAT_01b39360);
    if (PTR_FUN_01c22014 != (undefined *)0x0) {
      FUN_00e8ea44();
    }
    FUN_0095ba10();
    if (iVar2 < 0) {
      iVar2 = *(int *)(iVar3 + 0x14);
      FUN_009a2b60(*(undefined4 *)(iVar2 + 8));
      FUN_009024f0();
      if (*(int *)(iVar2 + 0xc) != 0) {
        *(undefined4 *)(iVar2 + 0xc) = 0;
        FUN_0090b420();
      }
      *(undefined1 *)(iVar3 + 0x10) = 1;
      FUN_009024f0();
    }
    uVar4 = FUN_00eae9a0();
    FUN_00716bc0();
    FUN_00eaebca();
    FUN_00eaebca();
    if (PTR_FUN_01c21b10 != (undefined *)0x0) {
      FUN_00e8c96c();
    }
    if (PTR_FUN_01c21b10 != (undefined *)0x0) {
      FUN_00e8e2c3();
    }
    FUN_00eaebca();
    FUN_00eaec5e();
    if (PTR_FUN_01c21afc != (undefined *)0x0) {
      FUN_00e8e26e();
    }
    uVar5 = FUN_007178f0();
    local_18 = FUN_00e506a0(&DAT_01542ad8,0,uVar5,uVar4);
    if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 0xc) = 0;
      FUN_00eaeca8();
      FUN_00d91520(&PTR_DAT_015454a4);
      FUN_00dfca00(&PTR_DAT_01554d08);
      return;
    }
  }
  if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  iVar2 = FUN_008993b0();
  if (PTR_FUN_01c21afc != (undefined *)0x0) {
    FUN_00e8e26e();
  }
  FUN_00716c30();
  if (iVar2 == 0) {
                    /* WARNING: Subroutine does not return */
    FUN_00911740();
  }
  local_1c = FUN_00e506f0(&PTR_DAT_01545400,0);
  if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
    *(undefined4 *)(param_1 + 0xc) = 1;
    FUN_00eaeca8();
    FUN_00d91520(&PTR_DAT_015454a4);
    FUN_00dfca00(&PTR_DAT_01554418);
    return;
  }
LAB_0077a055:
  if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  iVar2 = *(int *)(local_1c + 0x20);
  if (iVar2 == 0) {
    iVar2 = FUN_00eae9a0();
    FUN_00779d10();
    *(undefined1 *)(iVar2 + 0x1c) = 0;
    *(undefined ***)(iVar2 + 0x18) = &PTR_DAT_01b865dc;
  }
  if (*(char *)(iVar2 + 0x1c) == '\0') {
    iVar2 = *(int *)(iVar1 + 0xc);
    if (iVar2 != 0) {
      (**(code **)(iVar2 + 0x10))();
    }
  }
  else {
    if (PTR_FUN_01c21b10 != (undefined *)0x0) {
      FUN_00e8c96c();
    }
    if (PTR_FUN_01c21b10 != (undefined *)0x0) {
      FUN_00e8e2c3();
    }
    FUN_00eaec5e();
    FUN_00eaebef();
    FUN_00eaebef();
    DAT_01c21b18 = *(undefined4 *)(iVar2 + 0x20);
    DAT_01c21b1c = *(undefined4 *)(iVar2 + 0x24);
    _DAT_01c21b14 = CONCAT31((int3)((uint)local_28 >> 8),1);
    FUN_00eaebef();
    FUN_008957b0();
    FUN_00eae9a0();
    FUN_008cc2d0(*(undefined4 *)(iVar2 + 4));
    if (PTR_FUN_01c21e24 != (undefined *)0x0) {
      FUN_00e8e648();
    }
    FUN_008d1200(*(undefined4 *)(DAT_01c28d58 + 0x48));
    iVar2 = *(int *)(iVar1 + 8);
    if (iVar2 != 0) {
      (**(code **)(iVar2 + 0x10))();
    }
  }
  *(undefined4 *)(param_1 + 0xc) = 0xfffffffe;
  if (*(int *)(param_1 + 0x10) == 0) {
    iVar2 = FUN_00eae9a0();
    *(undefined4 *)(iVar2 + 0x1c) = 0x1000000;
    FUN_00eaebef();
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

