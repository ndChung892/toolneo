/* Address: 008bf560 | Ghidra name: FUN_008bf560 */

void __fastcall
FUN_008bf560(int param_1,undefined4 *param_2,undefined4 param_3,undefined1 param_4,
            undefined1 param_5,int param_6)

{
  undefined4 *puVar1;
  int iVar2;
  undefined4 *puVar3;
  undefined4 uStack_34;
  undefined4 local_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined4 local_20;
  undefined4 local_1c;
  undefined4 local_18;
  undefined4 *local_14;
  
  uStack_34 = 0;
  local_30 = 0;
  uStack_2c = 0;
  uStack_28 = 0;
  uStack_24 = 0;
  local_20 = 0;
  local_1c = 0;
  local_18 = 0;
  local_14 = param_2;
  if (*(undefined4 **)(param_1 + 0x14) == (undefined4 *)0x0) {
    FUN_008bf3e0(param_3,0,param_4,param_5,0,param_6);
  }
  else {
    local_18 = 0;
    if (((undefined *)**(undefined4 **)(param_1 + 0x14) == &DAT_0160caac) ||
       (iVar2 = FUN_008c4d30(), iVar2 == 0)) {
      puVar1 = *(undefined4 **)(param_1 + 0x14);
      puVar3 = puVar1;
      if ((puVar1 != (undefined4 *)0x0) && ((undefined *)*puVar1 != &DAT_0160caac)) {
        puVar3 = (undefined4 *)0x0;
      }
      if (puVar3 == (undefined4 *)0x0) {
        if ((undefined *)*puVar1 == &DAT_0160caac) {
          local_18 = FUN_008c5530();
        }
        else {
          local_18 = FUN_008c4d00();
        }
      }
      else {
        FUN_008c55c0(*(undefined4 *)(param_6 + 8));
        iVar2 = FUN_008c07e0(&uStack_34);
        if ((iVar2 != 0) && ((char)uStack_34 == '\0')) {
          FUN_008bf710(param_3,local_18,local_30,uStack_2c,uStack_28,uStack_24,local_20,local_1c,
                       param_4,param_5,param_6);
          *local_14 = 0;
          local_14[1] = 0;
          local_14[2] = 0;
          return;
        }
      }
    }
    iVar2 = FUN_00a013a0();
    if (iVar2 != 0) {
      FUN_00a00cf0();
      iVar2 = FUN_0089a130();
      if (iVar2 == 0) {
        FUN_00eae9a0();
        FUN_0092a0e0();
                    /* WARNING: Subroutine does not return */
        FUN_00eaeefb();
      }
    }
    FUN_008bf3e0(param_3,0,param_4,param_5,local_18,param_6);
  }
  return;
}

