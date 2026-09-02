/* Address: 0098d890 | Ghidra name: FUN_0098d890 */

void __fastcall FUN_0098d890(int param_1,uint param_2,uint param_3,int param_4)

{
  uint uVar1;
  uint uVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  
  iVar4 = (int)(0x7fffffff - param_2) >> 0x1f;
  uVar1 = (uint)(0x7fffffff - param_2 < param_3);
  iVar3 = iVar4 - param_4;
  if ((SBORROW4(iVar4,param_4) != SBORROW4(iVar3,uVar1)) != (int)(iVar3 - uVar1) < 0) {
    FUN_00eae9a0();
    FUN_009117c0(&PTR_DAT_01bacfe8);
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  iVar4 = param_2 + param_3;
  iVar5 = ((int)param_2 >> 0x1f) + param_4 + (uint)CARRY4(param_2,param_3);
  uVar1 = *(uint *)(param_1 + 0xc);
  uVar2 = (uint)(param_2 + param_3 < uVar1);
  iVar3 = iVar5 - ((int)uVar1 >> 0x1f);
  if (((SBORROW4(iVar5,(int)uVar1 >> 0x1f) != SBORROW4(iVar3,uVar2)) == (int)(iVar3 - uVar2) < 0) &&
     ((int)uVar1 <= iVar4)) {
    *(int *)(param_1 + 0x10) = iVar4;
    return;
  }
  FUN_00eae9a0(iVar4);
  FUN_0098cdc0();
                    /* WARNING: Subroutine does not return */
  FUN_00eaeefb();
}

