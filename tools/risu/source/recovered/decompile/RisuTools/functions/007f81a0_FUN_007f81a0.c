/* Address: 007f81a0 | Ghidra name: FUN_007f81a0 */

/* WARNING: Type propagation algorithm not settling */

void __fastcall FUN_007f81a0(int *param_1)

{
  uint uVar1;
  byte bVar2;
  int iVar3;
  undefined4 *puVar4;
  int iVar5;
  undefined4 uVar6;
  int iVar7;
  int *extraout_ECX;
  int *piVar8;
  int extraout_ECX_00;
  int iVar9;
  undefined4 in_stack_ffffffa8;
  undefined4 uVar10;
  int local_40 [6];
  undefined4 *puStack_28;
  uint uStack_24;
  int local_20;
  int local_1c;
  int local_18;
  int local_14;
  
  local_40[0] = 0;
  local_40[1] = 0;
  local_40[2] = 0;
  local_40[3] = 0;
  local_40[4] = 0;
  local_40[5] = 0;
  puStack_28 = (undefined4 *)0x0;
  uStack_24 = 0;
  local_20 = 0;
  local_1c = 0;
  local_18 = 0;
  local_14 = param_1[3];
  iVar7 = *param_1;
  if (local_14 == 0) {
    local_18 = param_1[8];
    param_1[8] = 0;
    local_14 = -1;
    param_1[3] = -1;
  }
  else {
    piVar8 = param_1;
    if (local_14 - 1U < 7) goto LAB_007f822a;
    FUN_007876b0();
    FUN_00787780();
    if (*(int *)(DAT_01c28a2c + 8) == 0) {
      FUN_00eae9a0();
      FUN_00e9a956(in_stack_ffffffa8);
      FUN_00eaec5e();
    }
    FUN_00e4ee90(&PTR_DAT_0154323c);
    FUN_00e4ee50();
    FUN_00eaeca8();
    if (*(int *)(*(int *)(extraout_ECX_00 + 4) + 8) == 0) {
      FUN_007876b0();
LAB_007f8cb0:
      param_1[3] = -2;
      param_1[1] = 0;
      if (param_1[7] == 0) {
        if (PTR_FUN_01c22110 != (undefined *)0x0) {
          FUN_00e8eaee();
        }
        FUN_00eaeca8();
        return;
      }
      iVar7 = FUN_00c0a790(0);
      if (iVar7 != 0) {
        return;
      }
                    /* WARNING: Subroutine does not return */
      FUN_00931e50();
    }
    FUN_0077b7e0(0x3a3);
    local_18 = FUN_00975000(*(undefined4 *)(iVar7 + 0x1c));
    if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
      param_1[3] = 0;
      FUN_00eaecdd();
      FUN_00da1fa0();
      FUN_00dfc9c0();
      return;
    }
  }
  if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  iVar5 = *(int *)(param_1[1] + 0xc);
  FUN_00eaeca8();
  extraout_ECX[10] = 0;
  extraout_ECX[0xb] = iVar5;
  extraout_ECX[0xc] = 0;
  piVar8 = extraout_ECX;
