/* Address: 00be2940 | Ghidra name: FUN_00be2940 */

void __fastcall FUN_00be2940(int *param_1,int *param_2,int param_3)

{
  int iVar1;
  int *piVar2;
  
  if (param_2 == (int *)0x0) {
                    /* WARNING: Subroutine does not return */
    FUN_00911740();
  }
  if (param_3 < 0) {
                    /* WARNING: Subroutine does not return */
    FUN_00de6f20();
  }
  FUN_00ae5080(param_1,0);
  iVar1 = FUN_00ae4940();
  if (param_2[1] < 0) {
                    /* WARNING: Subroutine does not return */
    FUN_009c2c10();
  }
  if (param_3 <= param_2[1] - iVar1) {
    piVar2 = (int *)0x0;
    if (*param_2 == *(int *)(*(int *)(*param_1 + 0x20) + 0x24)) {
      piVar2 = param_2;
    }
    if (piVar2 == (int *)0x0) {
      if ((undefined *)*param_2 != &DAT_018fcb38) {
        param_2 = (int *)0x0;
      }
      if (param_2 != (int *)0x0) {
        do {
                    /* WARNING: Do nothing block with infinite loop */
        } while( true );
      }
      iVar1 = FUN_0099a900();
      if (iVar1 == 0) {
        FUN_00eae9a0();
        FUN_009115d0(&PTR_DAT_01be18d4);
                    /* WARNING: Subroutine does not return */
        FUN_00eaeefb();
      }
      FUN_00bcfae0(param_3);
    }
    else {
      FUN_00bcfa60(param_3);
    }
    FUN_00ae5100();
    return;
  }
  FUN_00eae9a0();
  FUN_00911540();
                    /* WARNING: Subroutine does not return */
  FUN_00eaeefb();
}

