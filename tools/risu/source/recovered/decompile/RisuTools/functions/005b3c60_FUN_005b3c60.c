/* Address: 005b3c60 | Ghidra name: FUN_005b3c60 */

void __fastcall FUN_005b3c60(int param_1,undefined4 param_2)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 in_stack_00000010;
  undefined4 in_stack_00000014;
  undefined4 in_stack_00000018;
  undefined4 in_stack_0000001c;
  undefined4 in_stack_00000020;
  undefined4 in_stack_00000024;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  undefined4 uVar8;
  undefined4 uVar9;
  undefined4 uVar10;
  undefined4 uVar11;
  
  uVar2 = 0;
  uVar3 = 0;
  uVar4 = 0;
  uVar5 = 0;
  uVar6 = 0;
  uVar7 = 0;
  uVar8 = 0;
  uVar9 = 0;
  uVar10 = 0;
  uVar11 = 0;
  *(undefined4 *)(param_1 + 0x10) = 1;
  iVar1 = FUN_00eae9ce();
  FUN_00829fc0();
  uVar2 = FUN_005b5280(iVar1,uVar2,uVar3,uVar4,uVar5,uVar6,uVar7,uVar8,uVar9,uVar10,uVar11);
  uVar3 = FUN_005b53c0();
  if (PTR_FUN_01c21c08 != (undefined *)0x0) {
    FUN_00e8c9f3();
  }
  FUN_0082a740(0,0,param_2,uVar7,in_stack_00000020,in_stack_00000024,uVar2,uVar3);
  FUN_0082a470();
  FUN_0082a190();
  FUN_00eaebca();
  if (*(char *)(iVar1 + 0xe) == '\0') {
    FUN_008318c0();
    FUN_009024f0();
  }
  FUN_0082c710();
  FUN_00830b00();
  FUN_00eaebca();
  if (*(int *)(param_1 + 4) != 0) {
    *(undefined4 *)(param_1 + 0x24) = in_stack_00000020;
    *(undefined4 *)(param_1 + 0x28) = in_stack_00000024;
    *(undefined4 *)(param_1 + 0x14) = in_stack_00000010;
    *(undefined4 *)(param_1 + 0x18) = in_stack_00000014;
    *(undefined4 *)(param_1 + 0x1c) = in_stack_00000018;
    *(undefined4 *)(param_1 + 0x20) = in_stack_0000001c;
    return;
  }
  FUN_00eae9a0();
  FUN_00911540();
                    /* WARNING: Subroutine does not return */
  FUN_00eaeefb();
}

