/* Address: 00544690 | Ghidra name: FUN_00544690 */

void FUN_00544690(void)

{
  int iVar1;
  undefined4 unaff_EBX;
  undefined4 unaff_ESI;
  undefined4 in_stack_ffffffe8;
  undefined4 in_stack_ffffffec;
  
  FUN_00e67e30(&PTR_DAT_0153fe90,0,0,0,1,(int)DAT_018d0638,(int)((ulonglong)DAT_018d0638 >> 0x20));
  if (PTR_FUN_01c2140c != (undefined *)0x0) {
    FUN_00e8ded8();
  }
  FUN_00eaec39();
  FUN_00e66980(&PTR_DAT_0153fe74,0,0,0,1,0);
  FUN_00eaebca();
  FUN_00e62cd0(&PTR_DAT_0153fe6c,0,0,0,1,0);
  FUN_00eaebca();
  FUN_00eae9a0();
  FUN_00e94411(in_stack_ffffffe8);
  FUN_00e675e0(&PTR_DAT_0153fe84,0,1,0,0);
  FUN_00eaebca();
  FUN_00e67420(&PTR_DAT_0153fe7c,0,0,0,1,0);
  FUN_00eaebca();
  FUN_00e68e60(&PTR_DAT_0153fe98,0,0,0,1,&DAT_01312d00,0);
  FUN_00eaebca();
  FUN_00933b10((int)DAT_018d0640,(int)((ulonglong)DAT_018d0640 >> 0x20));
  FUN_00e68e60(&PTR_DAT_0153fe98,0,0,0,1,in_stack_ffffffec,in_stack_ffffffec);
  FUN_00eaebca();
  FUN_00eae9a0();
  if (PTR_FUN_01c21420 != (undefined *)0x0) {
    FUN_00e8df1c();
  }
  FUN_00e943de(in_stack_ffffffec);
  FUN_00e60c80(&PTR_DAT_0153fe60,0,4);
  FUN_00eae9a0();
  FUN_00e943ef(unaff_EBX);
  FUN_00e60c80(&PTR_DAT_0153fe60,0,4);
  FUN_00eae9a0();
  FUN_00e94400(unaff_ESI);
  FUN_00e60c80(&PTR_DAT_0153fe60,0,4);
  if (PTR_FUN_01c21078 != (undefined *)0x0) {
    FUN_00e8d16e();
  }
  iVar1 = FUN_00eae9a0();
  *(undefined4 *)(iVar1 + 4) = 0;
  *(undefined2 *)(iVar1 + 9) = 1;
  *(undefined2 *)(iVar1 + 0x10) = 0x100;
  *(undefined4 *)(iVar1 + 0xc) = 0;
  FUN_00b67860(iVar1);
  return;
}

