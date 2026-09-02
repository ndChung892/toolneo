/* Address: 00855e50 | Ghidra name: FUN_00855e50 */

void __thiscall
FUN_00855e50(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  undefined4 local_10;
  undefined4 local_c;
  
  uVar1 = FUN_00855f00(param_2,param_3,param_4);
  switch(uVar1) {
  default:
    FUN_00eae9a0();
    FUN_00855be0();
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  case 1:
  case 4:
    FUN_00eae9a0();
    FUN_00855bf0();
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  case 3:
    FUN_00eae9a0();
    FUN_00855bf0();
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  case 5:
    *param_1 = local_10;
    param_1[1] = local_c;
    return;
  }
}