LAB_007f822a:
  switch(local_14) {
  case 1:
    local_18 = piVar8[8];
    piVar8[8] = 0;
    local_14 = -1;
    piVar8[3] = -1;
    break;
  case 2:
    goto switchD_007f8248_caseD_2;
  case 3:
    local_20 = piVar8[0xe];
    piVar8[0xe] = 0;
    local_14 = -1;
    piVar8[3] = -1;
    goto LAB_007f83d7;
  case 4:
    local_18 = piVar8[8];
    piVar8[8] = 0;
    local_14 = -1;
    piVar8[3] = -1;
    goto LAB_007f836e;
  case 5:
    local_18 = piVar8[8];
    piVar8[8] = 0;
    local_14 = -1;
    piVar8[3] = -1;
    goto LAB_007f8338;
  case 6:
    local_18 = piVar8[8];
    piVar8[8] = 0;
    local_14 = -1;
    piVar8[3] = -1;
    goto LAB_007f82a9;
  case 7:
    local_18 = piVar8[8];
    piVar8[8] = 0;
    local_14 = -1;
    piVar8[3] = -1;
    goto LAB_007f8263;
  default:
    goto switchD_007f8248_default;
  }
  do {
    if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
switchD_007f8248_caseD_2:
    if (local_14 == 2) {
      local_1c = param_1[0xd];
      param_1[0xd] = 0;
      local_14 = -1;
      param_1[3] = -1;
    }
    else {
      local_1c = FUN_0077b6e0(&PTR_DAT_01b53540);
      if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
        local_14 = 2;
        param_1[3] = 2;
        FUN_00eaecdd();
        FUN_00da1fa0();
        FUN_00dfca00(&PTR_DAT_01557398);
        return;
      }
    }
    if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    if ((*(int *)(local_1c + 0x20) != 0) && (*(int *)(*(int *)(local_1c + 0x20) + 4) != 0)) {
      local_40[1] = 0x7e;
      iVar5 = FUN_00908570(0,local_40 + 1,1);
      for (iVar9 = 0; uVar1 = *(uint *)(iVar5 + 4), iVar9 < (int)uVar1; iVar9 = iVar9 + 1) {
        iVar3 = *(int *)(iVar5 + 8 + iVar9 * 4);
        if (((iVar3 != 0) && (*(int *)(iVar3 + 4) != 0)) &&
           ((iVar3 = FUN_00909ad0(), iVar3 != 0 || (iVar3 = FUN_00909ad0(), iVar3 != 0)))) {
          if ((int)uVar1 <= iVar9 + 1) break;
          if (uVar1 <= iVar9 + 1U) {
                    /* WARNING: Subroutine does not return */
            FUN_009c2bf0();
          }
          FUN_00a51650();
          puVar4 = (undefined4 *)FUN_00a51200();
          if (puVar4[7] == 0) {
            if ((int)uVar1 <= iVar9 + 2) break;
            FUN_00a51650();
            puVar4 = (undefined4 *)FUN_00a51200();
            if (puVar4[7] == 0) {
              if ((int)uVar1 <= iVar9 + 3) break;
              FUN_00a51650();
              puVar4 = (undefined4 *)FUN_00a51200();
              if (puVar4[7] == 0) break;
            }
          }
          if ((undefined *)*puVar4 == &DAT_01626e9c) {
            FUN_00a4fcf0();
          }
          else {
            FUN_00a502b0();
          }
          FUN_00a4f4a0();
          iVar5 = FUN_00a4f280();
          if (iVar5 == 0) {
                    /* WARNING: Subroutine does not return */
            FUN_00931d20();
          }
          iVar9 = iVar5 + 8;
          uVar6 = *(undefined4 *)(iVar5 + 4);
          iVar5 = iVar9;
          uVar10 = uVar6;
          FUN_00958ea0(iVar9,uVar6);
          iVar5 = FUN_00dd21c0(local_40,iVar5,uVar10);
          if (iVar5 != 0) {
            if (iVar5 != 1) {
                    /* WARNING: Subroutine does not return */
              FUN_00de72e0();
            }
                    /* WARNING: Subroutine does not return */
            FUN_00dca280(iVar9,uVar6);
          }
          param_1[4] = local_40[0];
          break;
        }
      }
    }
    do {
      iVar5 = *(int *)(*(int *)(param_1[2] + 0xc) + 0x34);
      iVar9 = param_1[4];
      if (iVar5 <= iVar9) {
        iVar9 = iVar5;
      }
      param_1[5] = iVar9;
      if (param_1[5] < 1) {
        FUN_00906aa0(&PTR_DAT_01b3c0f8);
        FUN_007876b0();
      }
      else {
        param_1[6] = 0;
        piVar8 = param_1;
        while ((piVar8[6] < piVar8[5] &&
               ((*(int *)(iVar7 + 0x1c) == 0 || (*(int *)(*(int *)(iVar7 + 0x1c) + 0x10) == 0))))) {
          local_20 = FUN_0077abc0();
          piVar8 = param_1;
          if ((*(uint *)(local_20 + 0x1c) & 0x1600000) == 0) {
            param_1[3] = 3;
            FUN_00eaeca8();
            FUN_00da1fa0();
            FUN_00dfca00(&PTR_DAT_01553fd0);
            return;
          }
LAB_007f83d7:
          if ((*(uint *)(local_20 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
            piVar8 = param_1;
          }
          if (*(int *)(local_20 + 0x20) == 0) {
            bVar2 = 0;
          }
          else {
            bVar2 = *(byte *)(*(int *)(local_20 + 0x20) + 0x68);
          }
          if ((*(char *)(piVar8[2] + 0x1d) == '\0') || (bVar2 != 0)) {
            if ((bVar2 & *(char *)(piVar8[2] + 0x1d) == '\0') != 0) {
              uVar6 = FUN_00eaeae1();
              iVar5 = FUN_00eae9a0();
              *(undefined4 *)(iVar5 + 4) = 0;
              FUN_00eaebca();
              FUN_0077a610(uVar6,&PTR_DAT_01be70bc);
              local_18 = FUN_00975000(*(undefined4 *)(iVar7 + 0x1c));
              if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
                param_1[3] = 5;
                FUN_00eaecdd();
                FUN_00da1fa0();
                FUN_00dfc9c0();
                return;
              }
LAB_007f8338:
              if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
                FUN_0099dbc0();
              }
            }
          }
          else {
            uVar6 = FUN_00eaeae1();
            iVar5 = FUN_00eae9a0();
            *(undefined4 *)(iVar5 + 4) = 0;
            FUN_00eaebca();
            FUN_0077a610(uVar6,&PTR_DAT_01be70d8);
            local_18 = FUN_00975000(*(undefined4 *)(iVar7 + 0x1c));
            if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
              param_1[3] = 4;
              FUN_00eaecdd();
              FUN_00da1fa0();
              FUN_00dfc9c0();
              return;
            }
LAB_007f836e:
            if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
          }
          if (PTR_LAB_01c23e7c != (undefined *)0x0) {
            FUN_00e8f54a();
          }
          local_40[3] = FUN_00b848a0();
          if (local_40[3] == 0) {
            puStack_28 = (undefined4 *)0x0;
            uStack_24 = 0;
          }
          else {
            puStack_28 = (undefined4 *)(local_40[3] + 8);
            uStack_24 = *(uint *)(local_40[3] + 4);
          }
          local_40[2] = 0;
          local_40[4] = 0;
          local_40[5] = local_40[5] & 0xffffff00;
          if (uStack_24 < 5) {
            FUN_0099d6f0();
          }
          else {
            *puStack_28 = &DAT_01b0004c;
            puStack_28[1] = 0x741ee3;
            *(undefined2 *)(puStack_28 + 2) = 0x20;
            local_40[4] = 5;
          }
          FUN_00de77e0();
          if (uStack_24 < (uint)local_40[4]) {
LAB_007f8caa:
                    /* WARNING: Subroutine does not return */
            FUN_009318f0();
          }
          if (uStack_24 == local_40[4]) {
            FUN_0099d6f0();
          }
          else {
            *(undefined2 *)((int)puStack_28 + local_40[4] * 2) = 0x2f;
            local_40[4] = local_40[4] + 1;
          }
          FUN_00de77e0();
          if (uStack_24 < (uint)local_40[4]) goto LAB_007f8caa;
          puVar4 = (undefined4 *)((int)puStack_28 + local_40[4] * 2);
          if (uStack_24 - local_40[4] < 3) {
            FUN_0099d6f0();
          }
          else {
            *puVar4 = 0x2e002e;
            *(undefined2 *)(puVar4 + 1) = 0x2e;
            local_40[4] = local_40[4] + 3;
          }
          FUN_0099d560();
          FUN_007876b0();
          uVar6 = FUN_00eaeae1();
          FUN_0092af10();
          FUN_00eaebca();
          FUN_0077a680(uVar6,5000,&PTR_DAT_01be29f4);
          local_18 = FUN_007f8150();
          if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
            param_1[3] = 6;
            FUN_00eaeca8();
            FUN_00da1fa0();
            FUN_00dfc9c0();
            return;
          }
LAB_007f82a9:
          if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          local_18 = FUN_00975000(*(undefined4 *)(iVar7 + 0x1c));
          piVar8 = param_1;
          if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
            param_1[3] = 7;
            FUN_00eaeca8();
            FUN_00da1fa0();
            FUN_00dfc9c0();
            return;
          }
