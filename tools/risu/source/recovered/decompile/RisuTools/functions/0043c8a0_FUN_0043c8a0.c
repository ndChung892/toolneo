/* Address: 0043c8a0 | Ghidra name: FUN_0043c8a0 */

/* WARNING: Removing unreachable block (ram,0x0043c9f8) */
/* WARNING: Removing unreachable block (ram,0x0043ca64) */
/* WARNING: Removing unreachable block (ram,0x0043ca6b) */
/* WARNING: Removing unreachable block (ram,0x0043ca7e) */

void __thiscall FUN_0043c8a0(int *param_1,int param_2,int param_3,int param_4,int param_5)

{
  double dVar1;
  double dVar2;
  int iVar3;
  int iVar4;
  int local_20;
  int iStack_1c;
  int iStack_18;
  int iStack_14;
  
  if ((NAN((double)CONCAT44(param_3,param_2))) || (NAN((double)CONCAT44(param_5,param_4)))) {
    FUN_00eae9a0();
    FUN_00928850();
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  if (*(char *)((int)param_1 + 199) != '\0') {
    if ((((char)param_1[0x35] != '\0') &&
        (*(double *)(param_1 + 0x37) == (double)CONCAT44(param_3,param_2))) &&
       (*(double *)(param_1 + 0x39) == (double)CONCAT44(param_5,param_4))) {
      return;
    }
  }
  if (PTR_FUN_01c210b0 != (undefined *)0x0) {
    FUN_00e8c174();
  }
  iVar3 = FUN_00457460();
  if (iVar3 == 0) {
    iVar3 = 0;
  }
  else {
    iVar3 = FUN_00847040(param_1);
  }
  dVar1 = *(double *)(param_1 + 0x45);
  dVar2 = *(double *)(param_1 + 0x47);
  *(undefined1 *)((int)param_1 + 199) = 1;
  *(undefined1 *)((int)param_1 + 0xc5) = 1;
  (**(code **)(*param_1 + 0x8c))(param_2,param_3,param_4,param_5);
  *(undefined1 *)((int)param_1 + 0xc5) = 0;
  iVar4 = FUN_0043e100(local_20,iStack_1c,iStack_18,iStack_14);
  if (iVar4 == 0) {
    param_1[0x45] = local_20;
    param_1[0x46] = iStack_1c;
    param_1[0x47] = iStack_18;
    param_1[0x48] = iStack_14;
    *(undefined1 *)(param_1 + 0x35) = 1;
    param_1[0x37] = param_2;
    param_1[0x38] = param_3;
    param_1[0x39] = param_4;
    param_1[0x3a] = param_5;
    FUN_0043bbd0(&PTR_DAT_01b8763c);
    if (((*(double *)(param_1 + 0x45) != dVar1) || (*(double *)(param_1 + 0x47) != dVar2)) &&
       ((iVar4 = FUN_00e47e90(), iVar4 != 0 && (*(char *)(iVar4 + 0xc5) == '\0')))) {
      FUN_0043cdc0();
    }
    if (iVar3 != 0) {
      FUN_00847c30();
    }
    return;
  }
  FUN_00eae9a0();
  FUN_00928850();
                    /* WARNING: Subroutine does not return */
  FUN_00eaeefb();
}

