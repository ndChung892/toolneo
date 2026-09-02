/* Address: 00bc1ac0 | Ghidra name: FUN_00bc1ac0 */

void __fastcall FUN_00bc1ac0(undefined4 param_1,undefined4 *param_2,int param_3)

{
  int iVar1;
  undefined4 *puVar2;
  
  if (param_2 == (undefined4 *)0x0) {
                    /* WARNING: Subroutine does not return */
    FUN_00911740(param_1);
  }
  if (param_3 < 0) {
                    /* WARNING: Subroutine does not return */
    FUN_00de6f20();
  }
  FUN_00b66be0(param_1,0);
  iVar1 = FUN_00ae4940();
  if ((int)param_2[1] < 0) {
                    /* WARNING: Subroutine does not return */
    FUN_009c2c10();
  }
  if (param_3 <= param_2[1] - iVar1) {
    puVar2 = param_2;
    if ((undefined *)*param_2 != &DAT_018fd3ac) {
      puVar2 = (undefined4 *)0x0;
    }
    if (puVar2 != (undefined4 *)0x0) {
      do {
                    /* WARNING: Do nothing block with infinite loop */
      } while( true );
    }
    if ((undefined *)*param_2 != &DAT_018fcb38) {
      param_2 = (undefined4 *)0x0;
    }
    if (param_2 == (undefined4 *)0x0) {
      iVar1 = FUN_0099a900();
      if (iVar1 != 0) {
        FUN_00bc14c0(param_3);
        FUN_00ae5100();
        return;
      }
      FUN_00eae9a0();
      FUN_009115d0(&PTR_DAT_01be18d4);
                    /* WARNING: Subroutine does not return */
      FUN_00eaeefb();
    }
    do {
                    /* WARNING: Do nothing block with infinite loop */
    } while( true );
  }
  FUN_00eae9a0();
  FUN_00911540();
                    /* WARNING: Subroutine does not return */
  FUN_00eaeefb();
}

