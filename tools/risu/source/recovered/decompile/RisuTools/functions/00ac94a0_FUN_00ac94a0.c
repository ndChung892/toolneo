/* Address: 00ac94a0 | Ghidra name: FUN_00ac94a0 */

/* WARNING: Removing unreachable block (ram,0x00ac9582) */
/* WARNING: Removing unreachable block (ram,0x00ac9519) */
/* WARNING: Removing unreachable block (ram,0x00ac95df) */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_00ac94a0(undefined4 param_1,int *param_2)

{
  int iVar1;
  
  iVar1 = 0;
  if (param_2[1] == 1) {
    FUN_00ac9640(0,0,0,0,0,0);
    (**(code **)(*param_2 + 0x2c))(0);
    FUN_00eaee5e();
    FUN_00eaee5e();
    return;
  }
  FUN_0099d430(2);
  if (iVar1 == 0) {
    FUN_0099d6f0();
    FUN_00e52ce0(&PTR_DAT_01551230);
    if (iVar1 == 0) {
      FUN_0099d6f0();
      FUN_00903080();
      FUN_0099d620();
      if (iVar1 == 0) {
        FUN_0099d6f0();
        FUN_00eae9a0();
        FUN_0099d560();
        FUN_009115d0(&PTR_DAT_01bed988);
                    /* WARNING: Subroutine does not return */
        FUN_00eaeefb();
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  FUN_009318f0();
}

