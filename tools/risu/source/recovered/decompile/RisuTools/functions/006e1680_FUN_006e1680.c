/* Address: 006e1680 | Ghidra name: FUN_006e1680 */

void FUN_006e1680(void)

{
  code *pcVar1;
  int *piVar2;
  undefined4 uVar3;
  int iVar4;
  undefined4 local_14;
  
  local_14 = 0;
  piVar2 = (int *)FUN_00712040();
  pcVar1 = *(code **)(*piVar2 + 100);
  uVar3 = FUN_00712040(&local_14);
  FUN_00eaf9f0(uVar3);
  iVar4 = (*pcVar1)();
  FUN_00eafa21();
  if (iVar4 == 0) {
    FUN_00e4cd30(&PTR_DAT_0154205c);
    return;
  }
  FUN_00eae9a0();
  FUN_009a24f0(iVar4);
                    /* WARNING: Subroutine does not return */
  FUN_00eaeefb();
}