LAB_007f8263:
          if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
            piVar8 = param_1;
          }
          piVar8[6] = piVar8[6] + 1;
        }
        param_1[2] = 0;
      }
switchD_007f8248_default:
      iVar5 = FUN_00cd0850();
      if (iVar5 == 0) {
LAB_007f8b72:
        param_1[9] = 0;
        param_1[10] = 0;
        param_1[0xb] = 0;
        param_1[0xc] = 0;
        FUN_007876b0();
        goto LAB_007f8cb0;
      }
      FUN_00eaeca8();
      if ((*(int *)(iVar7 + 0x1c) != 0) && (*(int *)(*(int *)(iVar7 + 0x1c) + 0x10) != 0))
      goto LAB_007f8b72;
      iVar5 = FUN_00e51370(&PTR_PTR_0154328c,*(undefined4 *)(*(int *)(iVar7 + 0x20) + 8),0);
      param_1[4] = *(int *)(*(int *)(param_1[2] + 0xc) + 0x34);
    } while (iVar5 < 0);
    uVar6 = FUN_00eaeae1();
    FUN_0092af10(uVar6);
    FUN_00eaebca();
    FUN_0077a680(uVar6,5000,&PTR_DAT_01be2a20);
    local_18 = FUN_00975000(*(undefined4 *)(iVar7 + 0x1c));
    if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
      param_1[3] = 1;
      FUN_00eaecdd();
      FUN_00da1fa0();
      FUN_00dfc9c0();
      return;
    }
  } while( true );
}

