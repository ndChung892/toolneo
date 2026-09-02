/* Address: 007563a0 | Ghidra name: FUN_007563a0 */

/* WARNING: Removing unreachable block (ram,0x0075666f) */
/* WARNING: Removing unreachable block (ram,0x00756a1a) */
/* WARNING: Removing unreachable block (ram,0x0075669f) */
/* WARNING: Removing unreachable block (ram,0x007566ab) */
/* WARNING: Removing unreachable block (ram,0x007566b2) */

void __fastcall FUN_007563a0(int param_1,undefined4 param_2)

{
  wchar_t *pwVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  undefined4 uVar7;
  undefined **ppuVar8;
  undefined4 in_stack_ffffff9c;
  undefined4 in_stack_ffffffa0;
  undefined4 in_stack_ffffffa4;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined4 local_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  uint local_20;
  undefined4 uStack_1c;
  int iStack_18;
  uint uStack_14;
  
  uStack_3c = 0;
  uStack_38 = 0;
  uStack_34 = 0;
  local_30 = 0;
  uStack_2c = 0;
  uStack_28 = 0;
  uStack_24 = 0;
  local_20 = 0;
  uStack_1c = 0;
  iStack_18 = 0;
  uStack_14 = 0;
  iVar4 = FUN_00eae9a0();
  iVar5 = FUN_00eaec39();
  *(undefined4 *)(iVar5 + 0x10) = param_2;
  FUN_00eaec5e();
  FUN_00eae9a0();
  FUN_00e98090(in_stack_ffffff9c);
  FUN_00e4e4a0(&PTR_DAT_01543634,&uStack_34);
  FUN_00eaebca();
  if ((*(int *)(iVar4 + 4) == 0) && (0 < *(int *)(iVar4 + 0x10))) {
    if (*(int *)(DAT_01c2892c + 8) == 0) {
      FUN_00eae9a0();
      FUN_00e97f91(in_stack_ffffffa0);
      FUN_00eaec14();
    }
    FUN_00e4ee90(&PTR_DAT_01543690);
    iVar5 = FUN_00e4ee50();
    if (*(int *)(iVar5 + 8) == 1) {
      FUN_00e4e3a0(&PTR_PTR_01543614);
      if ((char)uStack_38 == '\0') {
LAB_00756a14:
                    /* WARNING: Subroutine does not return */
        FUN_00860240();
      }
      FUN_00eaebca();
      FUN_00bb49d0();
    }
    else {
      FUN_00850970();
      iVar5 = FUN_008529f0();
      if ((((iVar5 != 0) && (*(int *)(iVar5 + 4) != 0)) && (iVar6 = FUN_00905af0(), iVar6 != 0)) &&
         (iVar5 = FUN_00e1dd60(*(undefined4 *)(iVar5 + 4)), 1 < iVar5)) {
        FUN_00eae9a0();
        FUN_00909690(iVar5 + -1);
        FUN_00eaebca();
        uVar7 = FUN_00eae9a0();
        FUN_00e980e5(in_stack_ffffffa4);
        FUN_00e4e4a0(&PTR_DAT_01543634,&uStack_3c);
        in_stack_ffffffa4 = 0x756560;
        FUN_00eaebca(uVar7);
        if (*(int *)(iVar4 + 4) != 0) {
          FUN_00bb49d0();
          if (PTR_FUN_01c20fd0 != (undefined *)0x0) {
            FUN_00e8cf92();
          }
          if (*(int *)(DAT_01c27e98 + 0x10) == 0) {
            FUN_004191f0();
          }
          FUN_00eae9a0();
          FUN_00e980a1(uVar7);
          in_stack_ffffffa4 = 0x7565bb;
          FUN_004179f0(0);
        }
      }
      if (*(int *)(iVar4 + 4) == 0) {
        iVar5 = *(int *)(*(int *)(*(int *)(param_1 + 4) + 0x1c) + 8);
        if ((iVar5 == 0) || (*(int *)(*(int *)(iVar5 + 0x108) + 0x34) != 0)) {
          if (*(int *)(DAT_01c2892c + 0xc) == 0) {
            FUN_00eae9a0();
            FUN_00e97fa2(in_stack_ffffffa4);
            FUN_00eaec14();
          }
          FUN_00e4ee90(&PTR_DAT_01543690);
          iVar5 = FUN_00e4ee50();
          if (*(int *)(iVar5 + 8) == 1) {
            FUN_00e4e3a0(&PTR_PTR_01543614);
            goto LAB_00756a14;
          }
        }
        else {
          FUN_00eaec5e();
          FUN_00bb49d0();
          if (PTR_FUN_01c20fd0 != (undefined *)0x0) {
            FUN_00e8cf92();
          }
          if (*(int *)(DAT_01c27e98 + 0x10) == 0) {
            FUN_004191f0();
          }
          FUN_00eae9a0();
          FUN_00e980b2(in_stack_ffffffa4);
          FUN_004179f0(0);
        }
      }
    }
  }
  if (*(int *)(iVar4 + 4) == 0) goto LAB_00756982;
  iVar4 = FUN_00eae9a0();
  FUN_00eaec14();
  FUN_0099d430(2);
  if (uStack_14 < local_20) goto LAB_00756a24;
  if (uStack_14 == local_20) {
    FUN_0099d6f0();
  }
  else {
    *(undefined2 *)(iStack_18 + local_20 * 2) = 0x5b;
    local_20 = local_20 + 1;
  }
  FUN_00916ec0();
  FUN_00dd64e0(local_30,uStack_2c);
  uVar3 = u____Flash___Flash_018d3230._12_4_;
  uVar2 = u____Flash___Flash_018d3230._8_4_;
  uVar7 = u____Flash___Flash_018d3230._4_4_;
  if (uStack_14 < local_20) goto LAB_00756a24;
  pwVar1 = (wchar_t *)(iStack_18 + local_20 * 2);
  if (uStack_14 - local_20 < 0xb) {
    FUN_0099d6f0();
  }
  else {
    *(undefined4 *)pwVar1 = u____Flash___Flash_018d3230._0_4_;
    *(undefined4 *)(pwVar1 + 2) = uVar7;
    *(undefined4 *)(pwVar1 + 4) = uVar2;
    *(undefined4 *)(pwVar1 + 6) = uVar3;
    pwVar1[8] = L']';
    pwVar1[9] = L':';
    pwVar1[10] = L' ';
    local_20 = local_20 + 0xb;
  }
  iVar4 = *(int *)(*(int *)(iVar4 + 8) + 8);
  if (((char)uStack_1c == '\0') && (iVar4 != 0)) {
    if (uStack_14 < local_20) goto LAB_00756a24;
    if (uStack_14 - local_20 < *(uint *)(iVar4 + 4)) goto LAB_00756877;
    FUN_00930280(*(int *)(iVar4 + 4) * 2);
    local_20 = local_20 + *(int *)(iVar4 + 4);
  }
  else {
LAB_00756877:
    FUN_0099d670();
  }
  if (uStack_14 < local_20) {
LAB_00756a24:
                    /* WARNING: Subroutine does not return */
    FUN_009318f0();
  }
  if (uStack_14 == local_20) {
    FUN_0099d6f0();
  }
  else {
    *(undefined2 *)(iStack_18 + local_20 * 2) = 10;
    local_20 = local_20 + 1;
  }
  FUN_0099d560();
  FUN_00eaebca();
  iVar5 = FUN_00909ad0();
  if (iVar5 == 0) {
    if (*(char *)(*(int *)(*(int *)(param_1 + 4) + 0x164) + 0x38) != '\0') {
      if (PTR_FUN_01c20fd0 != (undefined *)0x0) {
        FUN_00e8cf92();
      }
      if (*(int *)(DAT_01c27e98 + 0x10) == 0) {
        FUN_004191f0();
      }
      FUN_00eae9a0();
      FUN_00e980f6(iVar4);
      FUN_004174c0();
    }
  }
  else if (*(char *)(*(int *)(*(int *)(param_1 + 4) + 0x38) + 0x38) != '\0') {
    FUN_00eae9a0();
    FUN_00e980d4(iVar4);
    FUN_00974ef0(0);
  }
LAB_00756982:
  iVar4 = FUN_00905af0();
  if (iVar4 != 0) {
    iVar4 = FUN_00eaea6e();
    *(undefined2 *)(iVar4 + 8) = 0x7c;
    iVar4 = FUN_00908570(0,iVar4 + 8,1);
    if (1 < *(int *)(iVar4 + 4)) {
      if (*(int *)(iVar4 + 4) < 3) {
        ppuVar8 = &PTR_DAT_01b39360;
      }
      else {
        ppuVar8 = *(undefined ***)(iVar4 + 0x10);
      }
      if (*(int *)(*(int *)(param_1 + 8) + 0x290) != 0) {
        FUN_0077a4c0(ppuVar8,*(undefined4 *)(iVar4 + 0xc));
      }
    }
  }
  return;
}

