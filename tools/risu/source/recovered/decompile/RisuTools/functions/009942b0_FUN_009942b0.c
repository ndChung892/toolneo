/* Address: 009942b0 | Ghidra name: FUN_009942b0 */

void __fastcall
FUN_009942b0(int param_1,uint param_2,int param_3,int param_4,uint param_5,int param_6,uint param_7,
            uint param_8)

{
  int iVar1;
  
  if ((param_1 == 0) || (*(int *)(param_1 + 4) == 0)) {
                    /* WARNING: Subroutine does not return */
    FUN_00911670();
  }
  if (((5 < param_2 - 1) || (2 < param_8 - 1)) || (7 < (param_7 & 0xffffffef))) {
    FUN_00eae9a0();
    FUN_009117c0(&PTR_DAT_01b6f064);
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  if ((param_5 != 0) && ((param_5 & 0x1ffbfff) != 0)) {
    FUN_00eae9a0();
    FUN_009117c0(&PTR_DAT_01b6f064);
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  if (param_6 < 0) {
                    /* WARNING: Subroutine does not return */
    FUN_00932440();
  }
  if (param_4 < 0) {
                    /* WARNING: Subroutine does not return */
    FUN_00932440();
  }
  if ((((param_8 & 2) == 0) && (param_2 < 7)) && ((0x19U >> (param_2 & 0x1f) & 1) == 0)) {
    iVar1 = FUN_00eae9a0();
    *(uint *)(iVar1 + 4) = param_2;
    iVar1 = FUN_00eae9a0();
    *(uint *)(iVar1 + 4) = param_8;
    FUN_00eae9a0();
    FUN_00930f30(iVar1);
    FUN_009115d0(&PTR_DAT_01be0a00);
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  if (((param_8 & 1) != 0) && (param_2 == 6)) {
    FUN_00eae9a0();
    FUN_009115d0(&PTR_DAT_01be0a00);
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  if ((int)(uint)(param_3 == 0) <= param_4) {
    FUN_00994460();
  }
  FUN_009944d0();
  return;
}

