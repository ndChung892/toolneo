/* Address: 008a72a0 | Ghidra name: FUN_008a72a0 */

void __thiscall FUN_008a72a0(int param_1,int *param_2,uint param_3)

{
  int iVar1;
  undefined4 uVar2;
  uint uVar3;
  uint uVar4;
  
  if (((int)param_3 < 0xc) || ((char)param_2[2] != ' ')) {
    if (PTR_LAB_01c22128 != (undefined *)0x0) {
      FUN_00e8eb21();
    }
    FUN_00b7f000(param_2,param_3);
    FUN_0097da60(0,0);
    uVar2 = FUN_00890ca0();
    FUN_00eae9a0();
    FUN_00898ed0(0,0,0,uVar2);
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  if (param_2[1] == 0x312e312f && *param_2 == 0x50545448) {
    *(undefined ***)(param_1 + 0x14) = &PTR_DAT_01c15988;
  }
  else if (param_2[1] == 0x302e312f && *param_2 == 0x50545448) {
    *(undefined ***)(param_1 + 0x14) = &PTR_DAT_01c15970;
  }
  else {
    uVar4 = *(byte *)((int)param_2 + 7) - 0x30;
    if ((9 < uVar4) || (iVar1 = FUN_0092fe20(7), iVar1 == 0)) {
      if (PTR_LAB_01c22128 != (undefined *)0x0) {
        FUN_00e8eb21();
      }
      FUN_00b7f000(param_2,param_3);
      FUN_0097da60(0,0);
      uVar2 = FUN_00890ca0();
      FUN_00eae9a0();
      FUN_00898ed0(0,0,0,uVar2);
                    /* WARNING: Subroutine does not return */
      FUN_00eaeefb();
    }
    uVar2 = FUN_00eae9a0();
    FUN_0093af10(uVar4);
    FUN_00eaebca(uVar2);
  }
  uVar4 = *(byte *)((int)param_2 + 9) - 0x30;
  if (((uVar4 < 10) && (uVar3 = *(byte *)((int)param_2 + 10) - 0x30, uVar3 < 10)) &&
     (*(byte *)((int)param_2 + 0xb) - 0x30 < 10)) {
    *(uint *)(param_1 + 0x1c) =
         uVar4 * 100 + uVar3 * 10 + -0x30 + (uint)*(byte *)((int)param_2 + 0xb);
    if (param_3 == 0xc) {
      *(undefined ***)(param_1 + 0xc) = &PTR_DAT_01b39360;
    }
    else {
      if (param_3 < 0xd) {
                    /* WARNING: Subroutine does not return */
        FUN_009c2bf0();
      }
      if ((char)param_2[3] != ' ') {
        if (PTR_LAB_01c22128 != (undefined *)0x0) {
          FUN_00e8eb21();
        }
        FUN_00b7f000(param_2,param_3);
        FUN_0097da60(0,0);
        uVar2 = FUN_00890ca0();
        FUN_00eae9a0();
        FUN_00898ed0(0,0,0,uVar2);
                    /* WARNING: Subroutine does not return */
        FUN_00eaeefb();
      }
      iVar1 = FUN_008925d0();
      if ((iVar1 != 0) &&
         (iVar1 = FUN_00978e30(iVar1 + 8,*(undefined4 *)(iVar1 + 4),(int)param_2 + 0xd,param_3 - 0xd
                              ), iVar1 != 0)) {
        FUN_00eaec5e();
        return;
      }
      if (PTR_LAB_01c2213c != (undefined *)0x0) {
        FUN_00e8eb76();
      }
      FUN_0097da60((int)param_2 + 0xd,param_3 - 0xd);
      FUN_00899480();
    }
    return;
  }
  if (PTR_LAB_01c22128 != (undefined *)0x0) {
    FUN_00e8eb21();
  }
  if (param_3 - 9 < 3) {
                    /* WARNING: Subroutine does not return */
    FUN_009318f0();
  }
  FUN_00b7f000((int)param_2 + 9,3);
  FUN_0097da60(0,0);
  uVar2 = FUN_00890ca0();
  FUN_00eae9a0();
  FUN_00898ed0(0,0,0,uVar2);
                    /* WARNING: Subroutine does not return */
  FUN_00eaeefb();
}

