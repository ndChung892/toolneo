/* Address: 008947e2 | Ghidra name: FUN_008947e2 */

void FUN_008947e2(void)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  int unaff_EBP;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  
  if (*(int *)(unaff_EBP + -0x10) < 0) {
    iVar3 = *(int *)(unaff_EBP + -0xcc);
    if (*(int *)(iVar3 + 0xc) != 0) {
      FUN_009178f0();
      FUN_00847630(*(undefined4 *)(unaff_EBP + -0x84),*(undefined4 *)(unaff_EBP + -0x80));
      if (*(char *)(*(int *)(iVar3 + 0xc) + 0x5c) != '\0') {
        if (*(int *)(iVar3 + 0x10) != 0) {
          uVar1 = FUN_00894c90();
          FUN_008470d0(uVar1);
          uVar1 = FUN_00894ab0();
          FUN_008470d0(uVar1);
        }
        iVar2 = FUN_00894b80(unaff_EBP + -0x28);
        if (iVar2 != 0) {
          FUN_008470d0(*(undefined4 *)(unaff_EBP + -0x28));
          iVar2 = *(int *)(iVar3 + 0xc);
          *(undefined4 *)(iVar2 + 0x50) = 2;
          *(undefined4 *)(iVar2 + 0x38) = 0;
          if (*(int *)(iVar3 + 0x14) != 0) {
            iVar2 = *(int *)(iVar3 + 0xc);
            FUN_00917460(*(undefined4 *)(iVar2 + 100),*(undefined4 *)(iVar2 + 0x68),
                         *(undefined4 *)(iVar2 + 0x6c),*(undefined4 *)(iVar2 + 0x70));
            *(undefined4 *)(unaff_EBP + -0xb0) = 0;
            *(undefined4 *)(unaff_EBP + -0xac) = 0;
            *(undefined4 *)(unaff_EBP + -0xa8) = 0;
            FUN_009181f0(*(undefined4 *)(unaff_EBP + -0x8c),*(undefined4 *)(unaff_EBP + -0x88));
            *(undefined4 *)(unaff_EBP + -0x34) = *(undefined4 *)(unaff_EBP + -0xb0);
            *(undefined4 *)(unaff_EBP + -0x30) = *(undefined4 *)(unaff_EBP + -0xac);
            *(undefined4 *)(unaff_EBP + -0x2c) = *(undefined4 *)(unaff_EBP + -0xa8);
            *(undefined4 *)(unaff_EBP + -0x7c) = 0;
            *(undefined4 *)(unaff_EBP + -0x78) = 0;
            *(undefined4 *)(unaff_EBP + -0x74) = 0;
            *(undefined4 *)(unaff_EBP + -0x70) = 0;
            *(undefined4 *)(unaff_EBP + -0x6c) = 0;
            *(undefined4 *)(unaff_EBP + -0x68) = 0;
            *(undefined4 *)(unaff_EBP + -100) = 0;
            *(undefined4 *)(unaff_EBP + -0x60) = 0;
            *(undefined4 *)(unaff_EBP + -0x5c) = 0;
            *(undefined4 *)(unaff_EBP + -0x58) = 0;
            *(undefined4 *)(unaff_EBP + -0x54) = 0;
            *(undefined4 *)(unaff_EBP + -0x50) = 0;
            *(undefined4 *)(unaff_EBP + -0x4c) = 0;
            *(undefined4 *)(unaff_EBP + -0x48) = 0;
            *(undefined4 *)(unaff_EBP + -0x44) = 0;
            *(undefined4 *)(unaff_EBP + -0x40) = 0;
            *(undefined4 *)(unaff_EBP + -0x44) = 0;
            *(undefined4 *)(unaff_EBP + -0x40) = 0;
            *(undefined4 *)(unaff_EBP + -0x3c) = 0;
            *(undefined4 *)(unaff_EBP + -0x38) = 0;
            FUN_00847220(*(undefined4 *)(unaff_EBP + -0x34),*(undefined4 *)(unaff_EBP + -0x30),
                         *(undefined4 *)(unaff_EBP + -0x2c),unaff_EBP + -0x7c);
          }
        }
      }
      iVar2 = FUN_0084a1c0();
      if (iVar2 != 0) {
        FUN_00eae9a0();
        *(undefined4 *)(unaff_EBP + -0xb4) = *(undefined4 *)(iVar3 + 0x1c);
        FUN_00eaec5e();
        iVar2 = FUN_00eaec14();
        *(undefined4 *)(iVar2 + 0xc) = *(undefined4 *)(unaff_EBP + -0xb4);
        FUN_0084a280(iVar2);
      }
      FUN_008478a0();
    }
    iVar2 = FUN_0084a1c0();
    if (iVar2 != 0) {
      FUN_009c3b90();
      *(undefined4 *)(unaff_EBP + -0xc4) = *(undefined4 *)(unaff_EBP + -0xbc);
      *(undefined4 *)(unaff_EBP + -200) = *(undefined4 *)(unaff_EBP + -0xb8);
      FUN_00eae9a0();
      *(undefined4 *)(unaff_EBP + -0xe4) = *(undefined4 *)(iVar3 + 0x10);
      uVar4 = *(undefined4 *)(iVar3 + 0x30);
      uVar5 = *(undefined4 *)(iVar3 + 0x34);
      uVar6 = *(undefined4 *)(iVar3 + 0x38);
      uVar7 = *(undefined4 *)(iVar3 + 0x3c);
      uVar1 = *(undefined4 *)(iVar3 + 0x1c);
      iVar3 = FUN_00eaec5e();
      *(undefined4 *)(iVar3 + 0x14) = uVar4;
      *(undefined4 *)(iVar3 + 0x18) = uVar5;
      *(undefined4 *)(iVar3 + 0x1c) = uVar6;
      *(undefined4 *)(iVar3 + 0x20) = uVar7;
      *(undefined4 *)(iVar3 + 4) = *(undefined4 *)(unaff_EBP + -0xc4);
      *(undefined4 *)(iVar3 + 8) = *(undefined4 *)(unaff_EBP + -200);
      *(undefined4 *)(iVar3 + 0x10) = uVar1;
      FUN_0084a280(iVar3);
    }
  }
  return;
}

