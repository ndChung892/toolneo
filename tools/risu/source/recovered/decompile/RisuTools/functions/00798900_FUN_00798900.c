/* Address: 00798900 | Ghidra name: FUN_00798900 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_00798900(int *param_1)

{
  undefined4 *puVar1;
  double dVar2;
  int iVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  int iVar6;
  int iVar7;
  undefined4 uVar8;
  int *piVar9;
  int *extraout_ECX;
  int *extraout_ECX_00;
  int *extraout_ECX_01;
  undefined4 extraout_ECX_02;
  undefined4 *puVar10;
  int iVar11;
  uint uVar12;
  float10 fVar13;
  double dVar14;
  double dVar15;
  undefined8 uVar16;
  int local_b0;
  uint local_98;
  uint local_60;
  uint local_30;
  int local_20;
  int local_1c [3];
  
  iVar6 = -0x60;
  do {
    *(undefined4 *)((int)local_1c + iVar6) = 0;
    *(undefined4 *)((int)local_1c + iVar6 + 4) = 0;
    *(undefined4 *)((int)local_1c + iVar6 + 8) = 0;
    *(undefined4 *)(&stack0xfffffff0 + iVar6) = 0;
    *(undefined4 *)(&stack0xfffffff4 + iVar6) = 0;
    *(undefined4 *)(&stack0xfffffff8 + iVar6) = 0;
    *(undefined4 *)(&stack0xfffffffc + iVar6) = 0;
    *(undefined4 *)(&stack0x00000000 + iVar6) = 0;
    *(undefined4 *)(&stack0x00000004 + iVar6) = 0;
    *(undefined4 *)(&stack0x00000008 + iVar6) = 0;
    *(undefined4 *)(&stack0x0000000c + iVar6) = 0;
    *(undefined4 *)(&stack0x00000010 + iVar6) = 0;
    iVar6 = iVar6 + 0x30;
  } while (iVar6 != 0);
  local_1c[2] = param_1[4];
  iVar3 = *param_1;
  local_1c[0] = iVar6;
  local_1c[1] = iVar6;
  if ((uint)local_1c[2] < 0xc) goto LAB_007989c9;
  if (local_1c[2] != 0xc) {
    FUN_007876b0();
    param_1[5] = 0;
    goto LAB_007989b1;
  }
  local_1c[0] = param_1[0xb];
  param_1[0xb] = 0;
  local_1c[2] = 0xffffffff;
  param_1[4] = -1;
  do {
    if ((*(uint *)(local_1c[0] + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    do {
      param_1[2] = 0;
LAB_007989b1:
      while( true ) {
        if ((*(int *)(iVar3 + 0x1c) != 0) && (*(int *)(*(int *)(iVar3 + 0x1c) + 0x10) != 0)) {
          FUN_007876b0();
          param_1[4] = -2;
          if (param_1[9] == 0) {
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
        param_1[6] = 0;
LAB_007989c9:
        switch(local_1c[2]) {
        case 0:
          local_1c[1] = param_1[10];
          param_1[10] = 0;
          local_1c[2] = 0xffffffff;
          param_1[4] = -1;
          break;
        case 1:
          local_1c[0] = param_1[0xb];
          param_1[0xb] = 0;
          local_1c[2] = 0xffffffff;
          param_1[4] = -1;
          goto LAB_00798e3d;
        case 2:
          local_1c[0] = param_1[0xb];
          param_1[0xb] = 0;
          local_1c[2] = 0xffffffff;
          param_1[4] = -1;
          goto LAB_00798dfe;
        case 3:
          local_20 = param_1[0xc];
          param_1[0xc] = 0;
          local_1c[2] = 0xffffffff;
          param_1[4] = -1;
          goto LAB_00798d61;
        case 4:
          local_1c[0] = param_1[0xb];
          param_1[0xb] = 0;
          local_1c[2] = 0xffffffff;
          param_1[4] = -1;
          goto LAB_00798d22;
        case 5:
          local_1c[0] = param_1[0xb];
          param_1[0xb] = 0;
          local_1c[2] = 0xffffffff;
          param_1[4] = -1;
          goto LAB_00798ce3;
        case 6:
          local_1c[0] = param_1[0xb];
          param_1[0xb] = 0;
          local_1c[2] = 0xffffffff;
          param_1[4] = -1;
          goto LAB_00798c4c;
        case 7:
          local_1c[1] = param_1[10];
          param_1[10] = 0;
          local_1c[2] = 0xffffffff;
          param_1[4] = -1;
          goto LAB_00798beb;
        case 8:
          local_1c[0] = param_1[0xb];
          param_1[0xb] = 0;
          local_1c[2] = 0xffffffff;
          param_1[4] = -1;
          goto LAB_00798b56;
        case 9:
          local_1c[1] = param_1[10];
          param_1[10] = 0;
          local_1c[2] = 0xffffffff;
          param_1[4] = -1;
          goto LAB_00798af5;
        case 10:
          local_1c[0] = param_1[0xb];
          param_1[0xb] = 0;
          local_1c[2] = 0xffffffff;
          param_1[4] = -1;
          goto LAB_00798a60;
        case 0xb:
          local_1c[1] = param_1[10];
          param_1[10] = 0;
          local_1c[2] = 0xffffffff;
          param_1[4] = -1;
          goto LAB_00798a02;
        default:
          FUN_00eae9a0();
          FUN_00eaeca8();
          local_1c[1] = FUN_0077abc0();
          if ((*(uint *)(local_1c[1] + 0x1c) & 0x1600000) == 0) {
            local_1c[2] = 0;
            param_1[4] = 0;
            FUN_00eaecdd();
            FUN_00d97180();
            FUN_00dfca00();
            return;
          }
        }
        if ((*(uint *)(local_1c[1] + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        FUN_00eaebef();
        if (*(int *)(param_1[1] + 4) != 0) break;
        local_1c[0] = FUN_00975000();
        if ((*(uint *)(local_1c[0] + 0x1c) & 0x1600000) == 0) {
          local_1c[2] = 1;
          param_1[4] = 1;
          FUN_00eaecdd();
          FUN_00d97180();
          FUN_00dfc9c0();
          return;
        }
LAB_00798e3d:
        if ((*(uint *)(local_1c[0] + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
      }
      if (*(char *)(*(int *)(param_1[1] + 4) + 0x69) != '\0') {
        local_1c[0] = FUN_00975000();
        if ((*(uint *)(local_1c[0] + 0x1c) & 0x1600000) == 0) {
          local_1c[2] = 2;
          param_1[4] = 2;
          FUN_00eaecdd();
          FUN_00d97180();
          FUN_00dfc9c0();
          return;
        }
LAB_00798dfe:
        if ((*(uint *)(local_1c[0] + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        goto LAB_007989b1;
      }
      local_20 = FUN_0077acc0();
      if ((*(uint *)(local_20 + 0x1c) & 0x1600000) == 0) {
        local_1c[2] = 3;
        param_1[4] = 3;
        FUN_00eaecdd();
        FUN_00d97180();
        FUN_00dfca00();
        return;
      }
LAB_00798d61:
      if ((*(uint *)(local_20 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      if (*(int *)(local_20 + 0x20) == 0) {
        local_1c[0] = FUN_00975000();
        if ((*(uint *)(local_1c[0] + 0x1c) & 0x1600000) == 0) {
          local_1c[2] = 4;
          param_1[4] = 4;
          FUN_00eaecdd();
          FUN_00d97180();
          FUN_00dfc9c0();
          return;
        }
LAB_00798d22:
        if ((*(uint *)(local_1c[0] + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        goto LAB_007989b1;
      }
      if (*(int *)(DAT_01c2899c + 8) == 0) {
        FUN_00eae9a0();
        FUN_00e99108();
        FUN_00eaebca();
      }
      FUN_00eae9a0();
      FUN_00e4ee90();
      FUN_00e9912a();
      FUN_00e44450(&PTR_DAT_0154458c);
      local_b0 = *(int *)(DAT_01c2899c + 0xc);
      if (local_b0 == 0) {
        FUN_00eae9a0();
        FUN_00e99119();
        local_b0 = FUN_00eaebca();
      }
      FUN_00eae9a0();
      FUN_00cf24b0(0,0,0,local_b0);
      FUN_00e4e3a0();
      FUN_00eaeca8();
      if (param_1[3] == 0) {
        local_1c[0] = FUN_00975000();
        if ((*(uint *)(local_1c[0] + 0x1c) & 0x1600000) == 0) {
          local_1c[2] = 5;
          param_1[4] = 5;
          FUN_00eaecdd();
          FUN_00d97180();
          FUN_00dfc9c0();
          return;
        }
LAB_00798ce3:
        if ((*(uint *)(local_1c[0] + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        goto LAB_007989b1;
      }
      if (PTR_LAB_01c23e7c != (undefined *)0x0) {
        FUN_00e8f54a();
      }
      iVar6 = FUN_00b848a0();
      uVar5 = _UNK_018d3dbc;
      uVar8 = _UNK_018d3db8;
      uVar4 = _UNK_018d3db4;
      if (iVar6 == 0) {
        puVar10 = (undefined4 *)0x0;
        uVar12 = 0;
      }
      else {
        puVar10 = (undefined4 *)(iVar6 + 8);
        uVar12 = *(uint *)(iVar6 + 4);
      }
      local_30 = 0;
      if (uVar12 < 0xe) {
        FUN_0099d6f0();
      }
      else {
        *puVar10 = _DAT_018d3db0;
        puVar10[1] = uVar4;
        puVar10[2] = uVar8;
        puVar10[3] = uVar5;
        puVar10[4] = 0x4e0020;
        puVar10[5] = 0x430050;
        puVar10[6] = 0x20003a;
        local_30 = 0xe;
      }
      iVar6 = *(int *)(param_1[3] + 0x20);
      if (iVar6 == 0) {
LAB_007991e2:
        FUN_0099d670();
      }
      else {
        if (uVar12 < local_30) goto LAB_00799a1f;
        if (uVar12 - local_30 < *(uint *)(iVar6 + 4)) goto LAB_007991e2;
        FUN_00930280();
        local_30 = local_30 + *(int *)(iVar6 + 4);
      }
      uVar5 = _UNK_018d3dcc;
      uVar8 = _UNK_018d3dc8;
      uVar4 = _UNK_018d3dc4;
      if (uVar12 < local_30) {
LAB_00799a1f:
                    /* WARNING: Subroutine does not return */
        FUN_009318f0();
      }
      puVar1 = (undefined4 *)((int)puVar10 + local_30 * 2);
      if (uVar12 - local_30 < 0xf) {
        FUN_0099d6f0();
      }
      else {
        *puVar1 = _DAT_018d3dc0;
        puVar1[1] = uVar4;
        puVar1[2] = uVar8;
        puVar1[3] = uVar5;
        puVar1[4] = 0x630020;
        puVar1[5] = 0x6300e1;
        puVar1[6] = 0x3a0068;
        *(undefined2 *)(puVar1 + 7) = 0x20;
        local_30 = local_30 + 0xf;
      }
      FUN_00dde2a0(*(undefined8 *)(param_1[3] + 0x14));
      if (uVar12 < local_30) goto LAB_00799a1f;
      if (uVar12 == local_30) {
        FUN_0099d6f0();
      }
      else {
        *(undefined2 *)((int)puVar10 + local_30 * 2) = 0x29;
      }
      FUN_0099d560();
      FUN_007876b0();
      param_1[7] = 0;
      piVar9 = param_1;
      while( true ) {
        dVar14 = *(double *)(piVar9[3] + 0xc);
        dVar2 = *(double *)(*(int *)(piVar9[1] + 4) + 0xc);
        fVar13 = (float10)FUN_00eb6460(DAT_018d3dd0,
                                       *(double *)(piVar9[3] + 4) -
                                       *(double *)(*(int *)(piVar9[1] + 4) + 4));
        dVar15 = (double)fVar13;
        fVar13 = (float10)FUN_00eb6460(DAT_018d3dd0,dVar14 - dVar2);
        if (((SQRT((double)fVar13 + dVar15) <= _DAT_018d3dd8) || (0x13 < piVar9[7])) ||
           ((*(int *)(iVar3 + 0x1c) != 0 && (*(int *)(*(int *)(iVar3 + 0x1c) + 0x10) != 0)))) break;
        dVar14 = *(double *)(piVar9[3] + 4) / _DAT_018d3de0;
        iVar6 = 0x7fffffff;
        if (dVar14 < _DAT_018d3de8) {
          iVar6 = (int)(double)(-(ulonglong)(!NAN(dVar14) && !NAN(dVar14)) & (ulonglong)dVar14);
        }
        dVar14 = *(double *)(piVar9[3] + 0xc) / _DAT_018d3de0;
        iVar11 = 0x7fffffff;
        if (dVar14 < _DAT_018d3de8) {
          iVar11 = (int)(double)(-(ulonglong)(!NAN(dVar14) && !NAN(dVar14)) & (ulonglong)dVar14);
        }
        FUN_00eaeae1();
        iVar7 = FUN_00eae9a0();
        *(double *)(iVar7 + 4) = (double)iVar6 * _DAT_018d3de0;
        FUN_00eaebca();
        iVar6 = FUN_00eae9a0();
        *(double *)(iVar6 + 4) = (double)iVar11 * _DAT_018d3de0;
        FUN_00eaebca();
        iVar6 = FUN_00eae9a0();
        *(undefined4 *)(iVar6 + 4) = 0;
        FUN_00eaebca();
        FUN_0077a610(extraout_ECX_02,&PTR_DAT_01bf1f80);
        local_1c[0] = FUN_00975000();
        if ((*(uint *)(local_1c[0] + 0x1c) & 0x1600000) == 0) {
          local_1c[2] = 6;
          param_1[4] = 6;
          FUN_00eaeca8();
          FUN_00d97180();
          FUN_00dfc9c0();
          return;
        }
LAB_00798c4c:
        if ((*(uint *)(local_1c[0] + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        local_1c[1] = FUN_0077abc0();
        if ((*(uint *)(local_1c[1] + 0x1c) & 0x1600000) == 0) {
          local_1c[2] = 7;
          param_1[4] = 7;
          FUN_00eaeca8();
          FUN_00d97180();
          FUN_00dfca00();
          return;
        }
LAB_00798beb:
        if ((*(uint *)(local_1c[1] + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        FUN_00eaebca();
        extraout_ECX_01[7] = extraout_ECX_01[7] + 1;
        piVar9 = extraout_ECX_01;
      }
      FUN_00906a20();
      FUN_007876b0();
      uVar4 = *(undefined4 *)(piVar9[3] + 0x28);
      uVar8 = FUN_00eaeae1();
      iVar6 = FUN_00eae9a0();
      *(undefined4 *)(iVar6 + 4) = uVar4;
      FUN_00eaebca();
      iVar6 = FUN_00eae9a0();
      *(undefined4 *)(iVar6 + 4) = 0;
      FUN_00eaebca();
      FUN_0077a610(uVar8,&PTR_DAT_01be3a98);
      piVar9[8] = 0;
      while (((*(char *)(*(int *)(piVar9[1] + 4) + 0x69) == '\0' && (piVar9[8] < 5)) &&
             ((*(int *)(iVar3 + 0x1c) == 0 || (*(int *)(*(int *)(iVar3 + 0x1c) + 0x10) == 0))))) {
        local_1c[0] = FUN_00975000();
        if ((*(uint *)(local_1c[0] + 0x1c) & 0x1600000) == 0) {
          local_1c[2] = 8;
          param_1[4] = 8;
          FUN_00eaeca8();
          FUN_00d97180();
          FUN_00dfc9c0();
          return;
        }
LAB_00798b56:
        if ((*(uint *)(local_1c[0] + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        local_1c[1] = FUN_0077abc0();
        if ((*(uint *)(local_1c[1] + 0x1c) & 0x1600000) == 0) {
          local_1c[2] = 9;
          param_1[4] = 9;
          FUN_00eaeca8();
          FUN_00d97180();
          FUN_00dfca00();
          return;
        }
LAB_00798af5:
        if ((*(uint *)(local_1c[1] + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        FUN_00eaebca();
        extraout_ECX_00[8] = extraout_ECX_00[8] + 1;
        piVar9 = extraout_ECX_00;
      }
      if (*(char *)(*(int *)(param_1[1] + 4) + 0x69) == '\0') {
        FUN_007876b0();
      }
      else {
        param_1[5] = param_1[5] + 1;
        if (PTR_LAB_01c23e7c != (undefined *)0x0) {
          FUN_00e8f54a();
        }
        iVar6 = FUN_00b848a0();
        uVar5 = _UNK_018d3dfc;
        uVar8 = _UNK_018d3df8;
        uVar4 = _UNK_018d3df4;
        if (iVar6 == 0) {
          puVar10 = (undefined4 *)0x0;
          local_98 = 0;
        }
        else {
          puVar10 = (undefined4 *)(iVar6 + 8);
          local_98 = *(uint *)(iVar6 + 4);
        }
        if (local_98 < 0x1f) {
          FUN_0099d6f0();
        }
        else {
          *puVar10 = _DAT_018d3df0;
          puVar10[1] = uVar4;
          puVar10[2] = uVar8;
          puVar10[3] = uVar5;
          uVar5 = _UNK_018d3e0c;
          uVar8 = _UNK_018d3e08;
          uVar4 = _UNK_018d3e04;
          puVar10[4] = _DAT_018d3e00;
          puVar10[5] = uVar4;
          puVar10[6] = uVar8;
          puVar10[7] = uVar5;
          uVar5 = _UNK_018d3e1c;
          uVar8 = _UNK_018d3e18;
          uVar4 = _UNK_018d3e14;
          puVar10[8] = _DAT_018d3e10;
          puVar10[9] = uVar4;
          puVar10[10] = uVar8;
          puVar10[0xb] = uVar5;
          puVar10[0xc] = 0x201ed1;
          puVar10[0xd] = 0x1ea7006c;
          puVar10[0xe] = 0x3a006e;
          *(undefined2 *)(puVar10 + 0xf) = 0x20;
        }
        FUN_00de77e0();
        FUN_0099d560();
        FUN_007876b0();
        piVar9 = param_1;
        if (param_1[5] == (param_1[5] / 0x32) * 0x32) {
          iVar6 = FUN_00b848a0();
          uVar5 = _UNK_018d3e2c;
          uVar8 = _UNK_018d3e28;
          uVar4 = _UNK_018d3e24;
          if (iVar6 == 0) {
            puVar10 = (undefined4 *)0x0;
            uVar12 = 0;
          }
          else {
            puVar10 = (undefined4 *)(iVar6 + 8);
            uVar12 = *(uint *)(iVar6 + 4);
          }
          local_60 = 0;
          if (uVar12 < 8) {
            FUN_0099d6f0();
          }
          else {
            *puVar10 = _DAT_018d3e20;
            puVar10[1] = uVar4;
            puVar10[2] = uVar8;
            puVar10[3] = uVar5;
            local_60 = 8;
          }
          FUN_00de77e0();
          if (uVar12 < local_60) goto LAB_00799a1f;
          if (uVar12 - local_60 < 0x40) {
            FUN_0099d6f0();
          }
          else {
            FUN_00930280();
          }
          FUN_0099d560();
          FUN_007876b0();
          if (*(int *)(iVar3 + 0x20) != 0) {
            FUN_00eae9a0();
            FUN_00e990f7();
            FUN_00e4ee90(&PTR_DAT_01543690);
            (*(code *)PTR_FUN_01c43988)();
            while( true ) {
              uVar16 = 0x79987a;
              iVar6 = (*(code *)PTR_FUN_01c3a378)();
              if (iVar6 == 0) break;
              iVar6 = (*(code *)PTR_FUN_01c43a98)();
              if (*(int *)(*(int *)(iVar6 + 0x108) + 0x34) != 0) {
                FUN_0077ae70(0x96);
              }
            }
            if (local_1c[2] < 0) {
              (*(code *)PTR_FUN_01c371d0)(uVar16);
            }
          }
        }
        while ((*(char *)(*(int *)(piVar9[1] + 4) + 0x69) != '\0' &&
               ((*(int *)(iVar3 + 0x1c) == 0 || (*(int *)(*(int *)(iVar3 + 0x1c) + 0x10) == 0))))) {
          local_1c[0] = FUN_00975000();
          if ((*(uint *)(local_1c[0] + 0x1c) & 0x1600000) == 0) {
            local_1c[2] = 10;
            param_1[4] = 10;
            FUN_00eaeca8();
            FUN_00d97180();
            FUN_00dfc9c0();
            return;
          }
LAB_00798a60:
          if ((*(uint *)(local_1c[0] + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          local_1c[1] = FUN_0077abc0();
          if ((*(uint *)(local_1c[1] + 0x1c) & 0x1600000) == 0) {
            local_1c[2] = 0xb;
            param_1[4] = 0xb;
            FUN_00eaeca8();
            FUN_00d97180();
            FUN_00dfca00();
            return;
          }
LAB_00798a02:
          if ((*(uint *)(local_1c[1] + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          FUN_00eaebca();
          piVar9 = extraout_ECX;
        }
        FUN_007876b0();
      }
      param_1[1] = 0;
      param_1[3] = 0;
    } while (param_1[6] != 1);
    piVar9 = (int *)param_1[2];
    if ((piVar9 != (int *)0x0) && ((undefined *)*piVar9 != &DAT_01610610)) {
      piVar9 = (int *)FUN_0099ad00();
    }
    (**(code **)(*piVar9 + 0x20))();
    FUN_00906a20();
    FUN_007876b0();
    local_1c[0] = FUN_00975000();
    if ((*(uint *)(local_1c[0] + 0x1c) & 0x1600000) == 0) {
      param_1[4] = 0xc;
      FUN_00eaeca8();
      FUN_00d97180();
      FUN_00dfc9c0();
      return;
    }
  } while( true );
}

