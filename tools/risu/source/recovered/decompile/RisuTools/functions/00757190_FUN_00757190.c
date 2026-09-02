/* Address: 00757190 | Ghidra name: FUN_00757190 */

/* WARNING: Removing unreachable block (ram,0x00757227) */
/* WARNING: Removing unreachable block (ram,0x00757279) */
/* WARNING: Removing unreachable block (ram,0x007572d9) */
/* WARNING: Removing unreachable block (ram,0x00757371) */

void __fastcall FUN_00757190(int param_1)

{
  int iVar1;
  undefined **ppuVar2;
  undefined4 local_30;
  undefined4 local_2c;
  int iStack_20;
  
  ppuVar2 = *(undefined ***)
             (*(int *)(*(int *)(*(int *)(*(int *)(param_1 + 8) + 0xc) + 4) + 0x160) + 8);
  if (ppuVar2 == (undefined **)0x0) {
    ppuVar2 = &PTR_DAT_01b39360;
  }
  if (20000 < (int)ppuVar2[1]) {
    FUN_00909650();
  }
  FUN_0099d430(3);
  FUN_0099d6f0();
  FUN_00916ec0();
  FUN_00dd64e0(local_30,local_2c);
  FUN_0099d6f0();
  FUN_00de77e0();
  FUN_0099d6f0();
  iStack_20 = 0;
  iVar1 = *(int *)(*(int *)(param_1 + 8) + 8);
  if ((iVar1 == 0) || (*(int *)(iVar1 + 4) != 0)) {
    FUN_0099d670();
  }
  else {
    FUN_00930280(*(int *)(iVar1 + 4) * 2);
    iStack_20 = *(int *)(iVar1 + 4);
  }
  if (iStack_20 != 0) {
                    /* WARNING: Subroutine does not return */
    FUN_009318f0();
  }
  FUN_0099d6f0();
  FUN_0099d560();
  FUN_00906a20();
  FUN_00cbc210();
  ppuVar2 = *(undefined ***)(*(int *)(*(int *)(*(int *)(param_1 + 8) + 4) + 0x114) + 8);
  if (ppuVar2 == (undefined **)0x0) {
    ppuVar2 = &PTR_DAT_01b39360;
  }
  if (10000 < (int)ppuVar2[1]) {
    FUN_00909650();
  }
  FUN_00906a20();
  FUN_00cbc210();
  return;
}

