/* Address: 007fe5c0 | Ghidra name: FUN_007fe5c0 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_007fe5c0(int *param_1)

{
  undefined **ppuVar1;
  int iVar2;
  undefined4 uVar3;
  int iVar4;
  undefined4 extraout_ECX;
  undefined4 uVar5;
  undefined1 auVar6 [16];
  undefined4 in_stack_ffffffc4;
  undefined4 local_2c;
  undefined4 uStack_28;
  int iStack_24;
  int iStack_20;
  int local_1c;
  int local_18;
  int local_14;
  
  local_2c = 0;
  uStack_28 = 0;
  iStack_24 = 0;
  iStack_20 = 0;
  local_1c = 0;
  local_18 = 0;
  local_14 = 0;
  iVar4 = *param_1;
  switch(param_1[1]) {
  case 0:
    local_14 = param_1[5];
    param_1[5] = 0;
    param_1[1] = -1;
    break;
  case 1:
    local_18 = param_1[6];
    param_1[6] = 0;
    param_1[1] = -1;
    goto LAB_007fea5f;
  case 2:
    local_18 = param_1[6];
    param_1[6] = 0;
    param_1[1] = -1;
    goto LAB_007fea30;
  case 3:
    local_1c = param_1[7];
    param_1[7] = 0;
    param_1[1] = -1;
    goto LAB_007fe9dc;
  case 4:
    local_18 = param_1[6];
    param_1[6] = 0;
    param_1[1] = -1;
    goto LAB_007fe94e;
  case 5:
    iStack_20 = param_1[8];
    param_1[8] = 0;
    param_1[1] = -1;
    goto LAB_007fe8ae;
  case 6:
    local_18 = param_1[6];
    param_1[6] = 0;
    param_1[1] = -1;
    goto LAB_007fe81a;
  case 7:
    iStack_24 = param_1[9];
    param_1[9] = 0;
    param_1[1] = -1;
    goto LAB_007fe74a;
  case 8:
    local_18 = param_1[6];
    param_1[6] = 0;
    param_1[1] = -1;
    goto LAB_007fe6be;
  case 9:
    iStack_20 = param_1[8];
    param_1[8] = 0;
    param_1[1] = -1;
    goto LAB_007fe611;
  default:
    FUN_007876b0();
    FUN_00787780();
    local_14 = FUN_0077abc0();
    if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
      param_1[1] = 0;
      FUN_00eaeca8();
      FUN_00da2b00();
      FUN_00dfca00(&PTR_DAT_01553fd0);
      return;
    }
  }
  if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  if ((*(char *)(iVar4 + 0x20) == '\0') && (*(int *)(*(int *)(local_14 + 0x20) + 0x2c) < 3)) {
    FUN_007876b0();
  }
  else {
    iVar2 = 4;
    if (*(char *)(iVar4 + 0x20) == '\0') {
      iVar2 = 0x1e;
    }
    if (*(int *)(*(int *)(local_14 + 0x20) + 0x28) != iVar2) {
      local_18 = FUN_00787840(0,0,0,0);
      if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
        param_1[1] = 1;
        FUN_00eaeca8();
        FUN_00da2b00();
        FUN_00dfc9c0();
        return;
      }
LAB_007fea5f:
      if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
    }
    while( true ) {
      local_1c = FUN_0077ac00();
      if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
        param_1[1] = 3;
        FUN_00eaeca8();
        FUN_00da2b00();
        FUN_00dfc9c0();
        return;
      }
LAB_007fe9dc:
      if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      if (*(char *)(local_1c + 0x20) != '\0') break;
      FUN_00eaeae1();
      iVar2 = FUN_00eae9a0();
      *(undefined4 *)(iVar2 + 4) = 0;
      FUN_00eaebca();
      FUN_0077a610(extraout_ECX,&PTR_DAT_01be70d8);
      local_18 = FUN_00975000(*(undefined4 *)(iVar4 + 0x1c));
      if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
        param_1[1] = 2;
        FUN_00eaeca8();
        FUN_00da2b00();
        FUN_00dfc9c0();
        return;
      }
LAB_007fea30:
      if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
    }
    do {
      if (*(char *)(iVar4 + 0x20) == '\0') {
        uVar5 = 0x3a1;
      }
      else {
        uVar5 = 0x1b2;
      }
      uStack_28 = *(undefined4 *)(*(int *)(iVar4 + 0x14) + 8);
      uVar3 = FUN_00eaeae1();
      iVar2 = FUN_00eae9a0(uVar3);
      *(undefined4 *)(iVar2 + 4) = uVar5;
      in_stack_ffffffc4 = uVar3;
      FUN_00eaebca();
      iVar2 = FUN_00eae9a0();
      *(undefined4 *)(iVar2 + 4) = 0;
      FUN_00eaebca();
      FUN_0077a610(uVar3,&PTR_DAT_01be3a98);
      local_18 = FUN_00975000(*(undefined4 *)(iVar4 + 0x1c));
      if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
        param_1[1] = 4;
        FUN_00eaeca8();
        FUN_00da2b00();
        FUN_00dfc9c0();
        return;
      }
LAB_007fe94e:
      if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      iStack_20 = FUN_0077b0a0(&PTR_DAT_01b91278);
      if ((*(uint *)(iStack_20 + 0x1c) & 0x1600000) == 0) {
        param_1[1] = 5;
        FUN_00eaeca8();
        FUN_00da2b00();
        FUN_00dfca00(&PTR_DAT_01553b90);
        return;
      }
LAB_007fe8ae:
      if ((*(uint *)(iStack_20 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
    } while (*(int *)(iStack_20 + 0x20) == 0);
    if (*(int *)(DAT_01c28a4c + 8) == 0) {
      FUN_00eae9a0();
      FUN_00e9aa77(in_stack_ffffffc4);
      FUN_00eaebef();
    }
    iVar2 = FUN_00e4e4a0(&PTR_DAT_01543d24,&local_2c);
    if (iVar2 == 0) {
      uVar5 = 2;
    }
    else {
      uVar5 = *(undefined4 *)(iVar2 + 8);
    }
    FUN_0077ab40(0,uVar5,&PTR_DAT_01b91278);
    *(undefined1 *)(param_1 + 3) = 0;
    param_1[2] = 0;
    while (param_1[2] < 0xf) {
      local_18 = FUN_00975000(*(undefined4 *)(iVar4 + 0x1c));
      if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
        param_1[1] = 6;
        FUN_00eaeca8();
        FUN_00da2b00();
        FUN_00dfc9c0();
        return;
      }
LAB_007fe81a:
      if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      iStack_24 = FUN_0077b730(&PTR_DAT_01be2db8,&PTR_DAT_01bb559c);
      if ((*(uint *)(iStack_24 + 0x1c) & 0x1600000) == 0) {
        param_1[1] = 7;
        FUN_00eaeca8();
        FUN_00da2b00();
        FUN_00dfca00(&PTR_DAT_01557398);
        return;
      }
LAB_007fe74a:
      if ((*(uint *)(iStack_24 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      ppuVar1 = *(undefined ***)(iStack_24 + 0x20);
      if (((ppuVar1 != (undefined **)0x0) && (ppuVar1[1] != (undefined *)0x0)) &&
         (ppuVar1 != &PTR_DAT_01bd0158)) {
        if (ppuVar1[1] == (undefined *)0xc) {
          auVar6._0_4_ = -(uint)(ppuVar1[2] == _DAT_018d6bb0 && ppuVar1[4] == _DAT_018d6bc0);
          auVar6._4_4_ = -(uint)(ppuVar1[3] == _UNK_018d6bb4 && ppuVar1[5] == _UNK_018d6bc4);
          auVar6._8_4_ = -(uint)(ppuVar1[4] == _UNK_018d6bb8 && ppuVar1[6] == _UNK_018d6bc8);
          auVar6._12_4_ = -(uint)(ppuVar1[5] == _UNK_018d6bbc && ppuVar1[7] == _UNK_018d6bcc);
          if ((ushort)((ushort)(SUB161(auVar6 >> 7,0) & 1) |
                       (ushort)(SUB161(auVar6 >> 0xf,0) & 1) << 1 |
                       (ushort)(SUB161(auVar6 >> 0x17,0) & 1) << 2 |
                       (ushort)(SUB161(auVar6 >> 0x1f,0) & 1) << 3 |
                       (ushort)(SUB161(auVar6 >> 0x27,0) & 1) << 4 |
                       (ushort)(SUB161(auVar6 >> 0x2f,0) & 1) << 5 |
                       (ushort)(SUB161(auVar6 >> 0x37,0) & 1) << 6 |
                       (ushort)(SUB161(auVar6 >> 0x3f,0) & 1) << 7 |
                       (ushort)(SUB161(auVar6 >> 0x47,0) & 1) << 8 |
                       (ushort)(SUB161(auVar6 >> 0x4f,0) & 1) << 9 |
                       (ushort)(SUB161(auVar6 >> 0x57,0) & 1) << 10 |
                       (ushort)(SUB161(auVar6 >> 0x5f,0) & 1) << 0xb |
                       (ushort)((byte)(auVar6._12_4_ >> 7) & 1) << 0xc |
                       (ushort)((byte)(auVar6._12_4_ >> 0xf) & 1) << 0xd |
                       (ushort)((byte)(auVar6._12_4_ >> 0x17) & 1) << 0xe |
                      (ushort)(byte)(auVar6._12_4_ >> 0x1f) << 0xf) == 0xffff) goto LAB_007fede0;
        }
        iVar2 = FUN_00905b10(0);
        if (iVar2 == 0) {
          *(undefined1 *)(param_1 + 3) = 1;
          break;
        }
      }
LAB_007fede0:
      param_1[2] = param_1[2] + 1;
    }
    if ((char)param_1[3] == '\0') {
      FUN_007876b0();
    }
    else {
      FUN_0077b520(&PTR_DAT_01be2da4,&PTR_DAT_01bb559c);
      do {
        local_18 = FUN_00975000(*(undefined4 *)(iVar4 + 0x1c));
        if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
          param_1[1] = 8;
          FUN_00eaeca8();
          FUN_00da2b00();
          FUN_00dfc9c0();
          return;
        }
LAB_007fe6be:
        if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        iStack_20 = FUN_0077b0a0(&PTR_DAT_01bb04a8);
        if ((*(uint *)(iStack_20 + 0x1c) & 0x1600000) == 0) {
          param_1[1] = 9;
          FUN_00eaeca8();
          FUN_00da2b00();
          FUN_00dfca00(&PTR_DAT_01553b90);
          return;
        }
LAB_007fe611:
        if ((*(uint *)(iStack_20 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
      } while (((*(int *)(iStack_20 + 0x20) == 0) ||
               (iVar2 = *(int *)(*(int *)(iStack_20 + 0x20) + 8), iVar2 == 0)) ||
              (*(int *)(iVar2 + 4) == 0));
      FUN_0077ab40(0,1,&PTR_DAT_01bb04a8);
      if ((*(char *)(iVar4 + 0x20) != '\0') &&
         ((iVar4 = *(int *)(*(int *)(iVar4 + 4) + 0xbc), (*(byte *)(iVar4 + 0x34) & 1) == 0 ||
          (*(char *)(iVar4 + 0x38) != '\x01')))) {
        FUN_00b6cb10();
      }
      FUN_007876b0();
    }
  }
  param_1[1] = -2;
  if (param_1[4] == 0) {
    if (PTR_FUN_01c22110 != (undefined *)0x0) {
      FUN_00e8eaee();
    }
    FUN_00eaecdd();
  }
  else {
    iVar4 = FUN_00c0a790(0);
    if (iVar4 == 0) {
                    /* WARNING: Subroutine does not return */
      FUN_00931e50();
    }
  }
  return;
}

