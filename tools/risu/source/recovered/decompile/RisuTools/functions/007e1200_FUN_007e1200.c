/* Address: 007e1200 | Ghidra name: FUN_007e1200 */

/* WARNING: Removing unreachable block (ram,0x007e17b9) */
/* WARNING: Removing unreachable block (ram,0x007e1833) */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_007e1200(int *param_1)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  int iVar5;
  int iVar6;
  int *piVar7;
  int *piVar8;
  int in_stack_ffffff90;
  int aiStack_4c [15];
  
  aiStack_4c[0] = 0;
  aiStack_4c[1] = 0;
  aiStack_4c[2] = 0;
  aiStack_4c[3] = 0;
  aiStack_4c[4] = 0;
  aiStack_4c[5] = 0;
  aiStack_4c[6] = 0;
  aiStack_4c[7] = 0;
  aiStack_4c[8] = 0;
  aiStack_4c[9] = 0;
  aiStack_4c[10] = 0;
  aiStack_4c[0xb] = 0;
  aiStack_4c[0xc] = 0;
  aiStack_4c[0xd] = 0;
  aiStack_4c[0xe] = 0;
  iVar6 = *param_1;
  switch(param_1[2]) {
  case 0:
    aiStack_4c[8] = param_1[6];
    param_1[6] = 0;
    param_1[2] = -1;
    while( true ) {
      if ((*(uint *)(aiStack_4c[8] + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      aiStack_4c[7] = FUN_0077acc0();
      if ((*(uint *)(aiStack_4c[7] + 0x1c) & 0x1600000) == 0) {
        param_1[2] = 1;
        FUN_00eaecdd();
        FUN_00da0b00();
        FUN_00dfca00();
        return;
      }
LAB_007e1549:
      if ((*(uint *)(aiStack_4c[7] + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      if (*(int *)(aiStack_4c[7] + 0x20) == 0) {
        iVar6 = 0;
      }
      else {
        if (*(int *)(DAT_01c289d4 + 0x94) == 0) {
          FUN_00eae9a0();
          FUN_00e9a3f5(in_stack_ffffff90);
          in_stack_ffffff90 = 0x7e176d;
          FUN_00eaebef();
        }
        FUN_00e4ee90();
        iVar6 = FUN_00e4ee50();
      }
      if ((iVar6 != 0) && (*(int *)(iVar6 + 8) != 0)) break;
      param_1[3] = param_1[3] + 1;
      aiStack_4c[8] = FUN_00975000();
      if ((*(uint *)(aiStack_4c[8] + 0x1c) & 0x1600000) == 0) {
        param_1[2] = 2;
        FUN_00eaecdd();
        FUN_00da0b00();
        FUN_00dfc9c0();
        return;
      }
LAB_007e1513:
      if ((*(uint *)(aiStack_4c[8] + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
LAB_007e16dc:
      if (2 < param_1[3]) {
        param_1[2] = -2;
        if (param_1[5] == 0) {
          if (PTR_FUN_01c22110 != (undefined *)0x0) {
            FUN_00e8eaee();
          }
          FUN_00eaeca8();
          return;
        }
        iVar6 = FUN_00c0a790();
        if (iVar6 != 0) {
          return;
        }
                    /* WARNING: Subroutine does not return */
        FUN_00931e50();
      }
      aiStack_4c[8] = FUN_007d31e0();
      if ((*(uint *)(aiStack_4c[8] + 0x1c) & 0x1600000) == 0) {
        param_1[2] = 0;
        FUN_00eaecdd();
        FUN_00da0b00();
        FUN_00dfc9c0();
        return;
      }
    }
    param_1[3] = 0;
    FUN_00e4e3a0();
                    /* WARNING: Subroutine does not return */
    FUN_00860240();
  case 1:
    aiStack_4c[7] = param_1[7];
    param_1[7] = 0;
    param_1[2] = -1;
    goto LAB_007e1549;
  case 2:
    aiStack_4c[8] = param_1[6];
    param_1[6] = 0;
    param_1[2] = -1;
    goto LAB_007e1513;
  case 3:
    aiStack_4c[8] = param_1[6];
    param_1[6] = 0;
    param_1[2] = -1;
    aiStack_4c[0xe] = 0;
    aiStack_4c[0xd] = 0;
    aiStack_4c[0xc] = 0;
    aiStack_4c[0xb] = 0;
    aiStack_4c[10] = 0;
    aiStack_4c[9] = 0;
    aiStack_4c[7] = 0;
    aiStack_4c[6] = 0;
    aiStack_4c[5] = 0;
    aiStack_4c[4] = 0;
    aiStack_4c[3] = 0;
    aiStack_4c[2] = 0;
    aiStack_4c[1] = 0;
    aiStack_4c[0] = 0;
    if ((*(uint *)(aiStack_4c[8] + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    uVar2 = *(undefined4 *)(param_1[1] + 0x28);
    uVar4 = FUN_00eaeae1();
    iVar5 = FUN_00eae9a0();
    *(undefined4 *)(iVar5 + 4) = uVar2;
    FUN_00eaebca();
    iVar5 = FUN_00eae9a0();
    *(undefined4 *)(iVar5 + 4) = 0;
    FUN_00eaebca();
    FUN_0077a610(uVar4,&PTR_DAT_01be3a98);
    aiStack_4c[8] = FUN_00975000();
    if ((*(uint *)(aiStack_4c[8] + 0x1c) & 0x1600000) == 0) {
      param_1[2] = 4;
      FUN_00eaecdd();
      FUN_00da0b00();
      FUN_00dfc9c0();
      return;
    }
    break;
  case 4:
    aiStack_4c[8] = param_1[6];
    param_1[6] = 0;
    param_1[2] = -1;
    break;
  case 5:
    aiStack_4c[6] = param_1[8];
    param_1[8] = 0;
    param_1[2] = -1;
    goto LAB_007e128b;
  case 6:
    aiStack_4c[8] = param_1[6];
    param_1[6] = 0;
    param_1[2] = -1;
    goto LAB_007e1254;
  default:
    FUN_0099d430();
    uVar3 = _UNK_018d5dec;
    uVar4 = _UNK_018d5de8;
    uVar2 = _UNK_018d5de4;
    piVar7 = aiStack_4c;
    piVar8 = aiStack_4c + 9;
    for (iVar6 = 6; iVar6 != 0; iVar6 = iVar6 + -1) {
      *piVar8 = *piVar7;
      piVar7 = piVar7 + 1;
      piVar8 = piVar8 + 1;
    }
    if ((uint)aiStack_4c[0xb] <= (uint)aiStack_4c[0xe]) {
      puVar1 = (undefined4 *)(aiStack_4c[0xd] + aiStack_4c[0xb] * 2);
      if ((uint)(aiStack_4c[0xe] - aiStack_4c[0xb]) < 0x1a) {
        FUN_0099d6f0();
      }
      else {
        *puVar1 = _DAT_018d5de0;
        puVar1[1] = uVar2;
        puVar1[2] = uVar4;
        puVar1[3] = uVar3;
        uVar3 = _UNK_018d5dfc;
        uVar4 = _UNK_018d5df8;
        uVar2 = _UNK_018d5df4;
        puVar1[4] = _DAT_018d5df0;
        puVar1[5] = uVar2;
        puVar1[6] = uVar4;
        puVar1[7] = uVar3;
        uVar3 = u_ng__isFly_018d5dfe._14_4_;
        uVar4 = u_ng__isFly_018d5dfe._10_4_;
        uVar2 = u_ng__isFly_018d5dfe._6_4_;
        puVar1[8] = u_ng__isFly_018d5dfe._2_4_;
        puVar1[9] = uVar2;
        puVar1[10] = uVar4;
        puVar1[0xb] = uVar3;
        puVar1[0xc] = 0x20003a;
        aiStack_4c[0xb] = aiStack_4c[0xb] + 0x1a;
      }
      FUN_00db1c50();
      if ((uint)aiStack_4c[0xb] <= (uint)aiStack_4c[0xe]) {
        puVar1 = (undefined4 *)(aiStack_4c[0xd] + aiStack_4c[0xb] * 2);
        if ((uint)(aiStack_4c[0xe] - aiStack_4c[0xb]) < 4) {
          FUN_0099d6f0();
        }
        else {
          *puVar1 = 0x2e0029;
          puVar1[1] = 0x2e002e;
          aiStack_4c[0xb] = aiStack_4c[0xb] + 4;
        }
        FUN_0099d560();
        FUN_007876b0();
        param_1[3] = 0;
        goto LAB_007e16dc;
      }
    }
                    /* WARNING: Subroutine does not return */
    FUN_009318f0();
  }
  if ((*(uint *)(aiStack_4c[8] + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  aiStack_4c[6] = FUN_0077b0a0();
  if ((*(uint *)(aiStack_4c[6] + 0x1c) & 0x1600000) == 0) {
    param_1[2] = 5;
    FUN_00eaecdd();
    FUN_00da0b00();
    FUN_00dfca00();
    return;
  }
LAB_007e128b:
  if ((*(uint *)(aiStack_4c[6] + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  if ((*(int *)(aiStack_4c[6] + 0x20) != 0) &&
     (iVar5 = *(int *)(*(int *)(aiStack_4c[6] + 0x20) + 0x10), 0 < *(int *)(iVar5 + 8))) {
    iVar5 = *(int *)(iVar5 + 4);
    if (*(int *)(iVar5 + 4) == 0) {
                    /* WARNING: Subroutine does not return */
      FUN_009c2bf0();
    }
    uVar2 = *(undefined4 *)(*(int *)(iVar5 + 8) + 8);
    uVar4 = *(undefined4 *)(*(int *)(iVar6 + 0x14) + 4);
    iVar6 = FUN_00eaeae1();
    *(undefined ***)(iVar6 + 8) = &PTR_DAT_01b91278;
    iVar5 = FUN_00eae9a0(iVar6,uVar4);
    *(undefined4 *)(iVar5 + 4) = uVar2;
    in_stack_ffffff90 = iVar6;
    FUN_00eaebca();
    iVar5 = FUN_00eae9a0();
    *(undefined4 *)(iVar5 + 4) = 0;
    FUN_00eaebca();
    FUN_0077a610(iVar6,&PTR_DAT_01befc64);
    aiStack_4c[8] = FUN_00975000();
    if ((*(uint *)(aiStack_4c[8] + 0x1c) & 0x1600000) == 0) {
      param_1[2] = 6;
      FUN_00eaecdd();
      FUN_00da0b00();
      FUN_00dfc9c0();
      return;
    }
LAB_007e1254:
    if ((*(uint *)(aiStack_4c[8] + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
  }
  param_1[1] = 0;
  goto LAB_007e16dc;
}

