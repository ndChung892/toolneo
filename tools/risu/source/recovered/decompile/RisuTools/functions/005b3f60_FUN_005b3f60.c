/* Address: 005b3f60 | Ghidra name: FUN_005b3f60 */

/* WARNING: Removing unreachable block (ram,0x005b40a1) */
/* WARNING: Removing unreachable block (ram,0x005b408b) */

void __fastcall FUN_005b3f60(int param_1)

{
  undefined8 uVar1;
  undefined8 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  int iVar8;
  undefined1 local_1c;
  undefined4 local_18;
  
  if (*(int *)(param_1 + 8) == 0) {
    FUN_00eae9a0();
    FUN_0092a0e0();
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  FUN_0082a470();
  if (PTR_FUN_01c21c08 != (undefined *)0x0) {
    FUN_00e8c9f3();
  }
  FUN_005b5300();
  if (local_1c == '\0') {
    FUN_0099d430(1);
    FUN_0099d6f0();
    FUN_0082a4a0();
    FUN_00da5140();
    FUN_00eae9a0();
    FUN_0099d560();
    FUN_0092a0e0();
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  FUN_0082a470();
  uVar5 = FUN_005b54b0();
  uVar6 = FUN_0082c5c0();
  uVar3 = *(undefined4 *)(param_1 + 0x24);
  uVar4 = *(undefined4 *)(param_1 + 0x28);
  uVar7 = FUN_0082c600();
  iVar8 = FUN_00eae9a0();
  uVar1 = *(undefined8 *)(param_1 + 0x14);
  uVar2 = *(undefined8 *)(param_1 + 0x1c);
  *(undefined4 *)(iVar8 + 4) = 0;
  *(undefined4 *)(iVar8 + 8) = uVar6;
  *(undefined4 *)(iVar8 + 0x14) = uVar3;
  *(undefined4 *)(iVar8 + 0x18) = uVar4;
  *(undefined4 *)(iVar8 + 0xc) = uVar7;
  *(undefined8 *)(iVar8 + 0x1c) = uVar1;
  *(undefined8 *)(iVar8 + 0x24) = uVar2;
  *(undefined4 *)(iVar8 + 0x2c) = local_18;
  *(undefined4 *)(iVar8 + 0x10) = uVar5;
  return;
}

