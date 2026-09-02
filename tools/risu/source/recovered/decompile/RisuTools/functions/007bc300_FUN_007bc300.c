/* Address: 007bc300 | Ghidra name: FUN_007bc300 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_007bc300(int *param_1)

{
  undefined4 *puVar1;
  undefined **ppuVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  int iVar6;
  int iVar7;
  int *piVar8;
  int *piVar9;
  undefined4 local_6c;
  int iStack_68;
  int iStack_64;
  int aiStack_60 [20];
  
  local_6c = 0;
  iStack_68 = 0;
  iStack_64 = 0;
  aiStack_60[0] = 0;
  aiStack_60[1] = 0;
  aiStack_60[2] = 0;
  aiStack_60[3] = 0;
  aiStack_60[4] = 0;
  aiStack_60[5] = 0;
  aiStack_60[6] = 0;
  aiStack_60[7] = 0;
  aiStack_60[8] = 0;
  aiStack_60[9] = 0;
  aiStack_60[10] = 0;
  aiStack_60[0xb] = 0;
  aiStack_60[0xc] = 0;
  aiStack_60[0xd] = 0;
  aiStack_60[0xe] = 0;
  aiStack_60[0xf] = 0;
  aiStack_60[0x10] = 0;
  aiStack_60[0x11] = 0;
  aiStack_60[0x12] = 0;
  aiStack_60[0x13] = 0;
  iVar6 = *param_1;
  switch(param_1[3]) {
  case 0:
    aiStack_60[0xd] = param_1[8];
    param_1[8] = 0;
    param_1[3] = -1;
    break;
  case 1:
    aiStack_60[0xc] = param_1[9];
    param_1[9] = 0;
    param_1[3] = -1;
    goto LAB_007bc74a;
  case 2:
    aiStack_60[0xc] = param_1[9];
    param_1[9] = 0;
    param_1[3] = -1;
    goto LAB_007bc6be;
  case 3:
    aiStack_60[0xb] = param_1[10];
    param_1[10] = 0;
    param_1[3] = -1;
    goto LAB_007bcb6d;
  case 4:
    aiStack_60[0xc] = param_1[9];
    param_1[9] = 0;
    param_1[3] = -1;
    goto LAB_007bcae1;
  case 5:
    aiStack_60[0xb] = param_1[10];
    param_1[10] = 0;
    param_1[3] = -1;
    goto LAB_007bc44b;
  case 6:
    aiStack_60[0xc] = param_1[9];
    param_1[9] = 0;
    param_1[3] = -1;
    goto LAB_007bc3bf;
  case 7:
    aiStack_60[0xb] = param_1[10];
    param_1[10] = 0;
    param_1[3] = -1;
    goto LAB_007bc366;
  default:
    FUN_00eae9a0();
    FUN_00eaeca8();
    *(int *)(param_1[1] + 4) = param_1[4];
    FUN_0099d430(1);
    uVar4 = _UNK_018d4e1c;
    uVar5 = _UNK_018d4e18;
    uVar3 = _UNK_018d4e14;
    piVar8 = aiStack_60;
    piVar9 = aiStack_60 + 0xe;
    for (iVar7 = 6; iVar7 != 0; iVar7 = iVar7 + -1) {
      *piVar9 = *piVar8;
      piVar8 = piVar8 + 1;
      piVar9 = piVar9 + 1;
    }
    if ((uint)aiStack_60[0x13] < (uint)aiStack_60[0x10]) {
LAB_007bcce0:
                    /* WARNING: Subroutine does not return */
      FUN_009318f0();
    }
    puVar1 = (undefined4 *)(aiStack_60[0x12] + aiStack_60[0x10] * 2);
    if ((uint)(aiStack_60[0x13] - aiStack_60[0x10]) < 0x19) {
      FUN_0099d6f0();
    }
    else {
      *puVar1 = _DAT_018d4e10;
      puVar1[1] = uVar3;
      puVar1[2] = uVar5;
      puVar1[3] = uVar4;
      uVar4 = _UNK_018d4e2c;
      uVar5 = _UNK_018d4e28;
      uVar3 = _UNK_018d4e24;
      puVar1[4] = _DAT_018d4e20;
      puVar1[5] = uVar3;
      puVar1[6] = uVar5;
      puVar1[7] = uVar4;
      uVar4 = _UNK_018d4e3c;
      uVar5 = _UNK_018d4e38;
      uVar3 = _UNK_018d4e34;
      puVar1[8] = _DAT_018d4e30;
      puVar1[9] = uVar3;
      puVar1[10] = uVar5;
      puVar1[0xb] = uVar4;
      *(undefined2 *)(puVar1 + 0xc) = 0x20;
      aiStack_60[0x10] = aiStack_60[0x10] + 0x19;
    }
    FUN_00de77e0();
    uVar4 = _UNK_018d4e4c;
    uVar5 = _UNK_018d4e48;
    uVar3 = _UNK_018d4e44;
    if ((uint)aiStack_60[0x13] < (uint)aiStack_60[0x10]) goto LAB_007bcce0;
    puVar1 = (undefined4 *)(aiStack_60[0x12] + aiStack_60[0x10] * 2);
    if ((uint)(aiStack_60[0x13] - aiStack_60[0x10]) < 0x17) {
      FUN_0099d6f0();
    }
    else {
      *puVar1 = _DAT_018d4e40;
      puVar1[1] = uVar3;
      puVar1[2] = uVar5;
      puVar1[3] = uVar4;
      uVar4 = _UNK_018d4e5c;
      uVar5 = _UNK_018d4e58;
      uVar3 = _UNK_018d4e54;
      puVar1[4] = _DAT_018d4e50;
      puVar1[5] = uVar3;
      puVar1[6] = uVar5;
      puVar1[7] = uVar4;
      puVar1[8] = 0x20006e;
      puVar1[9] = 0x1ed90111;
      puVar1[10] = 0x2e002e;
      *(undefined2 *)(puVar1 + 0xb) = 0x2e;
      aiStack_60[0x10] = aiStack_60[0x10] + 0x17;
    }
    FUN_0099d560();
    FUN_007876b0();
    aiStack_60[0xd] = FUN_0077acc0();
    if ((*(uint *)(aiStack_60[0xd] + 0x1c) & 0x1600000) == 0) {
      param_1[3] = 0;
      FUN_00eaecdd();
      FUN_00d9c200(&PTR_DAT_01545624);
      FUN_00dfca00(&PTR_DAT_01568d50);
      return;
    }
  }
  if ((*(uint *)(aiStack_60[0xd] + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  if (*(int *)(aiStack_60[0xd] + 0x20) == 0) {
    iVar7 = 0;
  }
  else {
    FUN_00eae9a0();
    FUN_00e99c52();
    iVar7 = FUN_00e4e4a0(&PTR_DAT_01544440,&local_6c);
  }
  if (iVar7 != 0) {
    aiStack_60[0xc] =
         FUN_007877c0(1,1,*(undefined4 *)(*(int *)(*(int *)(iVar6 + 4) + 0x108) + 0x34),
                      *(double *)(iVar7 + 0xc) / _DAT_018d4e60,
                      *(double *)(iVar7 + 4) / _DAT_018d4e60);
    if ((*(uint *)(aiStack_60[0xc] + 0x1c) & 0x1600000) == 0) {
      param_1[3] = 1;
      FUN_00eaecdd();
      FUN_00d9c200();
      FUN_00dfca00();
      return;
    }
LAB_007bc74a:
    if ((*(uint *)(aiStack_60[0xc] + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
  }
  param_1[5] = *(int *)(*(int *)(*(int *)(iVar6 + 4) + 0x108) + 0x34);
  param_1[2] = (int)&PTR_DAT_01b39360;
  param_1[6] = 0;
  do {
    if (5 < param_1[6]) goto LAB_007bc6a4;
    uVar3 = *(undefined4 *)(param_1[1] + 4);
    uVar5 = FUN_00eaeae1();
    iVar6 = FUN_00eae9a0();
    *(undefined4 *)(iVar6 + 4) = uVar3;
    FUN_00eaebca();
    iVar6 = FUN_00eae9a0();
    *(undefined4 *)(iVar6 + 4) = 0;
    FUN_00eaebca();
    FUN_0077a610(uVar5,&PTR_DAT_01be3a98);
    aiStack_60[0xc] = FUN_00975000();
    if ((*(uint *)(aiStack_60[0xc] + 0x1c) & 0x1600000) == 0) {
      param_1[3] = 2;
      FUN_00eaecdd();
      FUN_00d9c200();
      FUN_00dfca00();
      return;
    }
LAB_007bc6be:
    if ((*(uint *)(aiStack_60[0xc] + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    aiStack_60[0xb] = FUN_0077b0a0();
    if ((*(uint *)(aiStack_60[0xb] + 0x1c) & 0x1600000) == 0) {
      param_1[3] = 3;
      FUN_00eaecdd();
      FUN_00d9c200();
      FUN_00dfca00();
      return;
    }
LAB_007bcb6d:
    if ((*(uint *)(aiStack_60[0xb] + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    iVar6 = *(int *)(aiStack_60[0xb] + 0x20);
    if ((iVar6 != 0) && (iVar7 = *(int *)(iVar6 + 0x10), 0 < *(int *)(iVar7 + 8))) {
      aiStack_60[9] = *(undefined4 *)(iVar7 + 0xc);
      aiStack_60[8] = 0;
      aiStack_60[10] = 0;
      aiStack_60[7] = iVar7;
      iVar7 = FUN_00cd0850();
      while (iVar7 != 0) {
        FUN_00906aa0();
        FUN_00eaeca8();
        iVar7 = FUN_00cd0850();
      }
      iStack_68 = param_1[5];
      if (*(int *)(*(int *)(iVar6 + 0x10) + 8) == 0) goto LAB_007bcce6;
      iVar6 = *(int *)(*(int *)(iVar6 + 0x10) + 4);
      if (*(int *)(iVar6 + 4) == 0) goto LAB_007bccec;
      uVar3 = *(undefined4 *)(*(int *)(iVar6 + 8) + 8);
      iVar6 = FUN_00eaeae1();
      *(undefined ***)(iVar6 + 8) = &PTR_DAT_01b91278;
      iVar7 = FUN_00eae9a0();
      *(undefined4 *)(iVar7 + 4) = uVar3;
      FUN_00eaebca();
      iVar7 = FUN_00eae9a0();
      *(undefined4 *)(iVar7 + 4) = 0;
      FUN_00eaebca();
      FUN_0077a610(iVar6,&PTR_DAT_01befc64);
      aiStack_60[0xc] = FUN_00975000();
      if ((*(uint *)(aiStack_60[0xc] + 0x1c) & 0x1600000) == 0) {
        param_1[3] = 4;
        FUN_00eaecdd();
        FUN_00d9c200();
        FUN_00dfca00();
        return;
      }
LAB_007bcae1:
      if ((*(uint *)(aiStack_60[0xc] + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
    }
    aiStack_60[0xb] = FUN_0077b0a0();
    if ((*(uint *)(aiStack_60[0xb] + 0x1c) & 0x1600000) == 0) {
      param_1[3] = 5;
      FUN_00eaecdd();
      FUN_00d9c200();
      FUN_00dfca00();
      return;
    }
LAB_007bc44b:
    if ((*(uint *)(aiStack_60[0xb] + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    iVar6 = *(int *)(aiStack_60[0xb] + 0x20);
    if ((iVar6 != 0) && (iVar7 = *(int *)(iVar6 + 0x10), 0 < *(int *)(iVar7 + 8))) {
      aiStack_60[9] = *(undefined4 *)(iVar7 + 0xc);
      aiStack_60[8] = 0;
      aiStack_60[10] = 0;
      aiStack_60[7] = iVar7;
      iVar7 = FUN_00cd0850();
      while (iVar7 != 0) {
        FUN_00906aa0();
        FUN_00eaeca8();
        iVar7 = FUN_00cd0850();
      }
      iStack_64 = param_1[5];
      if (*(int *)(*(int *)(iVar6 + 0x10) + 8) == 0) {
LAB_007bcce6:
                    /* WARNING: Subroutine does not return */
        FUN_009319a0();
      }
      iVar6 = *(int *)(*(int *)(iVar6 + 0x10) + 4);
      if (*(int *)(iVar6 + 4) == 0) {
LAB_007bccec:
                    /* WARNING: Subroutine does not return */
        FUN_009c2bf0();
      }
      uVar3 = *(undefined4 *)(*(int *)(iVar6 + 8) + 8);
      iVar6 = FUN_00eaeae1();
      *(undefined ***)(iVar6 + 8) = &PTR_DAT_01b9125c;
      iVar7 = FUN_00eae9a0(iVar6);
      *(undefined4 *)(iVar7 + 4) = uVar3;
      FUN_00eaebca();
      iVar7 = FUN_00eae9a0();
      *(undefined4 *)(iVar7 + 4) = 0;
      FUN_00eaebca();
      FUN_0077a610(iVar6,&PTR_DAT_01befc64);
      aiStack_60[0xc] = FUN_00975000();
      if ((*(uint *)(aiStack_60[0xc] + 0x1c) & 0x1600000) == 0) {
        param_1[3] = 6;
        FUN_00eaecdd();
        FUN_00d9c200();
        FUN_00dfca00();
        return;
      }
LAB_007bc3bf:
      if ((*(uint *)(aiStack_60[0xc] + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
    }
    aiStack_60[0xb] = FUN_0077b0a0();
    if ((*(uint *)(aiStack_60[0xb] + 0x1c) & 0x1600000) == 0) {
      param_1[3] = 7;
      FUN_00eaecdd();
      FUN_00d9c200();
      FUN_00dfca00();
      return;
    }
LAB_007bc366:
    if ((*(uint *)(aiStack_60[0xb] + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    if (*(int *)(aiStack_60[0xb] + 0x20) != 0) {
      aiStack_60[6] = 0;
      aiStack_60[7] = *(int *)(*(int *)(aiStack_60[0xb] + 0x20) + 0x10);
      aiStack_60[9] = *(undefined4 *)(aiStack_60[7] + 0xc);
      aiStack_60[8] = 0;
      aiStack_60[10] = 0;
      while (iVar7 = FUN_00cd0850(), iVar6 = aiStack_60[8], iVar7 != 0) {
        FUN_00906aa0();
        FUN_00eaeca8();
        if ((aiStack_60[6] == 0) &&
           (((ppuVar2 = *(undefined ***)(iVar6 + 4), ppuVar2 == &PTR_DAT_01bf9b94 ||
             (((ppuVar2[1] == (undefined *)0x2 && (ppuVar2[2] == (undefined *)0x53d763a5)) ||
              (ppuVar2 == &PTR_DAT_01b92dac)))) ||
            ((ppuVar2[1] == (undefined *)0x4 &&
             (ppuVar2[3] == (undefined *)0x6e1ead && ppuVar2[2] == (undefined *)0x68004e)))))) {
          aiStack_60[6] = 1;
        }
      }
      FUN_00906a20();
      FUN_00782420();
LAB_007bc6a4:
      iVar6 = param_1[2];
      param_1[3] = -2;
      param_1[1] = 0;
      param_1[2] = 0;
      if (param_1[7] == 0) {
        if (iVar6 == 0) {
          if (PTR_DAT_01c23d48 != (undefined *)0x0) {
            FUN_00e8f4c2();
          }
        }
        else {
          iVar6 = FUN_00eae9a0();
          *(undefined4 *)(iVar6 + 0x1c) = 0x1000000;
          FUN_00eaec5e();
        }
        FUN_00eaeca8();
        return;
      }
      iVar6 = FUN_00cc8af0();
      if (iVar6 != 0) {
        return;
      }
                    /* WARNING: Subroutine does not return */
      FUN_00931e50();
    }
    FUN_00906a20();
    FUN_00782420();
    param_1[6] = param_1[6] + 1;
  } while( true );
}

