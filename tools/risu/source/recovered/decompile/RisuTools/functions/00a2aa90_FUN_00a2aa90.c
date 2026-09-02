/* Address: 00a2aa90 | Ghidra name: FUN_00a2aa90 */

void __fastcall FUN_00a2aa90(int param_1,undefined4 param_2,int param_3)

{
  undefined **ppuVar1;
  
  if ((param_3 != 1) && (param_3 != 2)) {
    FUN_00eae9a0();
    FUN_00a1c3f0();
    FUN_00911540();
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  switch(param_2) {
  case 1:
    ppuVar1 = &PTR_DAT_01b4c658;
    break;
  case 2:
    ppuVar1 = &PTR_DAT_01b51298;
    break;
  case 3:
    ppuVar1 = &PTR_DAT_01b5521c;
    break;
  case 4:
    ppuVar1 = &PTR_DAT_01b6b558;
    break;
  case 5:
    ppuVar1 = &PTR_DAT_01b90b54;
    break;
  case 6:
    ppuVar1 = &PTR_DAT_01ba462c;
    break;
  case 7:
    ppuVar1 = &PTR_DAT_01bcd90c;
    break;
  case 8:
    ppuVar1 = &PTR_DAT_01bcd934;
    break;
  default:
    FUN_00eae9a0();
    FUN_00a1c3f0();
    FUN_00911540();
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  *(undefined ***)(param_1 + 8) = ppuVar1;
  *(int *)(param_1 + 0xc) = param_3;
  return;
}

