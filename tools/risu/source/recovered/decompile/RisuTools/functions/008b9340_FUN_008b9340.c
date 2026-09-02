/* Address: 008b9340 | Ghidra name: FUN_008b9340 */

void __fastcall FUN_008b9340(int *param_1)

{
  undefined4 uVar1;
  int iVar2;
  bool bVar3;
  undefined1 uVar4;
  uint uVar5;
  int iVar6;
  int iVar7;
  int iVar8;
  int iVar9;
  undefined4 local_70;
  int local_64;
  int iStack_60;
  int local_58;
  int iStack_54;
  int local_48;
  char local_40;
  undefined4 local_38;
  undefined4 local_34;
  int local_30;
  int local_28;
  undefined2 local_24;
  undefined1 local_22;
  int local_20;
  undefined4 local_1c;
  uint local_18 [2];
  
  uVar5 = 0xffffffa0;
  do {
    *(undefined4 *)((int)&local_1c + uVar5) = 0;
    *(undefined4 *)((int)local_18 + uVar5) = 0;
    *(undefined4 *)((int)local_18 + uVar5 + 4) = 0;
    *(undefined4 *)(&stack0xfffffff0 + uVar5) = 0;
    *(undefined4 *)(&stack0xfffffff4 + uVar5) = 0;
    *(undefined4 *)(&stack0xfffffff8 + uVar5) = 0;
    *(undefined4 *)(&stack0xfffffffc + uVar5) = 0;
    *(undefined4 *)(&stack0x00000000 + uVar5) = 0;
    *(undefined4 *)(&stack0x00000004 + uVar5) = 0;
    *(undefined4 *)(&stack0x00000008 + uVar5) = 0;
    *(undefined4 *)(&stack0x0000000c + uVar5) = 0;
    *(undefined4 *)(&stack0x00000010 + uVar5) = 0;
    uVar5 = uVar5 + 0x30;
  } while (uVar5 != 0);
  local_18[1] = param_1[2];
  iVar7 = *param_1;
  local_1c = uVar5;
  if (1 < local_18[1]) {
    if ((*(int *)(*(int *)(iVar7 + 8) + 0x14) == 0) || (iVar6 = FUN_008992b0(), iVar6 != 0))
    goto LAB_008b998b;
    param_1[6] = 0;
    param_1[7] = 0;
    param_1[8] = 0;
    *(undefined1 *)(param_1 + 3) = 1;
  }
  if (local_18[1] == 0) {
    local_20 = param_1[9];
    local_1c = param_1[10];
    param_1[9] = 0;
    param_1[10] = 0;
    local_18[1] = 0xffffffff;
    param_1[2] = -1;
LAB_008b93d4:
    if (local_20 == 0) {
      uVar4 = local_1c._2_1_;
    }
    else {
      iVar6 = FUN_0099aa80();
      if (iVar6 == 0) {
        uVar4 = FUN_00cf1820();
      }
      else {
        if ((*(uint *)(iVar6 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        uVar4 = *(undefined1 *)(iVar6 + 0x20);
      }
    }
    *(undefined1 *)(param_1 + 3) = uVar4;
LAB_008b950e:
    if ((char)param_1[3] != '\0') {
      FUN_00896780();
      FUN_008d0540();
      if (local_40 == '\0') {
        local_38 = 0xffffffff;
        local_70 = 0xffffffff;
      }
      else {
        local_70 = local_34;
      }
      FUN_00eae9ce();
      FUN_00eaec5e();
      iVar6 = FUN_00eaebef();
      *(undefined1 *)(iVar6 + 0x10) = 0;
      *(undefined4 *)(iVar6 + 0x1c) = local_38;
      *(undefined4 *)(iVar6 + 0x20) = local_70;
      FUN_00eaeca8();
      goto LAB_008b9588;
    }
  }
  else {
    if (local_18[1] != 1) {
      if (*(int *)(iVar7 + 0x24) != 0) {
        FUN_008b7440(param_1[5]);
        param_1[6] = local_64;
        param_1[7] = iStack_60;
        FUN_00eaee5e();
        if (*(char *)(*(int *)(iVar7 + 0x20) + 0x14) != '\0') {
                    /* WARNING: Subroutine does not return */
          FUN_009320a0();
        }
        FUN_008b5fd0(*(int *)(iVar7 + 0x20));
        local_20 = local_28;
        local_1c = (uint)CONCAT12(local_22,local_24);
        if (local_28 != 0) {
          iVar6 = FUN_0099aa80();
          if (iVar6 == 0) {
            uVar5 = FUN_00cde210();
          }
          else {
            uVar5 = *(uint *)(iVar6 + 0x1c) & 0x1600000;
          }
          if (uVar5 == 0) {
            local_18[1] = 0;
            param_1[2] = 0;
            FUN_00eaee5e();
            param_1[9] = local_28;
            FUN_00dab960();
            FUN_00e17b00();
            FUN_008b9ac6();
            return;
          }
        }
        goto LAB_008b93d4;
      }
      goto LAB_008b950e;
    }
LAB_008b9588:
    if (local_18[1] == 1) {
      local_48 = param_1[0xb];
      param_1[0xb] = 0;
      param_1[0xc] = 0;
      local_18[1] = 0xffffffff;
      param_1[2] = -1;
LAB_008b95af:
      if (local_48 != 0) {
        iVar6 = FUN_0099aa80();
        if (iVar6 == 0) {
          (*(code *)PTR_FUN_01c4f0f0)();
        }
        else if ((*(uint *)(iVar6 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
      }
    }
    else {
      if (*(char *)(*(int *)(iVar7 + 0x20) + 0x14) != '\0') {
                    /* WARNING: Subroutine does not return */
        FUN_009320a0();
      }
      FUN_00896d30(*(int *)(iVar7 + 0x20),0,param_1[1]);
      if (local_30 != 0) {
        iVar6 = FUN_0099aa80();
        if (iVar6 == 0) {
          uVar5 = (*(code *)PTR_FUN_01c39790)();
        }
        else {
          uVar5 = *(uint *)(iVar6 + 0x1c) & 0x1600000;
        }
        if (uVar5 == 0) {
          if ((param_1[8] == 0) && (param_1[6] == 0 && param_1[7] == 0)) {
            FUN_008b7440(param_1[5]);
            param_1[6] = local_58;
            param_1[7] = iStack_54;
            FUN_00eaee5e();
          }
          local_48 = local_30;
          if (local_30 != 0) {
            iVar6 = FUN_0099aa80();
            if (iVar6 == 0) {
              uVar5 = (*(code *)PTR_FUN_01c39790)();
            }
            else {
              uVar5 = *(uint *)(iVar6 + 0x1c) & 0x1600000;
            }
            if (uVar5 == 0) {
              local_18[1] = 1;
              param_1[2] = 1;
              FUN_00eaee5e();
              param_1[0xb] = local_30;
              FUN_00dab960();
              FUN_00e051e0();
              FUN_008b99ef();
              FUN_008b9ac6();
              return;
            }
          }
          goto LAB_008b95af;
        }
        if (iVar6 == 0) {
          (*(code *)PTR_FUN_01c4f0f0)();
        }
        else if ((*(uint *)(iVar6 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
      }
    }
    iVar6 = param_1[1];
    uVar5 = (uint)(*(uint *)(iVar6 + 0x14) < *(uint *)(iVar6 + 0x1c));
    iVar8 = *(int *)(iVar6 + 0x18) - *(int *)(iVar6 + 0x20);
    if ((SBORROW4(*(int *)(iVar6 + 0x18),*(int *)(iVar6 + 0x20)) != SBORROW4(iVar8,uVar5)) !=
        (int)(iVar8 - uVar5) < 0) {
      iVar7 = FUN_00eae9a0();
      uVar1 = *(undefined4 *)(iVar6 + 0x18);
      *(undefined4 *)(iVar7 + 4) = *(undefined4 *)(iVar6 + 0x14);
      *(undefined4 *)(iVar7 + 8) = uVar1;
      iVar7 = param_1[1];
      iVar6 = FUN_00eae9a0();
      uVar1 = *(undefined4 *)(iVar7 + 0x20);
      *(undefined4 *)(iVar6 + 4) = *(undefined4 *)(iVar7 + 0x1c);
      *(undefined4 *)(iVar6 + 8) = uVar1;
      FUN_00eae9a0();
      FUN_00890cc0(iVar6);
      FUN_0090da50();
      FUN_00eaebef();
                    /* WARNING: Subroutine does not return */
      FUN_00eaeefb();
    }
    if ((int)local_18[1] < 0) {
      FUN_008b7db0();
      FUN_009024f0();
    }
    param_1[1] = 0;
  }
  if ((int)local_18[1] < 0) {
    iVar6 = param_1[8];
    if ((iVar6 != 0) && (iVar8 = FUN_009d1ea0(param_1[6],param_1[7]), iVar8 == 0)) {
      iVar8 = param_1[6];
      iVar2 = param_1[7];
      iVar9 = *(int *)(*(int *)(iVar6 + 0xc) + 0x14);
      if ((*(int *)(iVar9 + 0x10) != 0) &&
         ((*(int *)(iVar9 + 0x10) != 2 &&
          (iVar6 = *(int *)(*(int *)(iVar6 + 0xc) + 0x20), iVar9 = FUN_00965d90(), iVar6 != iVar9)))
         ) {
        FUN_009d1f60(iVar8,iVar2);
      }
    }
  }
  local_18[0] = 0;
  FUN_00966f60();
  local_18[0] = 1;
  *(undefined1 *)(iVar7 + 0x34) = 1;
  bVar3 = false;
  if ((*(char *)(iVar7 + 0x35) == '\0') || (bVar3 = true, *(char *)(iVar7 + 0x35) != '\x02')) {
    if ((char)param_1[3] == '\0') {
      *(undefined1 *)(iVar7 + 0x3b) = 1;
    }
    else {
      FUN_008b5180();
      FUN_008be940();
    }
    if (bVar3) goto LAB_008b9960;
  }
  else {
    FUN_008b6020();
LAB_008b9960:
    FUN_008b6050();
  }
  if ((int)local_18[1] < 0) {
    FUN_009671c0();
  }
LAB_008b998b:
  param_1[2] = -2;
  param_1[6] = 0;
  param_1[7] = 0;
  param_1[8] = 0;
  if (param_1[4] == 0) {
    if (PTR_FUN_01c22110 != (undefined *)0x0) {
      FUN_00e8eaee();
    }
    FUN_00eaeca8();
  }
  else {
    iVar7 = FUN_00c0a790(0);
    if (iVar7 == 0) {
                    /* WARNING: Subroutine does not return */
      FUN_00931e50();
    }
  }
  return;
}

