/* Address: 004fcc90 | Ghidra name: FUN_004fcc90 */

undefined ** __fastcall FUN_004fcc90(undefined4 param_1)

{
  undefined **ppuVar1;
  int iVar2;
  
  switch(param_1) {
  case 0:
    ppuVar1 = &PTR_DAT_01b48614;
    break;
  case 1:
    ppuVar1 = &PTR_DAT_01b480f8;
    break;
  case 2:
    ppuVar1 = &PTR_DAT_01b487b4;
    break;
  case 3:
    ppuVar1 = &PTR_DAT_01b48124;
    break;
  default:
    iVar2 = FUN_00eae9a0();
    *(undefined4 *)(iVar2 + 4) = param_1;
    FUN_00eae9a0();
    FUN_00911800(0,iVar2);
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  return ppuVar1;
}

