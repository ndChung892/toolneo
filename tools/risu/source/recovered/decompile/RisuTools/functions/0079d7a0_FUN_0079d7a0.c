/* Address: 0079d7a0 | Ghidra name: FUN_0079d7a0 */

void __fastcall FUN_0079d7a0(int *param_1)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  int *piVar5;
  int *piVar6;
  undefined4 local_4c;
  int aiStack_48 [14];
  
  local_4c = 0;
  aiStack_48[0] = 0;
  aiStack_48[1] = 0;
  aiStack_48[2] = 0;
  aiStack_48[3] = 0;
  aiStack_48[4] = 0;
  aiStack_48[5] = 0;
  aiStack_48[6] = 0;
  aiStack_48[7] = 0;
  aiStack_48[8] = 0;
  aiStack_48[9] = 0;
  aiStack_48[10] = 0;
  aiStack_48[0xb] = 0;
  aiStack_48[0xc] = 0;
  aiStack_48[0xd] = 0;
  iVar3 = *param_1;
  piVar5 = param_1;
  switch(param_1[2]) {
  case 0:
    aiStack_48[7] = param_1[6];
    param_1[6] = 0;
    param_1[2] = -1;
    while( true ) {
      if ((*(uint *)(aiStack_48[7] + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      aiStack_48[6] = FUN_0077b0a0(&PTR_DAT_01b9125c);
      if ((*(uint *)(aiStack_48[6] + 0x1c) & 0x1600000) == 0) {
        param_1[2] = 1;
        FUN_00eaecdd();
        FUN_00d97e60();
        FUN_00dfca00(&PTR_DAT_01553b90);
        return;
      }
LAB_0079d97e:
      if ((*(uint *)(aiStack_48[6] + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      iVar4 = *(int *)(aiStack_48[6] + 0x20);
      param_1[4] = param_1[4] + 1;
      if ((iVar4 != 0) && (*(int *)(*(int *)(iVar4 + 0x10) + 8) != 0)) break;
      if (4 < param_1[4]) {
        if (iVar4 != 0) break;
        goto LAB_0079d84c;
      }
LAB_0079dbc6:
      aiStack_48[7] = FUN_00975000(*(undefined4 *)(iVar3 + 0x1c));
      if ((*(uint *)(aiStack_48[7] + 0x1c) & 0x1600000) == 0) {
        param_1[2] = 0;
        FUN_00eaecdd();
        FUN_00d97e60();
        FUN_00dfc9c0();
        return;
      }
    }
    if (0 < *(int *)(*(int *)(iVar4 + 0x10) + 8)) {
      iVar4 = *(int *)(*(int *)(iVar4 + 0x10) + 4);
      if (*(int *)(iVar4 + 4) == 0) {
                    /* WARNING: Subroutine does not return */
        FUN_009c2bf0();
      }
      FUN_0077ab40(0,*(undefined4 *)(*(int *)(iVar4 + 8) + 8),&PTR_DAT_01b9125c);
      param_1[4] = 0;
      do {
        aiStack_48[7] = FUN_00975000(*(undefined4 *)(iVar3 + 0x1c));
        if ((*(uint *)(aiStack_48[7] + 0x1c) & 0x1600000) == 0) {
          param_1[2] = 2;
          FUN_00eaecdd();
          FUN_00d97e60();
          FUN_00dfc9c0();
          return;
        }
LAB_0079d8f1:
        if ((*(uint *)(aiStack_48[7] + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        aiStack_48[6] = FUN_0077b0a0(&PTR_DAT_01ba04a8);
        if ((*(uint *)(aiStack_48[6] + 0x1c) & 0x1600000) == 0) {
          param_1[2] = 3;
          FUN_00eaecdd();
          FUN_00d97e60();
          FUN_00dfca00(&PTR_DAT_01553b90);
          return;
        }
LAB_0079d8a4:
        if ((*(uint *)(aiStack_48[6] + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        iVar4 = *(int *)(aiStack_48[6] + 0x20);
        param_1[4] = param_1[4] + 1;
        if (iVar4 != 0) {
          if (*(int *)(DAT_01c289ac + 0x34) == 0) {
            uVar2 = FUN_00eae9a0();
            FUN_00e9924b(uVar2);
            FUN_00eaebef();
          }
          iVar4 = FUN_00e4e4a0(&PTR_DAT_01543d24,&local_4c);
          if (iVar4 != 0) {
            uVar2 = *(undefined4 *)(*(int *)(iVar3 + 0x14) + 8);
            FUN_0077ab40(0,*(undefined4 *)(iVar4 + 8),&PTR_DAT_01ba04a8);
            aiStack_48[7] = FUN_00975000(*(undefined4 *)(iVar3 + 0x1c));
            if ((*(uint *)(aiStack_48[7] + 0x1c) & 0x1600000) == 0) {
              param_1[2] = 4;
              FUN_00eaecdd(piVar5,uVar2);
              FUN_00d97e60();
              FUN_00dfc9c0();
              return;
            }
            goto LAB_0079d831;
          }
          break;
        }
      } while (param_1[4] < 5);
    }
    break;
  case 1:
    aiStack_48[6] = param_1[7];
    param_1[7] = 0;
    param_1[2] = -1;
    goto LAB_0079d97e;
  case 2:
    aiStack_48[7] = param_1[6];
    param_1[6] = 0;
    param_1[2] = -1;
    goto LAB_0079d8f1;
  case 3:
    aiStack_48[6] = param_1[7];
    param_1[7] = 0;
    param_1[2] = -1;
    goto LAB_0079d8a4;
  case 4:
    aiStack_48[7] = param_1[6];
    param_1[6] = 0;
    param_1[2] = -1;
LAB_0079d831:
    if ((*(uint *)(aiStack_48[7] + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    break;
  case 5:
    aiStack_48[7] = param_1[6];
    param_1[6] = 0;
    param_1[2] = -1;
    goto LAB_0079d7fb;
  default:
    FUN_0099d430(1);
    piVar5 = aiStack_48;
    piVar6 = aiStack_48 + 8;
    for (iVar4 = 6; iVar4 != 0; iVar4 = iVar4 + -1) {
      *piVar6 = *piVar5;
      piVar5 = piVar5 + 1;
      piVar6 = piVar6 + 1;
    }
    if ((uint)aiStack_48[10] <= (uint)aiStack_48[0xd]) {
      if ((uint)(aiStack_48[0xd] - aiStack_48[10]) < 0x21) {
        FUN_0099d6f0();
      }
      else {
        FUN_00930280(0x42);
        aiStack_48[10] = aiStack_48[10] + 0x21;
      }
      piVar5 = param_1;
      FUN_00de77e0();
      if ((uint)aiStack_48[10] <= (uint)aiStack_48[0xd]) {
        puVar1 = (undefined4 *)(aiStack_48[0xc] + aiStack_48[10] * 2);
        if ((uint)(aiStack_48[0xd] - aiStack_48[10]) < 3) {
          FUN_0099d6f0();
        }
        else {
          *puVar1 = 0x2e002e;
          *(undefined2 *)(puVar1 + 1) = 0x2e;
          aiStack_48[10] = aiStack_48[10] + 3;
        }
        FUN_0099d560();
        FUN_007876b0();
        FUN_0077a760(0,param_1[3]);
        param_1[4] = 0;
        goto LAB_0079dbc6;
      }
    }
                    /* WARNING: Subroutine does not return */
    FUN_009318f0();
  }
LAB_0079d84c:
  aiStack_48[7] = FUN_0079bc30();
  if ((*(uint *)(aiStack_48[7] + 0x1c) & 0x1600000) == 0) {
    param_1[2] = 5;
    FUN_00eaecdd();
    FUN_00d97e60();
    FUN_00dfc9c0();
    return;
  }
LAB_0079d7fb:
  if ((*(uint *)(aiStack_48[7] + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  param_1[2] = -2;
  if (param_1[5] == 0) {
    if (PTR_FUN_01c22110 != (undefined *)0x0) {
      FUN_00e8eaee();
    }
    FUN_00eaecdd();
  }
  else {
    iVar3 = FUN_00c0a790(0);
    if (iVar3 == 0) {
                    /* WARNING: Subroutine does not return */
      FUN_00931e50();
    }
  }
  return;
}

