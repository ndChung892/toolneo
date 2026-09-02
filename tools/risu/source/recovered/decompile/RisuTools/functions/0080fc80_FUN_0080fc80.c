/* Address: 0080fc80 | Ghidra name: FUN_0080fc80 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_0080fc80(int *param_1)

{
  undefined8 *puVar1;
  int iVar2;
  undefined8 uVar3;
  undefined1 uVar4;
  int iVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  int iVar8;
  undefined4 extraout_ECX;
  undefined4 extraout_ECX_00;
  int extraout_ECX_01;
  undefined4 extraout_ECX_02;
  undefined4 extraout_ECX_03;
  bool bVar9;
  undefined4 *puVar10;
  undefined4 *puVar11;
  undefined **in_stack_fffffe9c;
  undefined4 local_c8;
  undefined4 uStack_c4;
  undefined4 uStack_c0;
  undefined4 uStack_bc;
  undefined *local_b8;
  undefined4 uStack_b4;
  undefined4 uStack_b0;
  undefined *puStack_ac;
  undefined4 local_a8;
  undefined *local_a4;
  undefined4 local_a0;
  undefined1 local_90 [4];
  undefined4 local_8c [12];
  undefined4 local_5c;
  int local_58;
  uint local_54;
  char local_50;
  undefined8 *local_4c;
  uint local_48;
  undefined4 local_44;
  int local_40;
  uint local_3c;
  char local_38;
  undefined8 *local_34;
  uint local_30;
  int local_2c;
  int local_28;
  int local_24;
  int local_20;
  int local_1c;
  int local_18 [2];
  
  local_c8 = 0;
  uStack_c4 = 0;
  uStack_c0 = 0;
  uStack_bc = 0;
  local_b8 = (undefined *)0x0;
  uStack_b4 = 0;
  uStack_b0 = 0;
  puStack_ac = (undefined *)0x0;
  iVar5 = -0x90;
  do {
    *(undefined4 *)((int)local_18 + iVar5) = 0;
    *(undefined4 *)((int)local_18 + iVar5 + 4) = 0;
    *(undefined4 *)(&stack0xfffffff0 + iVar5) = 0;
    *(undefined4 *)(&stack0xfffffff4 + iVar5) = 0;
    *(undefined4 *)(&stack0xfffffff8 + iVar5) = 0;
    *(undefined4 *)(&stack0xfffffffc + iVar5) = 0;
    *(undefined4 *)(&stack0x00000000 + iVar5) = 0;
    *(undefined4 *)(&stack0x00000004 + iVar5) = 0;
    *(undefined4 *)(&stack0x00000008 + iVar5) = 0;
    *(undefined4 *)(&stack0x0000000c + iVar5) = 0;
    *(undefined4 *)(&stack0x00000010 + iVar5) = 0;
    *(undefined4 *)(&stack0x00000014 + iVar5) = 0;
    iVar5 = iVar5 + 0x30;
  } while (iVar5 != 0);
  iVar2 = *param_1;
  local_18[0] = 0;
  local_18[1] = iVar5;
  switch(param_1[0xb]) {
  case 0:
    local_18[1] = param_1[0x10];
    param_1[0x10] = 0;
    param_1[0xb] = -1;
    local_18[0] = iVar5;
    break;
  case 1:
    local_18[0] = param_1[0x11];
    param_1[0x11] = 0;
    param_1[0xb] = -1;
    goto LAB_008118a0;
  case 2:
    local_1c = param_1[0x12];
    param_1[0x12] = 0;
    param_1[0xb] = -1;
    local_18[0] = iVar5;
    goto LAB_0081178f;
  case 3:
    local_20 = param_1[0x13];
    param_1[0x13] = 0;
    param_1[0xb] = -1;
    local_18[0] = iVar5;
    goto LAB_008116ac;
  case 4:
    local_18[1] = param_1[0x10];
    param_1[0x10] = 0;
    param_1[0xb] = -1;
    local_18[0] = 0;
    goto LAB_008115fa;
  case 5:
    local_18[0] = param_1[0x11];
    param_1[0x11] = 0;
    param_1[0xb] = -1;
    goto LAB_0081157b;
  case 6:
    local_18[0] = param_1[0x11];
    param_1[0x11] = 0;
    param_1[0xb] = -1;
    goto LAB_00811482;
  case 7:
    local_18[0] = param_1[0x11];
    param_1[0x11] = 0;
    param_1[0xb] = -1;
    goto LAB_008113f5;
  case 8:
    local_24 = param_1[0x14];
    param_1[0x14] = 0;
    param_1[0xb] = -1;
    local_18[0] = 0;
    goto LAB_0081134a;
  case 9:
    local_18[0] = param_1[0x11];
    param_1[0x11] = 0;
    param_1[0xb] = -1;
    goto LAB_008112f2;
  case 10:
    local_18[0] = param_1[0x11];
    param_1[0x11] = 0;
    param_1[0xb] = -1;
    goto LAB_008112bc;
  case 0xb:
    local_18[0] = param_1[0x11];
    param_1[0x11] = 0;
    param_1[0xb] = -1;
    goto LAB_00811239;
  case 0xc:
    local_28 = param_1[0x15];
    param_1[0x15] = 0;
    param_1[0xb] = -1;
    local_18[0] = iVar5;
    goto LAB_008111e9;
  case 0xd:
    local_2c = param_1[0x16];
    param_1[0x16] = 0;
    param_1[0xb] = -1;
    local_18[0] = iVar5;
    goto LAB_00811138;
  case 0xe:
    local_2c = param_1[0x16];
    param_1[0x16] = 0;
    param_1[0xb] = -1;
    local_18[0] = iVar5;
    goto LAB_008110af;
  case 0xf:
    local_18[0] = param_1[0x11];
    param_1[0x11] = 0;
    param_1[0xb] = -1;
    goto LAB_00811036;
  case 0x10:
    local_2c = param_1[0x16];
    param_1[0x16] = 0;
    param_1[0xb] = -1;
    local_18[0] = iVar5;
    goto LAB_00810ff7;
  case 0x11:
    local_18[0] = param_1[0x11];
    param_1[0x11] = 0;
    param_1[0xb] = -1;
    goto LAB_00810fc1;
  case 0x12:
    local_2c = param_1[0x16];
    param_1[0x16] = 0;
    param_1[0xb] = -1;
    local_18[0] = 0;
    goto LAB_00810f50;
  case 0x13:
    local_18[0] = param_1[0x11];
    param_1[0x11] = 0;
    param_1[0xb] = -1;
    goto LAB_00810ed4;
  case 0x14:
    local_2c = param_1[0x16];
    param_1[0x16] = 0;
    param_1[0xb] = -1;
    local_18[0] = iVar5;
    goto LAB_00810e9b;
  case 0x15:
    local_2c = param_1[0x16];
    param_1[0x16] = 0;
    param_1[0xb] = -1;
    local_18[0] = iVar5;
    goto LAB_00810e64;
  case 0x16:
    local_2c = param_1[0x16];
    param_1[0x16] = 0;
    param_1[0xb] = -1;
    local_18[0] = iVar5;
    goto LAB_00810e2d;
  case 0x17:
    local_2c = param_1[0x16];
    param_1[0x16] = 0;
    param_1[0xb] = -1;
    local_18[0] = iVar5;
    goto LAB_00810df6;
  case 0x18:
    local_2c = param_1[0x16];
    param_1[0x16] = 0;
    param_1[0xb] = -1;
    local_18[0] = iVar5;
    goto LAB_00810dbf;
  case 0x19:
    local_2c = param_1[0x16];
    param_1[0x16] = 0;
    param_1[0xb] = -1;
    local_18[0] = iVar5;
    goto LAB_00810d88;
  case 0x1a:
    local_18[0] = param_1[0x11];
    param_1[0x11] = 0;
    param_1[0xb] = -1;
    goto LAB_00810d0b;
  case 0x1b:
    local_18[0] = param_1[0x11];
    param_1[0x11] = 0;
    param_1[0xb] = -1;
    goto LAB_00810cdc;
  case 0x1c:
    local_2c = param_1[0x16];
    param_1[0x16] = 0;
    param_1[0xb] = -1;
    goto LAB_00810c54;
  case 0x1d:
    local_18[0] = param_1[0x11];
    param_1[0x11] = 0;
    param_1[0xb] = -1;
    goto LAB_00810bd7;
  case 0x1e:
    local_2c = param_1[0x16];
    param_1[0x16] = 0;
    param_1[0xb] = -1;
    goto LAB_00810b25;
  case 0x1f:
    local_18[0] = param_1[0x11];
    param_1[0x11] = 0;
    param_1[0xb] = -1;
    goto LAB_00810aa2;
  case 0x20:
    local_28 = param_1[0x15];
    param_1[0x15] = 0;
    param_1[0xb] = -1;
    local_18[0] = iVar5;
    goto LAB_00810a52;
  case 0x21:
    local_18[0] = param_1[0x11];
    param_1[0x11] = 0;
    param_1[0xb] = -1;
    goto LAB_008109d5;
  case 0x22:
    local_2c = param_1[0x16];
    param_1[0x16] = 0;
    param_1[0xb] = -1;
    goto LAB_0081091a;
  case 0x23:
    local_18[0] = param_1[0x11];
    param_1[0x11] = 0;
    param_1[0xb] = -1;
    goto LAB_0081089d;
  case 0x24:
    local_2c = param_1[0x16];
    param_1[0x16] = 0;
    param_1[0xb] = -1;
    goto LAB_00810795;
  case 0x25:
    local_18[0] = param_1[0x11];
    param_1[0x11] = 0;
    param_1[0xb] = -1;
    goto LAB_00810708;
  case 0x26:
    local_24 = param_1[0x14];
    param_1[0x14] = 0;
    param_1[0xb] = -1;
    local_18[0] = iVar5;
    goto LAB_008105e2;
  case 0x27:
    local_18[0] = param_1[0x11];
    param_1[0x11] = 0;
    param_1[0xb] = -1;
    local_18[1] = 0;
    goto LAB_0081055f;
  case 0x28:
    local_18[1] = param_1[0x10];
    param_1[0x10] = 0;
    param_1[0xb] = -1;
    local_18[0] = iVar5;
    goto LAB_008104c8;
  case 0x29:
    local_1c = param_1[0x12];
    param_1[0x12] = 0;
    param_1[0xb] = -1;
    local_18[0] = iVar5;
    goto LAB_00810486;
  case 0x2a:
    local_18[1] = param_1[0x10];
    param_1[0x10] = 0;
    param_1[0xb] = -1;
    goto LAB_008103e7;
  case 0x2b:
  case 0x2c:
    local_18[0] = param_1[0x11];
    param_1[0x11] = 0;
    param_1[0xb] = -1;
    goto LAB_0081037e;
  case 0x2d:
    local_2c = param_1[0x16];
    param_1[0x16] = 0;
    param_1[0xb] = -1;
    goto LAB_008102eb;
  case 0x2e:
    local_18[0] = param_1[0x11];
    param_1[0x11] = 0;
    param_1[0xb] = -1;
    goto LAB_0081026b;
  case 0x2f:
    local_18[0] = param_1[0x11];
    param_1[0x11] = 0;
    param_1[0xb] = -1;
    goto LAB_008101f2;
  case 0x30:
    local_24 = param_1[0x14];
    param_1[0x14] = 0;
    param_1[0xb] = -1;
    goto LAB_00810167;
  case 0x31:
    local_18[0] = param_1[0x11];
    param_1[0x11] = 0;
    param_1[0xb] = -1;
    goto LAB_008100ee;
  case 0x32:
    local_24 = param_1[0x14];
    param_1[0x14] = 0;
    param_1[0xb] = -1;
    goto LAB_00810068;
  case 0x33:
    local_24 = param_1[0x14];
    param_1[0x14] = 0;
    param_1[0xb] = -1;
    goto LAB_0081002d;
  case 0x34:
    local_18[0] = param_1[0x11];
    param_1[0x11] = 0;
    param_1[0xb] = -1;
    goto LAB_0080ffa2;
  case 0x35:
    local_18[0] = param_1[0x11];
    param_1[0x11] = 0;
    param_1[0xb] = -1;
    goto LAB_0080ff7e;
  case 0x36:
    local_24 = param_1[0x14];
    param_1[0x14] = 0;
    param_1[0xb] = -1;
    goto LAB_0080fef3;
  case 0x37:
    local_18[0] = param_1[0x11];
    param_1[0x11] = 0;
    param_1[0xb] = -1;
    goto LAB_0080fe18;
  case 0x38:
    local_18[0] = param_1[0x11];
    param_1[0x11] = 0;
    param_1[0xb] = -1;
    goto LAB_0080fdf9;
  case 0x39:
    local_18[1] = param_1[0x10];
    param_1[0x10] = 0;
    param_1[0xb] = -1;
    goto LAB_0080fd60;
  case 0x3a:
  case 0x3b:
    local_18[0] = param_1[0x11];
    param_1[0x11] = 0;
    param_1[0xb] = -1;
    goto LAB_0080fcf7;
  case 0x3c:
    local_2c = param_1[0x16];
    param_1[0x16] = 0;
    param_1[0xb] = -1;
    goto LAB_008135f8;
  case 0x3d:
    local_18[0] = param_1[0x11];
    param_1[0x11] = 0;
    param_1[0xb] = -1;
    goto LAB_00813573;
  case 0x3e:
    local_18[0] = param_1[0x11];
    param_1[0x11] = 0;
    param_1[0xb] = -1;
    goto LAB_008134fa;
  case 0x3f:
    local_24 = param_1[0x14];
    param_1[0x14] = 0;
    param_1[0xb] = -1;
    local_18[0] = 0;
    goto LAB_00813473;
  case 0x40:
    local_18[0] = param_1[0x11];
    param_1[0x11] = 0;
    param_1[0xb] = -1;
    goto LAB_00813451;
  case 0x41:
    local_24 = param_1[0x14];
    param_1[0x14] = 0;
    param_1[0xb] = -1;
    local_18[0] = iVar5;
    goto LAB_00813409;
  case 0x42:
    local_24 = param_1[0x14];
    param_1[0x14] = 0;
    param_1[0xb] = -1;
    local_18[0] = 0;
    goto LAB_008133ce;
  case 0x43:
    local_18[0] = param_1[0x11];
    param_1[0x11] = 0;
    param_1[0xb] = -1;
    goto LAB_0081333b;
  case 0x44:
    local_18[0] = param_1[0x11];
    param_1[0x11] = 0;
    param_1[0xb] = -1;
    goto LAB_0081330f;
  default:
    local_18[0] = iVar5;
    FUN_00787780();
    param_1[0xc] = 0;
    goto LAB_008119bf;
  }
  do {
    if ((*(uint *)(local_18[1] + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    FUN_00eaecdd();
    local_18[0] = FUN_00975000();
    if ((*(uint *)(local_18[0] + 0x1c) & 0x1600000) == 0) {
      param_1[0xb] = 1;
      FUN_00eaecdd();
      FUN_00da47a0();
      FUN_00dfc9c0();
      return;
    }
LAB_008118a0:
    if ((*(uint *)(local_18[0] + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    if ((param_1[6] != 0) && (*(char *)(param_1[6] + 0x69) == '\0')) {
      local_1c = FUN_0077ad90();
      if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
        param_1[0xb] = 2;
        FUN_00eaecdd();
        FUN_00da47a0();
        FUN_00dfca00();
        return;
      }
LAB_0081178f:
      if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      if (*(int *)(DAT_01c28a6c + 8) == 0) {
        FUN_00eae9a0();
        FUN_00e9aefb(in_stack_fffffe9c);
        in_stack_fffffe9c = (undefined **)0x8117f8;
        FUN_00eaebef();
      }
      FUN_00e4e4a0(&PTR_DAT_01544bfc,local_90);
      FUN_00eaebca();
      if (*(int *)(param_1[1] + 4) == 0) {
        FUN_00787780();
        FUN_00787620();
        FUN_00792d90();
        local_18[1] = FUN_00cc8cb0();
        iVar5 = FUN_00b6fc00();
        if (iVar5 == 0) {
          param_1[0xb] = 0x39;
          FUN_00eaecdd();
          FUN_00e39580(&PTR_PTR_01554014,param_1);
          return;
        }
LAB_0080fd60:
        FUN_00cce6b0();
        FUN_00eaeca8();
        iVar5 = FUN_00778e50();
        if (iVar5 == 0x1e) goto LAB_0080fcff;
        FUN_007876b0();
        FUN_00787840(0,0,0,0);
        local_18[0] = FUN_00973a50();
        iVar5 = FUN_0099db90();
        if (iVar5 == 0) {
          param_1[0xb] = 0x3a;
          FUN_00eaecdd();
          FUN_00dfcae0();
          return;
        }
LAB_0080fcf7:
        while( true ) {
          FUN_0099dba0();
LAB_0080fcff:
          FUN_00787620();
          FUN_00792da0();
          local_2c = FUN_00b6e1a0();
          iVar5 = FUN_00b6fc00();
          if (iVar5 == 0) {
            param_1[0xb] = 0x3c;
            FUN_00eaecdd();
            FUN_00e17950();
            return;
          }
LAB_008135f8:
          iVar5 = FUN_00b6fc70();
          if (iVar5 != 0) break;
          FUN_00787620();
          FUN_00792d20();
          FUN_007876f0();
          local_18[0] = FUN_00973a50();
          iVar5 = FUN_0099db90();
          if (iVar5 == 0) {
            param_1[0xb] = 0x3b;
            FUN_00eaecdd();
            FUN_00dfcae0();
            return;
          }
        }
        FUN_007877c0();
        local_18[0] = FUN_00973a50();
        iVar5 = FUN_0099db90();
        if (iVar5 == 0) {
          param_1[0xb] = 0x3d;
          FUN_00eaecdd();
          FUN_00dfcae0();
          return;
        }
LAB_00813573:
        FUN_0099dba0();
        FUN_00787780();
        param_1[0xd] = 0;
        while( true ) {
          FUN_00787620();
          FUN_00792e00();
          local_24 = FUN_00cc8cb0();
          iVar5 = FUN_00b6fc00();
          if (iVar5 == 0) {
            param_1[0xb] = 0x41;
            FUN_00eaecdd();
            FUN_00e39580(&PTR_PTR_01553bc4,param_1);
            return;
          }
LAB_00813409:
          iVar5 = FUN_00cce6b0();
          if ((iVar5 != 0) || (4 < param_1[0xd])) break;
          while( true ) {
            FUN_00787620();
            FUN_00792e00();
            local_24 = FUN_00cc8cb0();
            iVar5 = FUN_00b6fc00();
            if (iVar5 == 0) {
              param_1[0xb] = 0x3f;
              FUN_00eaecdd();
              FUN_00e39580(&PTR_PTR_01553bc4,param_1);
              return;
            }
LAB_00813473:
            iVar5 = FUN_00cce6b0();
            if (iVar5 != 0) break;
            FUN_00787620();
            FUN_00792c80();
            FUN_007876f0();
            local_18[0] = FUN_00973a50();
            iVar5 = FUN_0099db90();
            if (iVar5 == 0) {
              param_1[0xb] = 0x3e;
              FUN_00eaecdd();
              FUN_00dfcae0();
              return;
            }
LAB_008134fa:
            FUN_0099dba0();
          }
          FUN_00787620();
          FUN_00792d60(0,0);
          FUN_007876f0();
          local_18[0] = FUN_00973a50();
          iVar5 = FUN_0099db90();
          if (iVar5 == 0) {
            param_1[0xb] = 0x40;
            FUN_00eaecdd();
            FUN_00dfcae0();
            return;
          }
LAB_00813451:
          FUN_0099dba0();
          param_1[0xd] = param_1[0xd] + 1;
        }
        if (4 < param_1[0xd]) {
          FUN_007876b0();
          goto LAB_008136bc;
        }
        FUN_00787620();
        FUN_00792e00();
        local_24 = FUN_00cc8cb0();
        iVar5 = FUN_00b6fc00();
        if (iVar5 == 0) {
          param_1[0xb] = 0x42;
          FUN_00eaecdd();
          FUN_00e39580(&PTR_PTR_01553bc4,param_1);
          return;
        }
LAB_008133ce:
        FUN_00cce6b0();
        FUN_00eaeca8();
        if (param_1[5] != 0) {
          FUN_00777680();
          if (*(int *)(DAT_01c28a6c + 0x24) == 0) {
            FUN_00eae9a0();
            FUN_00e9af72(in_stack_fffffe9c);
            in_stack_fffffe9c = (undefined **)0x811c00;
            FUN_00eaebef();
          }
          FUN_00e4e370();
        }
        FUN_00eaeca8();
        FUN_007876f0();
        local_18[0] = FUN_00973a50();
        iVar5 = FUN_0099db90();
        if (iVar5 == 0) {
          param_1[0xb] = 0x43;
          FUN_00eaecdd();
          FUN_00dfcae0();
          return;
        }
LAB_0081333b:
        FUN_0099dba0();
        if (param_1[10] == 0) {
          FUN_007876b0();
          goto LAB_008136bc;
        }
        FUN_00787620();
        uVar6 = FUN_00777670();
        FUN_00792d60(0,uVar6);
        FUN_007876f0();
        local_18[0] = FUN_00973a50();
        iVar5 = FUN_0099db90();
        if (iVar5 == 0) {
          param_1[0xb] = 0x44;
          FUN_00eaecdd();
          FUN_00dfcae0();
          return;
        }
LAB_0081330f:
        FUN_0099dba0();
        param_1[10] = 0;
      }
      else {
        iVar5 = FUN_00772d90();
        param_1[0xc] = iVar5;
        if ((param_1[0xc] == -1) || (10 < param_1[0xc])) goto LAB_008136bc;
        iVar5 = FUN_00e4e3a0();
        if (*(char *)(*(int *)(param_1[1] + 4) + 0x3c) == '\0') {
          if (iVar5 == 0) {
            bVar9 = false;
          }
          else {
            bVar9 = *(int *)(iVar5 + 0x10) <= *(int *)(iVar5 + 0x14);
          }
        }
        else {
          bVar9 = true;
        }
        *(bool *)(param_1 + 0xe) = bVar9;
        if ((char)param_1[0xe] == '\0') {
          if (*(int *)(*(int *)(param_1[1] + 4) + 0x1c) != 0) {
            FUN_00e4e3a0();
          }
          FUN_00eaeca8();
          if (((param_1[7] != 0) && (iVar5 = *(int *)(param_1[7] + 4), iVar5 != 0)) &&
             (*(int *)(iVar5 + 4) != 0)) {
            iVar5 = FUN_00909ad0();
            if (iVar5 == 0) {
              FUN_0094bfb0();
              FUN_0094c500();
              if (PTR_FUN_01c222d4 != (undefined *)0x0) {
                FUN_00e8cd95();
              }
              if (DAT_01c222d8 == '\0') {
                FUN_00dfdf80();
              }
              else {
                FUN_00956500();
              }
              FUN_0094bfb0();
              FUN_0094c500();
              if (DAT_01c222d8 == '\0') {
                FUN_00dfdf80();
              }
              else {
                FUN_00956500();
              }
              iVar5 = FUN_00909ad0();
              if (iVar5 == 0) goto LAB_00811fbe;
            }
            local_20 = FUN_0077b0f0(&PTR_DAT_01b39360,&PTR_DAT_01b39360);
            if ((*(uint *)(local_20 + 0x1c) & 0x1600000) == 0) {
              param_1[0xb] = 3;
              FUN_00eaecdd();
              FUN_00da47a0();
              FUN_00dfca00();
              return;
            }
LAB_008116ac:
            if ((*(uint *)(local_20 + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            if (*(int *)(local_20 + 0x20) != 0) {
              iVar5 = FUN_00eae9a0();
              FUN_00a51650();
              FUN_00a512d0();
              FUN_009097a0();
              FUN_00eaebca();
              *(undefined ***)(extraout_ECX_01 + 8) = &PTR_DAT_01b39360;
              *(undefined ***)(extraout_ECX_01 + 0xc) = &PTR_DAT_01b39360;
              iVar8 = FUN_00909ad0();
              if ((iVar8 == 0) && (iVar8 = FUN_00909ad0(), iVar8 == 0)) {
                iVar8 = FUN_00909ad0();
                if ((iVar8 == 0) && (iVar8 = FUN_00909ad0(), iVar8 == 0)) {
                  iVar8 = FUN_00909ad0();
                  if ((iVar8 == 0) && (iVar8 = FUN_00909ad0(), iVar8 == 0)) {
                    iVar8 = FUN_00909ad0();
                    if ((iVar8 == 0) && (iVar8 = FUN_00909ad0(), iVar8 == 0)) {
                      iVar8 = FUN_00909ad0();
                      if ((iVar8 == 0) && (iVar8 = FUN_00909ad0(), iVar8 == 0)) {
                        iVar8 = FUN_00909ad0();
                        if ((iVar8 != 0) || (iVar8 = FUN_00909ad0(), iVar8 != 0)) {
                          *(undefined ***)(iVar5 + 8) = &PTR_DAT_01bf92a4;
                          *(undefined ***)(iVar5 + 0xc) = &PTR_DAT_01bc82c4;
                        }
                      }
                      else {
                        *(undefined ***)(iVar5 + 8) = &PTR_DAT_01bf9bbc;
                        *(undefined ***)(iVar5 + 0xc) = &PTR_DAT_01b88250;
                      }
                    }
                    else {
                      *(undefined ***)(iVar5 + 8) = &PTR_DAT_01bf925c;
                      *(undefined ***)(iVar5 + 0xc) = &PTR_DAT_01b7ae6c;
                    }
                  }
                  else {
                    *(undefined ***)(iVar5 + 8) = &PTR_DAT_01bfa450;
                    *(undefined ***)(iVar5 + 0xc) = &PTR_DAT_01b88e58;
                  }
                }
                else {
                  *(undefined ***)(iVar5 + 8) = &PTR_DAT_01bfa664;
                  *(undefined ***)(iVar5 + 0xc) = &PTR_DAT_01b884b4;
                }
              }
              else {
                *(undefined ***)(iVar5 + 8) = &PTR_DAT_01bfaddc;
                *(undefined ***)(iVar5 + 0xc) = &PTR_DAT_01b54234;
              }
              FUN_00eae9a0();
              FUN_00e9afa5(in_stack_fffffe9c);
              in_stack_fffffe9c = &PTR_DAT_01543ec4;
              iVar5 = FUN_00e4d760(&PTR_DAT_01543ec4);
              if (iVar5 != 0) {
                *(undefined1 *)(param_1 + 0xe) = 1;
                FUN_00906aa0(&PTR_DAT_01bde234);
                in_stack_fffffe9c = (undefined **)0x811fbe;
                FUN_007876b0();
              }
            }
          }
LAB_00811fbe:
          param_1[7] = 0;
        }
        if ((char)param_1[0xe] == '\0') {
          param_1[0xc] = param_1[0xc] + -1;
          if (*(int *)(param_1[1] + 4) == 0) {
            iVar5 = 0;
          }
          else {
            iVar5 = FUN_00e4e3a0();
          }
          if (iVar5 != 0) {
            if (*(int *)(iVar5 + 0xc) == 0x148d) {
              *(undefined4 *)(iVar2 + 0x20) = 0xc;
            }
            else {
              iVar8 = FUN_00909ad0();
              if (iVar8 == 0) {
                FUN_0094bfb0();
                FUN_0094c500();
                if (PTR_FUN_01c222d4 != (undefined *)0x0) {
                  FUN_00e8cd95();
                }
                if (DAT_01c222d8 == '\0') {
                  FUN_00dfdf80();
                }
                else {
                  FUN_00956500();
                }
                FUN_0094bfb0();
                FUN_0094c500();
                if (DAT_01c222d8 == '\0') {
                  FUN_00dfdf80();
                }
                else {
                  FUN_00956500();
                }
                FUN_0094bfb0();
                FUN_0094c500();
                if (DAT_01c222d8 == '\0') {
                  FUN_00dfdf80();
                }
                else {
                  FUN_00956500();
                }
                iVar8 = FUN_00909ad0();
                if (iVar8 == 0) {
                  iVar5 = *(int *)(iVar5 + 0xc);
                  if (iVar5 == 2) {
                    *(undefined4 *)(iVar2 + 0x20) = 0;
                  }
                  else if (iVar5 == 0x9a) {
                    *(undefined4 *)(iVar2 + 0x20) = 1;
                  }
                  else if (iVar5 == 0x2c) {
                    *(undefined4 *)(iVar2 + 0x20) = 4;
                  }
                  else if (iVar5 == 0x6d) {
                    *(undefined4 *)(iVar2 + 0x20) = 2;
                  }
                  else if (iVar5 == 0x78) {
                    *(undefined4 *)(iVar2 + 0x20) = 3;
                  }
                  else {
                    *(undefined4 *)(iVar2 + 0x20) = 0xb;
                  }
                  goto LAB_00812342;
                }
              }
              *(undefined4 *)(iVar2 + 0x20) = 0xd;
            }
          }
LAB_00812342:
          switch(*(undefined4 *)(iVar2 + 0x20)) {
          case 0:
            FUN_007876b0();
            uVar6 = FUN_00eae9a0();
            FUN_00e9aea6(in_stack_fffffe9c);
            in_stack_fffffe9c = (undefined **)0x1;
            local_2c = FUN_00787920(0,0,0,0,0,0,0,uVar6,1);
            if ((*(uint *)(local_2c + 0x1c) & 0x1600000) == 0) {
              param_1[0xb] = 0x15;
              FUN_00eaecdd();
              FUN_00da47a0();
              FUN_00dfc9c0();
              return;
            }
LAB_00810e64:
            if ((*(uint *)(local_2c + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            break;
          case 1:
            FUN_007876b0();
            uVar6 = FUN_00eae9a0();
            FUN_00e9aeb7(in_stack_fffffe9c);
            in_stack_fffffe9c = (undefined **)0x1;
            local_2c = FUN_00787920(0,0,0,0,0,0,0,uVar6,1);
            if ((*(uint *)(local_2c + 0x1c) & 0x1600000) == 0) {
              param_1[0xb] = 0x16;
              FUN_00eaecdd();
              FUN_00da47a0();
              FUN_00dfc9c0();
              return;
            }
LAB_00810e2d:
            if ((*(uint *)(local_2c + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            break;
          case 2:
            FUN_007876b0();
            uVar6 = FUN_00eae9a0();
            FUN_00e9aed9(in_stack_fffffe9c);
            in_stack_fffffe9c = (undefined **)0x1;
            local_2c = FUN_00787920(0,0,0,0,0,0,0,uVar6,1);
            if ((*(uint *)(local_2c + 0x1c) & 0x1600000) == 0) {
              param_1[0xb] = 0x18;
              FUN_00eaecdd();
              FUN_00da47a0();
              FUN_00dfc9c0();
              return;
            }
LAB_00810dbf:
            if ((*(uint *)(local_2c + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            break;
          case 3:
            FUN_007876b0();
            uVar6 = FUN_00eae9a0();
            FUN_00e9aeea(in_stack_fffffe9c);
            in_stack_fffffe9c = (undefined **)0x1;
            local_2c = FUN_00787920(0,0,0,0,0,0,0,uVar6,1);
            if ((*(uint *)(local_2c + 0x1c) & 0x1600000) == 0) {
              param_1[0xb] = 0x19;
              FUN_00eaecdd();
              FUN_00da47a0();
              FUN_00dfc9c0();
              return;
            }
LAB_00810d88:
            if ((*(uint *)(local_2c + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            break;
          case 4:
            FUN_007876b0();
            uVar6 = FUN_00eae9a0();
            FUN_00e9aec8(in_stack_fffffe9c);
            in_stack_fffffe9c = (undefined **)0x1;
            local_2c = FUN_00787920(0,0,0,0,0,0,0,uVar6,1);
            if ((*(uint *)(local_2c + 0x1c) & 0x1600000) == 0) {
              param_1[0xb] = 0x17;
              FUN_00eaecdd();
              FUN_00da47a0();
              FUN_00dfc9c0();
              return;
            }
LAB_00810df6:
            if ((*(uint *)(local_2c + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            break;
          case 0xb:
            FUN_00eae9a0();
            FUN_00eaeca8();
            FUN_00772e10();
            FUN_00eaebca();
            if (*(int *)(param_1[4] + 4) != 0) {
              FUN_00906a20();
              FUN_007876b0();
              local_18[0] = FUN_00787840(0,0,0,0);
              if ((*(uint *)(local_18[0] + 0x1c) & 0x1600000) == 0) {
                param_1[0xb] = 0x1a;
                FUN_00eaecdd();
                FUN_00da47a0();
                FUN_00dfc9c0();
                return;
              }
LAB_00810d0b:
              if ((*(uint *)(local_18[0] + 0x1c) & 0x11000000) != 0x1000000) {
                FUN_0099dbc0();
              }
              while( true ) {
                local_2c = FUN_0077ac40();
                if ((*(uint *)(local_2c + 0x1c) & 0x1600000) == 0) {
                  param_1[0xb] = 0x1c;
                  FUN_00eaecdd();
                  FUN_00da47a0();
                  FUN_00dfc9c0();
                  return;
                }
LAB_00810c54:
                if ((*(uint *)(local_2c + 0x1c) & 0x11000000) != 0x1000000) {
                  FUN_0099dbc0();
                }
                if (*(char *)(local_2c + 0x20) == '\0') break;
                local_18[0] = FUN_00975000();
                if ((*(uint *)(local_18[0] + 0x1c) & 0x1600000) == 0) {
                  param_1[0xb] = 0x1b;
                  FUN_00eaecdd();
                  FUN_00da47a0();
                  FUN_00dfc9c0();
                  return;
                }
LAB_00810cdc:
                if ((*(uint *)(local_18[0] + 0x1c) & 0x11000000) != 0x1000000) {
                  FUN_0099dbc0();
                }
              }
              while( true ) {
                local_2c = FUN_0077ac00();
                if ((*(uint *)(local_2c + 0x1c) & 0x1600000) == 0) {
                  param_1[0xb] = 0x1e;
                  FUN_00eaecdd();
                  FUN_00da47a0();
                  FUN_00dfc9c0();
                  return;
                }
LAB_00810b25:
                if ((*(uint *)(local_2c + 0x1c) & 0x11000000) != 0x1000000) {
                  FUN_0099dbc0();
                }
                if (*(char *)(local_2c + 0x20) != '\0') break;
                uStack_b4 = *(undefined4 *)(*(int *)(iVar2 + 0x14) + 8);
                FUN_00eaeae1();
                iVar5 = FUN_00eae9a0();
                *(undefined4 *)(iVar5 + 4) = 0;
                FUN_00eaebca();
                FUN_0077a610(extraout_ECX_02,&PTR_DAT_01be70d8);
                local_18[0] = FUN_00975000();
                if ((*(uint *)(local_18[0] + 0x1c) & 0x1600000) == 0) {
                  param_1[0xb] = 0x1d;
                  FUN_00eaecdd();
                  FUN_00da47a0();
                  FUN_00dfc9c0();
                  return;
                }
LAB_00810bd7:
                if ((*(uint *)(local_18[0] + 0x1c) & 0x11000000) != 0x1000000) {
                  FUN_0099dbc0();
                }
              }
              local_18[0] = FUN_007877c0();
              if ((*(uint *)(local_18[0] + 0x1c) & 0x1600000) == 0) {
                param_1[0xb] = 0x1f;
                FUN_00eaecdd();
                FUN_00da47a0();
                FUN_00dfc9c0();
                return;
              }
LAB_00810aa2:
              if ((*(uint *)(local_18[0] + 0x1c) & 0x11000000) != 0x1000000) {
                FUN_0099dbc0();
              }
              local_28 = FUN_0077acc0();
              if ((*(uint *)(local_28 + 0x1c) & 0x1600000) == 0) {
                param_1[0xb] = 0x20;
                FUN_00eaecdd();
                FUN_00da47a0();
                FUN_00dfca00();
                return;
              }
LAB_00810a52:
              if ((*(uint *)(local_28 + 0x1c) & 0x11000000) != 0x1000000) {
                FUN_0099dbc0();
              }
              if (*(int *)(local_28 + 0x20) != 0) {
                FUN_00eae9a0();
                FUN_00e9afd8(in_stack_fffffe9c);
                in_stack_fffffe9c = &local_b8;
                FUN_00e4e4a0();
              }
              FUN_00eaeca8();
              if (param_1[9] != 0) {
                while( true ) {
                  local_2c = FUN_0077af00();
                  if ((*(uint *)(local_2c + 0x1c) & 0x1600000) == 0) {
                    param_1[0xb] = 0x22;
                    FUN_00eaecdd();
                    FUN_00da47a0();
                    FUN_00dfc9c0();
                    return;
                  }
LAB_0081091a:
                  if ((*(uint *)(local_2c + 0x1c) & 0x11000000) != 0x1000000) {
                    FUN_0099dbc0();
                  }
                  if (*(char *)(local_2c + 0x20) != '\0') break;
                  FUN_00906a20();
                  FUN_00782420();
                  local_18[0] = FUN_00975000();
                  if ((*(uint *)(local_18[0] + 0x1c) & 0x1600000) == 0) {
                    param_1[0xb] = 0x21;
                    FUN_00eaecdd();
                    FUN_00da47a0();
                    FUN_00dfc9c0();
                    return;
                  }
LAB_008109d5:
                  if ((*(uint *)(local_18[0] + 0x1c) & 0x11000000) != 0x1000000) {
                    FUN_0099dbc0();
                  }
                }
                while( true ) {
                  local_2c = FUN_0077ac00();
                  if ((*(uint *)(local_2c + 0x1c) & 0x1600000) == 0) {
                    param_1[0xb] = 0x24;
                    FUN_00eaecdd();
                    FUN_00da47a0();
                    FUN_00dfc9c0();
                    return;
                  }
LAB_00810795:
                  if ((*(uint *)(local_2c + 0x1c) & 0x11000000) != 0x1000000) {
                    FUN_0099dbc0();
                  }
                  if (*(char *)(local_2c + 0x20) == '\0') break;
                  uStack_bc = *(undefined4 *)(*(int *)(iVar2 + 0x14) + 8);
                  FUN_00eaeae1();
                  iVar5 = FUN_00eae9a0();
                  *(undefined4 *)(iVar5 + 4) = 0;
                  FUN_00eaebca();
                  FUN_0077a610(extraout_ECX_03,&PTR_DAT_01be70bc);
                  local_18[0] = FUN_00975000();
                  if ((*(uint *)(local_18[0] + 0x1c) & 0x1600000) == 0) {
                    param_1[0xb] = 0x23;
                    FUN_00eaecdd();
                    FUN_00da47a0();
                    FUN_00dfc9c0();
                    return;
                  }
LAB_0081089d:
                  if ((*(uint *)(local_18[0] + 0x1c) & 0x11000000) != 0x1000000) {
                    FUN_0099dbc0();
                  }
                }
                do {
                  uVar6 = *(undefined4 *)(param_1[9] + 0x28);
                  uStack_c0 = *(undefined4 *)(*(int *)(iVar2 + 0x14) + 8);
                  uVar7 = FUN_00eaeae1();
                  iVar5 = FUN_00eae9a0();
                  *(undefined4 *)(iVar5 + 4) = uVar6;
                  FUN_00eaebca();
                  iVar5 = FUN_00eae9a0();
                  *(undefined4 *)(iVar5 + 4) = 0;
                  FUN_00eaebca();
                  FUN_0077a610(uVar7,&PTR_DAT_01be3a98);
                  local_18[0] = FUN_00975000();
                  if ((*(uint *)(local_18[0] + 0x1c) & 0x1600000) == 0) {
                    param_1[0xb] = 0x25;
                    FUN_00eaecdd();
                    FUN_00da47a0();
                    FUN_00dfc9c0();
                    return;
                  }
LAB_00810708:
                  if ((*(uint *)(local_18[0] + 0x1c) & 0x11000000) != 0x1000000) {
                    FUN_0099dbc0();
                  }
                  local_24 = FUN_0077b0a0();
                  if ((*(uint *)(local_24 + 0x1c) & 0x1600000) == 0) {
                    param_1[0xb] = 0x26;
                    FUN_00eaecdd();
                    FUN_00da47a0();
                    FUN_00dfca00();
                    return;
                  }
LAB_008105e2:
                  if ((*(uint *)(local_24 + 0x1c) & 0x11000000) != 0x1000000) {
                    FUN_0099dbc0();
                  }
                  FUN_00eaecdd();
                } while (param_1[5] == 0);
                uStack_c4 = *(undefined4 *)(*(int *)(iVar2 + 0x14) + 8);
                iVar5 = FUN_00eaeae1();
                *(undefined ***)(iVar5 + 8) = &PTR_DAT_01b91278;
                iVar5 = FUN_00eae9a0();
                *(undefined4 *)(iVar5 + 4) = 0;
                FUN_00eaebca();
                iVar5 = FUN_00eae9a0();
                *(undefined4 *)(iVar5 + 4) = 0;
                FUN_00eaebca();
                FUN_0077a610(extraout_ECX,&PTR_DAT_01befc64);
                param_1[0xd] = 0;
                while (param_1[0xd] < 10) {
                  local_18[0] = FUN_00975000();
                  if ((*(uint *)(local_18[0] + 0x1c) & 0x1600000) == 0) {
                    param_1[0xb] = 0x27;
                    FUN_00eaecdd();
                    FUN_00da47a0();
                    FUN_00dfc9c0();
                    return;
                  }
LAB_0081055f:
                  if ((*(uint *)(local_18[0] + 0x1c) & 0x11000000) != 0x1000000) {
                    FUN_0099dbc0();
                  }
                  local_18[1] = FUN_0077abc0();
                  if ((*(uint *)(local_18[1] + 0x1c) & 0x1600000) == 0) {
                    param_1[0xb] = 0x28;
                    FUN_00eaecdd();
                    FUN_00da47a0();
                    FUN_00dfca00();
                    return;
                  }
LAB_008104c8:
                  if ((*(uint *)(local_18[1] + 0x1c) & 0x11000000) != 0x1000000) {
                    FUN_0099dbc0();
                  }
                  if ((*(int *)(local_18[1] + 0x20) != 0) &&
                     (*(char *)(*(int *)(local_18[1] + 0x20) + 0x69) != '\0')) break;
                  local_1c = FUN_0077ad90();
                  if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
                    param_1[0xb] = 0x29;
                    FUN_00eaecdd();
                    FUN_00da47a0();
                    FUN_00dfca00();
                    return;
                  }
LAB_00810486:
                  if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
                    FUN_0099dbc0();
                  }
                  if (*(int *)(local_1c + 0x20) == 0) {
                    iVar5 = 0;
                  }
                  else {
                    in_stack_fffffe9c = (undefined **)param_1[1];
                    if (in_stack_fffffe9c[2] == (undefined *)0x0) {
                      FUN_00eae9a0();
                      FUN_00e9af94(in_stack_fffffe9c);
                      in_stack_fffffe9c = (undefined **)0x813010;
                      FUN_00eaebef();
                    }
                    iVar5 = FUN_00e4e4a0(&PTR_DAT_01544bfc,&local_c8);
                  }
                  if ((iVar5 != 0) && (*(char *)(iVar5 + 0x3c) != '\0')) break;
                  param_1[0xd] = param_1[0xd] + 1;
                }
              }
            }
            break;
          case 0xc:
            FUN_00eae9a0();
            FUN_00eaeca8();
            FUN_007876b0();
            local_18[1] = FUN_0077abc0();
            if ((*(uint *)(local_18[1] + 0x1c) & 0x1600000) == 0) {
              param_1[0xb] = 4;
              FUN_00eaecdd();
              FUN_00da47a0();
              FUN_00dfca00();
              return;
            }
LAB_008115fa:
            if ((*(uint *)(local_18[1] + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            FUN_00eaecdd();
            if ((param_1[6] != 0) && (*(int *)(param_1[6] + 0x28) != 0x1e)) {
              FUN_007876b0();
              local_18[0] = FUN_00787840(0,0,0,0);
              if ((*(uint *)(local_18[0] + 0x1c) & 0x1600000) == 0) {
                param_1[0xb] = 5;
                FUN_00eaecdd();
                FUN_00da47a0();
                FUN_00dfc9c0();
                return;
              }
LAB_0081157b:
              if ((*(uint *)(local_18[0] + 0x1c) & 0x11000000) != 0x1000000) {
                FUN_0099dbc0();
              }
              local_18[0] = FUN_00975000();
              if ((*(uint *)(local_18[0] + 0x1c) & 0x1600000) == 0) {
                param_1[0xb] = 6;
                FUN_00eaecdd();
                FUN_00da47a0();
                FUN_00dfc9c0();
                return;
              }
LAB_00811482:
              if ((*(uint *)(local_18[0] + 0x1c) & 0x11000000) != 0x1000000) {
                FUN_0099dbc0();
              }
            }
            do {
              local_a0 = *(undefined4 *)(*(int *)(iVar2 + 0x14) + 8);
              FUN_00eaeae1();
              iVar5 = FUN_00eae9a0();
              *(undefined4 *)(iVar5 + 4) = 0x91d;
              FUN_00eaebca();
              iVar5 = FUN_00eae9a0();
              *(undefined4 *)(iVar5 + 4) = 0;
              FUN_00eaebca();
              FUN_0077a610(extraout_ECX_00,&PTR_DAT_01be3a98);
              local_18[0] = FUN_00975000();
              if ((*(uint *)(local_18[0] + 0x1c) & 0x1600000) == 0) {
                param_1[0xb] = 7;
                FUN_00eaecdd();
                FUN_00da47a0();
                FUN_00dfc9c0();
                return;
              }
LAB_008113f5:
              if ((*(uint *)(local_18[0] + 0x1c) & 0x11000000) != 0x1000000) {
                FUN_0099dbc0();
              }
              local_24 = FUN_0077b0a0();
              if ((*(uint *)(local_24 + 0x1c) & 0x1600000) == 0) {
                param_1[0xb] = 8;
                FUN_00eaecdd();
                FUN_00da47a0();
                FUN_00dfca00();
                return;
              }
LAB_0081134a:
              if ((*(uint *)(local_24 + 0x1c) & 0x11000000) != 0x1000000) {
                FUN_0099dbc0();
              }
              FUN_00eaecdd();
            } while (param_1[5] == 0);
            FUN_007730f0();
            FUN_00eaebca();
            local_18[0] = FUN_00975000();
            if ((*(uint *)(local_18[0] + 0x1c) & 0x1600000) == 0) {
              param_1[0xb] = 9;
              FUN_00eaecdd();
              FUN_00da47a0();
              FUN_00dfc9c0();
              return;
            }
LAB_008112f2:
            if ((*(uint *)(local_18[0] + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            FUN_00906a20();
            FUN_007876b0();
            if (param_1[5] == 0) {
              iVar5 = 0;
            }
            else {
              FUN_00eae9a0();
              FUN_00e9afb6(in_stack_fffffe9c);
              in_stack_fffffe9c = &local_a4;
              iVar5 = FUN_00e4e4a0();
            }
            FUN_00906a20();
            FUN_007876b0();
            if (iVar5 == 0) {
              uVar6 = 0;
            }
            else {
              uVar6 = *(undefined4 *)(iVar5 + 8);
            }
            local_a8 = *(undefined4 *)(*(int *)(iVar2 + 0x14) + 8);
            iVar5 = FUN_00eaeae1();
            *(undefined ***)(iVar5 + 8) = &PTR_DAT_01b91278;
            iVar8 = FUN_00eae9a0();
            *(undefined4 *)(iVar8 + 4) = uVar6;
            FUN_00eaebca();
            iVar8 = FUN_00eae9a0();
            *(undefined4 *)(iVar8 + 4) = 0;
            FUN_00eaebca();
            FUN_0077a610(iVar5,&PTR_DAT_01befc64);
            local_18[0] = FUN_00975000();
            if ((*(uint *)(local_18[0] + 0x1c) & 0x1600000) == 0) {
              param_1[0xb] = 10;
              FUN_00eaecdd();
              FUN_00da47a0();
              FUN_00dfc9c0();
              return;
            }
LAB_008112bc:
            if ((*(uint *)(local_18[0] + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            break;
          case 0xd:
            FUN_00eae9a0();
            FUN_00eaeca8();
            FUN_007876b0();
            if (*(int *)(param_1[1] + 4) != 0) {
              iVar5 = *(int *)(*(int *)(param_1[1] + 4) + 0x1c);
              if (*(int *)(iVar5 + 8) == 0) {
                    /* WARNING: Subroutine does not return */
                FUN_009319a0();
              }
              if (*(int *)(*(int *)(iVar5 + 4) + 4) == 0) {
                    /* WARNING: Subroutine does not return */
                FUN_009c2bf0();
              }
            }
            FUN_00eaeca8();
            if ((param_1[8] != 0) && (*(int *)(param_1[8] + 4) != 0)) {
              iVar8 = 0;
              *(undefined ***)(param_1[3] + 4) = &PTR_DAT_01b39360;
              *(undefined ***)(param_1[3] + 8) = &PTR_DAT_01b39360;
              iVar5 = FUN_00909ad0();
              if ((iVar5 == 0) && (iVar5 = FUN_00909ad0(), iVar5 == 0)) {
                iVar5 = FUN_00909ad0();
                if ((iVar5 == 0) && (iVar5 = FUN_00909ad0(), iVar5 == 0)) {
                  iVar5 = FUN_00909ad0();
                  if ((iVar5 == 0) && (iVar5 = FUN_00909ad0(), iVar5 == 0)) {
                    iVar5 = FUN_00909ad0();
                    if ((iVar5 == 0) && (iVar5 = FUN_00909ad0(), iVar5 == 0)) {
                      iVar5 = FUN_00909ad0();
                      if ((iVar5 == 0) && (iVar5 = FUN_00909ad0(), iVar5 == 0)) {
                        iVar5 = FUN_00909ad0();
                        if ((iVar5 != 0) || (iVar5 = FUN_00909ad0(), iVar5 != 0)) {
                          iVar8 = 0x20;
                          *(undefined ***)(param_1[3] + 4) = &PTR_DAT_01bf92a4;
                          *(undefined ***)(param_1[3] + 8) = &PTR_DAT_01bc82c4;
                        }
                      }
                      else {
                        iVar8 = 0xb;
                        *(undefined ***)(param_1[3] + 4) = &PTR_DAT_01bf9bbc;
                        *(undefined ***)(param_1[3] + 8) = &PTR_DAT_01b88250;
                      }
                    }
                    else {
                      iVar8 = 0x27;
                      *(undefined ***)(param_1[3] + 4) = &PTR_DAT_01bf925c;
                      *(undefined ***)(param_1[3] + 8) = &PTR_DAT_01b7ae6c;
                    }
                  }
                  else {
                    iVar8 = 0x19;
                    *(undefined ***)(param_1[3] + 4) = &PTR_DAT_01bfa450;
                    *(undefined ***)(param_1[3] + 8) = &PTR_DAT_01b88e58;
                  }
                }
                else {
                  iVar8 = 0xd;
                  *(undefined ***)(param_1[3] + 4) = &PTR_DAT_01bfa664;
                  *(undefined ***)(param_1[3] + 8) = &PTR_DAT_01b884b4;
                }
              }
              else {
                iVar8 = 0xc;
                *(undefined ***)(param_1[3] + 4) = &PTR_DAT_01bfaddc;
                *(undefined ***)(param_1[3] + 8) = &PTR_DAT_01b54234;
              }
              if (iVar8 != 0) {
                local_18[0] = FUN_00787840(0,0,0,0);
                if ((*(uint *)(local_18[0] + 0x1c) & 0x1600000) == 0) {
                  param_1[0xb] = 0xb;
                  FUN_00eaecdd();
                  FUN_00da47a0();
                  FUN_00dfc9c0();
                  return;
                }
LAB_00811239:
                if ((*(uint *)(local_18[0] + 0x1c) & 0x11000000) != 0x1000000) {
                  FUN_0099dbc0();
                }
                local_28 = FUN_0077acc0();
                if ((*(uint *)(local_28 + 0x1c) & 0x1600000) == 0) {
                  param_1[0xb] = 0xc;
                  FUN_00eaecdd();
                  FUN_00da47a0();
                  FUN_00dfca00();
                  return;
                }
LAB_008111e9:
                if ((*(uint *)(local_28 + 0x1c) & 0x11000000) != 0x1000000) {
                  FUN_0099dbc0();
                }
                if (*(int *)(local_28 + 0x20) != 0) {
                  FUN_00eae9a0();
                  FUN_00e9afc7(in_stack_fffffe9c);
                  in_stack_fffffe9c = &puStack_ac;
                  FUN_00e4e4a0();
                }
                FUN_00eaeca8();
                if (param_1[9] != 0) {
                  local_2c = FUN_0080eac0(*(undefined4 *)(param_1[3] + 8),
                                          *(undefined4 *)(param_1[3] + 4));
                  if ((*(uint *)(local_2c + 0x1c) & 0x1600000) == 0) {
                    param_1[0xb] = 0xd;
                    FUN_00eaecdd();
                    FUN_00da47a0();
                    FUN_00dfc9c0();
                    return;
                  }
LAB_00811138:
                  if ((*(uint *)(local_2c + 0x1c) & 0x11000000) != 0x1000000) {
                    FUN_0099dbc0();
                  }
                  uVar4 = *(undefined1 *)(local_2c + 0x20);
                  while (*(undefined1 *)((int)param_1 + 0x39) = uVar4,
                        *(char *)((int)param_1 + 0x39) == '\0') {
                    *(undefined1 *)((int)param_1 + 0x3a) = 0;
                    param_1[0xd] = 0;
                    while( true ) {
                      if ((*(char *)((int)param_1 + 0x3a) != '\0') || (9 < param_1[0xd]))
                      goto LAB_008110db;
                      local_2c = FUN_0080eac0(*(undefined4 *)(param_1[3] + 8),
                                              *(undefined4 *)(param_1[3] + 4));
                      if ((*(uint *)(local_2c + 0x1c) & 0x1600000) == 0) {
                        param_1[0xb] = 0xe;
                        FUN_00eaecdd();
                        FUN_00da47a0();
                        FUN_00dfc9c0();
                        return;
                      }
LAB_008110af:
                      if ((*(uint *)(local_2c + 0x1c) & 0x11000000) != 0x1000000) {
                        FUN_0099dbc0();
                      }
                      if (*(char *)(local_2c + 0x20) != '\0') break;
                      uVar6 = *(undefined4 *)(param_1[9] + 0x28);
                      uStack_b0 = *(undefined4 *)(*(int *)(iVar2 + 0x14) + 8);
                      uVar7 = FUN_00eaeae1();
                      iVar5 = FUN_00eae9a0();
                      *(undefined4 *)(iVar5 + 4) = uVar6;
                      FUN_00eaebca();
                      iVar5 = FUN_00eae9a0();
                      *(undefined4 *)(iVar5 + 4) = 0;
                      FUN_00eaebca();
                      FUN_0077a610(uVar7,&PTR_DAT_01be3a98);
                      local_18[0] = FUN_00975000();
                      if ((*(uint *)(local_18[0] + 0x1c) & 0x1600000) == 0) {
                        param_1[0xb] = 0xf;
                        FUN_00eaecdd();
                        FUN_00da47a0();
                        FUN_00dfc9c0();
                        return;
                      }
LAB_00811036:
                      if ((*(uint *)(local_18[0] + 0x1c) & 0x11000000) != 0x1000000) {
                        FUN_0099dbc0();
                      }
                      local_2c = FUN_0077ac80();
                      if ((*(uint *)(local_2c + 0x1c) & 0x1600000) == 0) {
                        param_1[0xb] = 0x10;
                        FUN_00eaecdd();
                        FUN_00da47a0();
                        FUN_00dfc9c0();
                        return;
                      }
LAB_00810ff7:
                      if ((*(uint *)(local_2c + 0x1c) & 0x11000000) != 0x1000000) {
                        FUN_0099dbc0();
                      }
                      *(undefined1 *)((int)param_1 + 0x3a) = *(undefined1 *)(local_2c + 0x20);
                      param_1[0xd] = param_1[0xd] + 1;
                    }
                    *(undefined1 *)((int)param_1 + 0x39) = 1;
LAB_008110db:
                    if (*(char *)((int)param_1 + 0x39) != '\0') break;
                    if (*(char *)((int)param_1 + 0x3a) == '\0') {
                      FUN_007876b0();
                    }
                    else {
                      if (PTR_LAB_01c23e7c != (undefined *)0x0) {
                        FUN_00e8f54a();
                      }
                      local_40 = FUN_00b848a0();
                      uVar3 = _UNK_018d7388;
                      if (local_40 == 0) {
                        local_34 = (undefined8 *)0x0;
                        local_30 = 0;
                      }
                      else {
                        local_34 = (undefined8 *)(local_40 + 8);
                        local_30 = *(uint *)(local_40 + 4);
                      }
                      local_44 = 0;
                      local_3c = 0;
                      local_38 = '\0';
                      if (local_30 < 0xe) {
                        FUN_0099d6f0();
                      }
                      else {
                        *local_34 = _DAT_018d7380;
                        local_34[1] = uVar3;
                        *(undefined4 *)(local_34 + 2) = 0x740020;
                        *(undefined4 *)((int)local_34 + 0x14) = 0x1ead0068;
                        *(undefined4 *)(local_34 + 3) = 0x200070;
                        local_3c = 0xe;
                      }
                      uVar3 = _UNK_018d7398;
                      if (local_38 == '\0') {
                        if (local_30 < local_3c) goto LAB_008136b0;
                        puVar1 = (undefined8 *)((int)local_34 + local_3c * 2);
                        if (local_30 - local_3c < 0xd) goto LAB_00812813;
                        *puVar1 = _DAT_018d7390;
                        puVar1[1] = uVar3;
                        *(undefined4 *)(puVar1 + 2) = 0x200075;
                        *(undefined4 *)((int)puVar1 + 0x14) = 0x750051;
                        *(undefined2 *)(puVar1 + 3) = 0xfd;
                        local_3c = local_3c + 0xd;
                      }
                      else {
LAB_00812813:
                        FUN_0099d670();
                      }
                      if (local_30 < local_3c) goto LAB_008136b0;
                      if (local_30 == local_3c) {
                        FUN_0099d6f0();
                      }
                      else {
                        *(undefined2 *)((int)local_34 + local_3c * 2) = 0x20;
                        local_3c = local_3c + 1;
                      }
                      iVar5 = *(int *)(param_1[3] + 8);
                      if ((local_38 == '\0') && (iVar5 != 0)) {
                        if (local_30 < local_3c) goto LAB_008136b0;
                        if (local_30 - local_3c < *(uint *)(iVar5 + 4)) goto LAB_008128ab;
                        FUN_00930280();
                        local_3c = local_3c + *(int *)(iVar5 + 4);
                      }
                      else {
LAB_008128ab:
                        FUN_0099d670();
                      }
                      if (local_30 < local_3c) goto LAB_008136b0;
                      puVar10 = (undefined4 *)((int)local_34 + local_3c * 2);
                      if (local_30 - local_3c < 4) {
                        FUN_0099d6f0();
                      }
                      else {
                        *puVar10 = 0x2e0020;
                        puVar10[1] = 0x2e002e;
                        local_3c = local_3c + 4;
                      }
                      FUN_0099d560();
                      FUN_007876b0();
                      while( true ) {
                        local_2c = FUN_0077ac80();
                        if ((*(uint *)(local_2c + 0x1c) & 0x1600000) == 0) {
                          param_1[0xb] = 0x12;
                          FUN_00eaecdd();
                          FUN_00da47a0();
                          FUN_00dfc9c0();
                          return;
                        }
LAB_00810f50:
                        if ((*(uint *)(local_2c + 0x1c) & 0x11000000) != 0x1000000) {
                          FUN_0099dbc0();
                        }
                        if (*(char *)(local_2c + 0x20) == '\0') break;
                        local_18[0] = FUN_00975000();
                        if ((*(uint *)(local_18[0] + 0x1c) & 0x1600000) == 0) {
                          param_1[0xb] = 0x11;
                          FUN_00eaecdd();
                          FUN_00da47a0();
                          FUN_00dfc9c0();
                          return;
                        }
LAB_00810fc1:
                        if ((*(uint *)(local_18[0] + 0x1c) & 0x11000000) != 0x1000000) {
                          FUN_0099dbc0();
                        }
                      }
                      if (PTR_LAB_01c23e7c != (undefined *)0x0) {
                        FUN_00e8f54a();
                      }
                      local_58 = FUN_00b848a0();
                      uVar3 = _UNK_018d73a8;
                      if (local_58 == 0) {
                        local_4c = (undefined8 *)0x0;
                        local_48 = 0;
                      }
                      else {
                        local_4c = (undefined8 *)(local_58 + 8);
                        local_48 = *(uint *)(local_58 + 4);
                      }
                      local_5c = 0;
                      local_54 = 0;
                      local_50 = '\0';
                      if (local_48 < 0xc) {
                        FUN_0099d6f0();
                      }
                      else {
                        *local_4c = _DAT_018d73a0;
                        local_4c[1] = uVar3;
                        *(undefined4 *)(local_4c + 2) = 0x1ead0068;
                        *(undefined4 *)((int)local_4c + 0x14) = 0x200070;
                        local_54 = 0xc;
                      }
                      uVar3 = _UNK_018d7398;
                      if (local_50 == '\0') {
                        if (local_48 < local_54) goto LAB_008136b0;
                        puVar1 = (undefined8 *)((int)local_4c + local_54 * 2);
                        if (local_48 - local_54 < 0xd) goto LAB_00812a4b;
                        *puVar1 = _DAT_018d7390;
                        puVar1[1] = uVar3;
                        *(undefined4 *)(puVar1 + 2) = 0x200075;
                        *(undefined4 *)((int)puVar1 + 0x14) = 0x750051;
                        *(undefined2 *)(puVar1 + 3) = 0xfd;
                        local_54 = local_54 + 0xd;
                      }
                      else {
LAB_00812a4b:
                        FUN_0099d670();
                      }
                      if (local_48 < local_54) goto LAB_008136b0;
                      if (local_48 == local_54) {
                        FUN_0099d6f0();
                      }
                      else {
                        *(undefined2 *)((int)local_4c + local_54 * 2) = 0x20;
                        local_54 = local_54 + 1;
                      }
                      iVar5 = *(int *)(param_1[3] + 8);
                      if ((local_50 == '\0') && (iVar5 != 0)) {
                        if (local_48 < local_54) goto LAB_008136b0;
                        if (local_48 - local_54 < *(uint *)(iVar5 + 4)) goto LAB_00812ae3;
                        FUN_00930280();
                        local_54 = local_54 + *(int *)(iVar5 + 4);
                      }
                      else {
LAB_00812ae3:
                        FUN_0099d670();
                      }
                      if (local_48 < local_54) {
LAB_008136b0:
                    /* WARNING: Subroutine does not return */
                        FUN_009318f0();
                      }
                      puVar10 = (undefined4 *)((int)local_4c + local_54 * 2);
                      if (local_48 - local_54 < 6) {
                        FUN_0099d6f0();
                      }
                      else {
                        *puVar10 = 0x780020;
                        puVar10[1] = &DAT_006e006f;
                        puVar10[2] = 0x2e0067;
                        local_54 = local_54 + 6;
                      }
                      FUN_0099d560();
                      FUN_007876b0();
                      local_18[0] = FUN_00975000();
                      if ((*(uint *)(local_18[0] + 0x1c) & 0x1600000) == 0) {
                        param_1[0xb] = 0x13;
                        FUN_00eaecdd();
                        FUN_00da47a0();
                        FUN_00dfc9c0();
                        return;
                      }
LAB_00810ed4:
                      if ((*(uint *)(local_18[0] + 0x1c) & 0x11000000) != 0x1000000) {
                        FUN_0099dbc0();
                      }
                    }
                    local_2c = FUN_0080eac0(*(undefined4 *)(param_1[3] + 8),
                                            *(undefined4 *)(param_1[3] + 4));
                    if ((*(uint *)(local_2c + 0x1c) & 0x1600000) == 0) {
                      param_1[0xb] = 0x14;
                      FUN_00eaecdd();
                      FUN_00da47a0();
                      FUN_00dfc9c0();
                      return;
                    }
LAB_00810e9b:
                    if ((*(uint *)(local_2c + 0x1c) & 0x11000000) != 0x1000000) {
                      FUN_0099dbc0();
                    }
                    uVar4 = *(undefined1 *)(local_2c + 0x20);
                  }
                }
              }
            }
          }
        }
        else {
          local_18[1] = FUN_0077abc0();
          if ((*(uint *)(local_18[1] + 0x1c) & 0x1600000) == 0) {
            param_1[0xb] = 0x2a;
            FUN_00eaecdd();
            FUN_00da47a0();
            FUN_00dfca00();
            return;
          }
LAB_008103e7:
          FUN_00cce6b0();
          FUN_00eaeca8();
          if (param_1[6] == 0) goto LAB_00810386;
          iVar5 = FUN_00778e50();
          if (iVar5 == 0x1e) goto LAB_00810386;
          FUN_007876b0();
          FUN_00787840(0,0,0,0);
          local_18[0] = FUN_00973a50();
          iVar5 = FUN_0099db90();
          if (iVar5 == 0) {
            param_1[0xb] = 0x2b;
            FUN_00eaecdd();
            FUN_00dfcae0();
            return;
          }
LAB_0081037e:
          while( true ) {
            FUN_0099dba0();
LAB_00810386:
            FUN_00787620();
            FUN_00792da0();
            local_2c = FUN_00b6e1a0();
            iVar5 = FUN_00b6fc00();
            if (iVar5 == 0) {
              param_1[0xb] = 0x2d;
              FUN_00eaecdd();
              FUN_00e17950();
              return;
            }
LAB_008102eb:
            iVar5 = FUN_00b6fc70();
            if (iVar5 != 0) break;
            FUN_00787620();
            FUN_00792d20();
            FUN_007876f0();
            local_18[0] = FUN_00973a50();
            iVar5 = FUN_0099db90();
            if (iVar5 == 0) {
              param_1[0xb] = 0x2c;
              FUN_00eaecdd();
              FUN_00dfcae0();
              return;
            }
          }
          FUN_007877c0();
          local_18[0] = FUN_00973a50();
          iVar5 = FUN_0099db90();
          if (iVar5 == 0) {
            param_1[0xb] = 0x2e;
            FUN_00eaecdd();
            FUN_00dfcae0();
            return;
          }
LAB_0081026b:
          FUN_0099dba0();
          FUN_00787780();
          while( true ) {
            FUN_00787620();
            FUN_00792e00();
            local_24 = FUN_00cc8cb0();
            iVar5 = FUN_00b6fc00();
            if (iVar5 == 0) {
              param_1[0xb] = 0x36;
              FUN_00eaecdd();
              FUN_00e39580(&PTR_PTR_01553bc4,param_1);
              return;
            }
LAB_0080fef3:
            iVar5 = FUN_00cce6b0();
            if (iVar5 != 0) break;
            while( true ) {
              FUN_00787620();
              FUN_00792e00();
              local_24 = FUN_00cc8cb0();
              iVar5 = FUN_00b6fc00();
              if (iVar5 == 0) {
                param_1[0xb] = 0x32;
                FUN_00eaecdd();
                FUN_00e39580(&PTR_PTR_01553bc4,param_1);
                return;
              }
LAB_00810068:
              iVar5 = FUN_00cce6b0();
              if (iVar5 != 0) break;
              while( true ) {
                FUN_00787620();
                FUN_00792e00();
                local_24 = FUN_00cc8cb0();
                iVar5 = FUN_00b6fc00();
                if (iVar5 == 0) {
                  param_1[0xb] = 0x30;
                  FUN_00eaecdd();
                  FUN_00e39580(&PTR_PTR_01553bc4,param_1);
                  return;
                }
LAB_00810167:
                iVar5 = FUN_00cce6b0();
                if (iVar5 != 0) break;
                FUN_00787620();
                FUN_00792c80();
                FUN_007876f0();
                local_18[0] = FUN_00973a50();
                iVar5 = FUN_0099db90();
                if (iVar5 == 0) {
                  param_1[0xb] = 0x2f;
                  FUN_00eaecdd();
                  FUN_00dfcae0();
                  return;
                }
LAB_008101f2:
                FUN_0099dba0();
              }
              FUN_00787620();
              FUN_00792d60(0,0);
              FUN_007876f0();
              local_18[0] = FUN_00973a50();
              iVar5 = FUN_0099db90();
              if (iVar5 == 0) {
                param_1[0xb] = 0x31;
                FUN_00eaecdd();
                FUN_00dfcae0();
                return;
              }
LAB_008100ee:
              FUN_0099dba0();
            }
            FUN_00787620();
            FUN_00792e00();
            local_24 = FUN_00cc8cb0();
            iVar5 = FUN_00b6fc00();
            if (iVar5 == 0) {
              param_1[0xb] = 0x33;
              FUN_00eaecdd();
              FUN_00e39580(&PTR_PTR_01553bc4,param_1);
              return;
            }
LAB_0081002d:
            FUN_00cce6b0();
            FUN_00eaeca8();
            if (param_1[5] != 0) {
              FUN_00777680();
              if (*(int *)(DAT_01c28a6c + 0x20) == 0) {
                FUN_00eae9a0();
                FUN_00e9af61(in_stack_fffffe9c);
                in_stack_fffffe9c = (undefined **)0x812134;
                FUN_00eaebef();
              }
              FUN_00e4e370();
            }
            FUN_00eaeca8();
            FUN_007876f0();
            local_18[0] = FUN_00973a50();
            iVar5 = FUN_0099db90();
            if (iVar5 == 0) {
              param_1[0xb] = 0x34;
              FUN_00eaecdd();
              FUN_00dfcae0();
              return;
            }
LAB_0080ffa2:
            FUN_0099dba0();
            if (param_1[10] != 0) {
              FUN_00787620();
              uVar6 = FUN_00777670();
              FUN_00792d60(0,uVar6);
            }
            FUN_007876f0();
            local_18[0] = FUN_00973a50();
            iVar5 = FUN_0099db90();
            if (iVar5 == 0) {
              param_1[0xb] = 0x35;
              FUN_00eaecdd();
              FUN_00dfcae0();
              return;
            }
LAB_0080ff7e:
            FUN_0099dba0();
            param_1[10] = 0;
          }
          FUN_00787620();
          FUN_00792d60(0,1);
          FUN_007876f0();
          local_18[0] = FUN_00973a50();
          iVar5 = FUN_0099db90();
          if (iVar5 == 0) {
            param_1[0xb] = 0x37;
            FUN_00eaecdd();
            FUN_00dfcae0();
            return;
          }
LAB_0080fe18:
          FUN_0099dba0();
          local_8c[0] = 0;
          local_8c[1] = 0;
          local_8c[2] = 0;
          local_8c[3] = 0;
          local_8c[4] = 0;
          local_8c[5] = 0;
          FUN_0099d430();
          puVar10 = local_8c;
          puVar11 = local_8c + 6;
          for (iVar5 = 6; iVar5 != 0; iVar5 = iVar5 + -1) {
            *puVar11 = *puVar10;
            puVar10 = puVar10 + 1;
            puVar11 = puVar11 + 1;
          }
          FUN_0099d5d0();
          FUN_00de77e0();
          FUN_0099d5d0();
          FUN_0099d560();
          FUN_007876b0();
          if (param_1[0xc] == 10) {
            FUN_007876f0();
            local_18[0] = FUN_00973a50();
            iVar5 = FUN_0099db90();
            if (iVar5 == 0) {
              param_1[0xb] = 0x38;
              FUN_00eaecdd();
              FUN_00dfcae0();
              return;
            }
LAB_0080fdf9:
            FUN_0099dba0();
          }
        }
      }
      param_1[1] = 0;
      param_1[6] = 0;
LAB_008119bf:
      if (9 < param_1[0xc]) {
LAB_008136bc:
        param_1[0xb] = -2;
        param_1[5] = 0;
        FUN_0099cd70();
        return;
      }
      FUN_00eae9a0();
      FUN_00eaeca8();
    }
    local_18[1] = FUN_0077abc0();
    if ((*(uint *)(local_18[1] + 0x1c) & 0x1600000) == 0) {
      param_1[0xb] = 0;
      FUN_00eaecdd();
      FUN_00da47a0();
      FUN_00dfca00();
      return;
    }
  } while( true );
}

