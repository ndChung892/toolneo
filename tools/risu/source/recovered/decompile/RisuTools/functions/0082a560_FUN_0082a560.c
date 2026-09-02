/* Address: 0082a560 | Ghidra name: FUN_0082a560 */

int __thiscall
FUN_0082a560(int param_1,undefined4 param_2,int param_3,undefined4 param_4,undefined4 param_5,
            undefined4 param_6)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int *piVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  undefined4 uVar8;
  undefined4 uVar9;
  undefined4 uVar10;
  int aiStack_2c [7];
  
  uVar6 = 0;
  uVar7 = 0;
  uVar8 = 0;
  uVar9 = 0;
  uVar10 = 0;
  aiStack_2c[0] = 0;
  aiStack_2c[1] = 0;
  aiStack_2c[2] = 0;
  aiStack_2c[3] = 0;
  aiStack_2c[4] = 0;
  aiStack_2c[5] = 0;
  aiStack_2c[6] = 0;
  if (param_1 == 0) {
    FUN_00eae9a0();
    FUN_009116c0();
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  iVar1 = FUN_00eae9ce();
  uVar5 = param_5;
  iVar2 = param_3;
  if (PTR_FUN_01c21c08 != (undefined *)0x0) {
    FUN_00e8c9f3(iVar1,param_5,param_3,uVar6,uVar7,uVar8,uVar9,uVar10);
  }
  aiStack_2c[5] = FUN_00826d50();
  aiStack_2c[5] = aiStack_2c[5] * param_3;
  FUN_00829fc0();
  piVar4 = aiStack_2c;
  for (iVar3 = 5; register0x00000010 = (BADSPACEBASE *)((int)register0x00000010 + 4), iVar3 != 0;
      iVar3 = iVar3 + -1) {
    *piVar4 = *(int *)register0x00000010;
    piVar4 = piVar4 + 1;
  }
  aiStack_2c[1] = iVar2;
  aiStack_2c[3] = uVar5;
  FUN_0082fd60();
  iVar2 = FUN_0082f550(aiStack_2c[5]);
  if (iVar2 == 0) {
    FUN_00eae9a0();
    FUN_0090da60();
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  FUN_0082c5c0();
  iVar2 = FUN_0082b140(param_2,param_3,param_4,param_5,param_6);
  if ((iVar2 != 0) && (iVar2 != 1)) {
    if (*(char *)(iVar1 + 0xe) == '\0') {
      FUN_008318c0();
      FUN_009024f0();
    }
    iVar1 = 0;
  }
  return iVar1;
}

