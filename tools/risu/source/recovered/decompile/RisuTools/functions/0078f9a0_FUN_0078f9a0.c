/* Address: 0078f9a0 | Ghidra name: FUN_0078f9a0 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_0078f9a0(double *param_1)

{
  double dVar1;
  int iVar2;
  uint uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  int iVar6;
  undefined4 uVar7;
  int iVar8;
  uint uVar9;
  uint uVar10;
  undefined4 extraout_ECX;
  undefined4 extraout_ECX_00;
  undefined4 extraout_ECX_01;
  undefined4 extraout_ECX_02;
  undefined4 extraout_ECX_03;
  char cVar11;
  undefined4 *puVar12;
  undefined4 *puVar13;
  undefined8 uVar14;
  longlong lVar15;
  longlong lVar16;
  undefined4 local_e4;
  undefined4 local_e0;
  undefined1 local_dc;
  undefined4 local_d8;
  undefined4 local_d4;
  undefined4 local_d0;
  undefined4 local_cc;
  undefined4 local_c8;
  undefined4 local_c4;
  undefined4 local_c0;
  uint local_bc;
  uint local_b8;
  double local_b4;
  double local_ac;
  int local_a4;
  int local_a0;
  undefined4 local_9c [6];
  undefined4 local_84 [6];
  undefined4 local_6c;
  int local_68;
  uint local_64;
  undefined1 local_60;
  undefined4 *local_5c;
  uint local_58;
  int local_4c;
  int local_48;
  int local_44;
  double local_40;
  double local_38;
  double local_30;
  double local_28;
  uint local_20;
  int local_1c;
  int local_18 [2];
  
  iVar6 = -0x2d0;
  do {
    *(undefined4 *)((int)local_18 + iVar6) = 0;
    *(undefined4 *)((int)local_18 + iVar6 + 4) = 0;
    *(undefined4 *)(&stack0xfffffff0 + iVar6) = 0;
    *(undefined4 *)(&stack0xfffffff4 + iVar6) = 0;
    *(undefined4 *)(&stack0xfffffff8 + iVar6) = 0;
    *(undefined4 *)(&stack0xfffffffc + iVar6) = 0;
    *(undefined4 *)(&stack0x00000000 + iVar6) = 0;
    *(undefined4 *)(&stack0x00000004 + iVar6) = 0;
    *(undefined4 *)(&stack0x00000008 + iVar6) = 0;
    *(undefined4 *)(&stack0x0000000c + iVar6) = 0;
    *(undefined4 *)(&stack0x00000010 + iVar6) = 0;
    *(undefined4 *)(&stack0x00000014 + iVar6) = 0;
    iVar6 = iVar6 + 0x30;
  } while (iVar6 != 0);
  iVar2 = *(int *)(param_1 + 2);
  local_18[0] = 0;
  local_18[1] = local_18[0];
  switch(*(undefined4 *)(param_1 + 4)) {
  case 0:
    local_18[1] = *(int *)((int)param_1 + 100);
    *(undefined4 *)((int)param_1 + 100) = 0;
    *(undefined4 *)(param_1 + 4) = 0xffffffff;
    local_18[0] = iVar6;
    break;
  case 1:
    local_18[0] = *(int *)(param_1 + 0xd);
    *(undefined4 *)(param_1 + 0xd) = 0;
    *(undefined4 *)(param_1 + 4) = 0xffffffff;
    goto LAB_007928b3;
  case 2:
    local_18[1] = *(int *)((int)param_1 + 100);
    *(undefined4 *)((int)param_1 + 100) = 0;
    *(undefined4 *)(param_1 + 4) = 0xffffffff;
    goto LAB_00792836;
  case 3:
    local_1c = *(int *)((int)param_1 + 0x74);
    *(undefined4 *)((int)param_1 + 0x74) = 0;
    *(undefined4 *)(param_1 + 4) = 0xffffffff;
    goto LAB_00792753;
  case 4:
    local_18[1] = *(int *)((int)param_1 + 100);
    *(undefined4 *)((int)param_1 + 100) = 0;
    *(undefined4 *)(param_1 + 4) = 0xffffffff;
    goto LAB_007926d6;
  case 5:
    local_1c = *(int *)((int)param_1 + 0x74);
    *(undefined4 *)((int)param_1 + 0x74) = 0;
    *(undefined4 *)(param_1 + 4) = 0xffffffff;
    goto LAB_0079268d;
  case 6:
    local_18[1] = *(int *)((int)param_1 + 100);
    *(undefined4 *)((int)param_1 + 100) = 0;
    *(undefined4 *)(param_1 + 4) = 0xffffffff;
    goto LAB_00792610;
  case 7:
    local_1c = *(int *)((int)param_1 + 0x74);
    *(undefined4 *)((int)param_1 + 0x74) = 0;
    *(undefined4 *)(param_1 + 4) = 0xffffffff;
    goto LAB_00792555;
  case 8:
    local_18[1] = *(int *)((int)param_1 + 100);
    *(undefined4 *)((int)param_1 + 100) = 0;
    *(undefined4 *)(param_1 + 4) = 0xffffffff;
    goto LAB_007924d8;
  case 9:
    local_1c = *(int *)((int)param_1 + 0x74);
    *(undefined4 *)((int)param_1 + 0x74) = 0;
    *(undefined4 *)(param_1 + 4) = 0xffffffff;
    goto LAB_007923be;
  case 10:
    local_18[1] = *(int *)((int)param_1 + 100);
    *(undefined4 *)((int)param_1 + 100) = 0;
    *(undefined4 *)(param_1 + 4) = 0xffffffff;
    goto LAB_00792341;
  case 0xb:
    local_1c = *(int *)((int)param_1 + 0x74);
    *(undefined4 *)((int)param_1 + 0x74) = 0;
    *(undefined4 *)(param_1 + 4) = 0xffffffff;
    goto LAB_00792286;
  case 0xc:
    local_18[1] = *(int *)((int)param_1 + 100);
    *(undefined4 *)((int)param_1 + 100) = 0;
    *(undefined4 *)(param_1 + 4) = 0xffffffff;
    goto LAB_00792209;
  case 0xd:
    local_1c = *(int *)((int)param_1 + 0x74);
    *(undefined4 *)((int)param_1 + 0x74) = 0;
    *(undefined4 *)(param_1 + 4) = 0xffffffff;
    goto LAB_007905d1;
  case 0xe:
    local_1c = *(int *)((int)param_1 + 0x74);
    *(undefined4 *)((int)param_1 + 0x74) = 0;
    *(undefined4 *)(param_1 + 4) = 0xffffffff;
    goto LAB_00790535;
  case 0xf:
    local_48 = *(int *)(param_1 + 0xf);
    *(undefined4 *)(param_1 + 0xf) = 0;
    *(undefined4 *)(param_1 + 4) = 0xffffffff;
    goto LAB_007904c8;
  case 0x10:
    local_18[1] = *(int *)((int)param_1 + 100);
    *(undefined4 *)((int)param_1 + 100) = 0;
    *(undefined4 *)(param_1 + 4) = 0xffffffff;
    goto LAB_00790454;
  case 0x11:
    local_18[1] = *(int *)((int)param_1 + 100);
    *(undefined4 *)((int)param_1 + 100) = 0;
    *(undefined4 *)(param_1 + 4) = 0xffffffff;
    goto LAB_007903d5;
  case 0x12:
    local_18[1] = *(int *)((int)param_1 + 100);
    *(undefined4 *)((int)param_1 + 100) = 0;
    *(undefined4 *)(param_1 + 4) = 0xffffffff;
    goto LAB_00790333;
  case 0x13:
    local_18[0] = *(int *)(param_1 + 0xd);
    *(undefined4 *)(param_1 + 0xd) = 0;
    *(undefined4 *)(param_1 + 4) = 0xffffffff;
    goto LAB_0079029d;
  case 0x14:
    local_1c = *(int *)((int)param_1 + 0x74);
    *(undefined4 *)((int)param_1 + 0x74) = 0;
    *(undefined4 *)(param_1 + 4) = 0xffffffff;
    goto LAB_0079025d;
  case 0x15:
    local_18[1] = *(int *)((int)param_1 + 100);
    *(undefined4 *)((int)param_1 + 100) = 0;
    *(undefined4 *)(param_1 + 4) = 0xffffffff;
    goto LAB_00790227;
  case 0x16:
    local_1c = *(int *)((int)param_1 + 0x74);
    *(undefined4 *)((int)param_1 + 0x74) = 0;
    *(undefined4 *)(param_1 + 4) = 0xffffffff;
    goto LAB_00790168;
  case 0x17:
    local_18[1] = *(int *)((int)param_1 + 100);
    *(undefined4 *)((int)param_1 + 100) = 0;
    *(undefined4 *)(param_1 + 4) = 0xffffffff;
    goto LAB_007900e2;
  case 0x18:
    local_18[1] = *(int *)((int)param_1 + 100);
    *(undefined4 *)((int)param_1 + 100) = 0;
    *(undefined4 *)(param_1 + 4) = 0xffffffff;
    goto LAB_0079005a;
  case 0x19:
    local_18[1] = *(int *)((int)param_1 + 100);
    *(undefined4 *)((int)param_1 + 100) = 0;
    *(undefined4 *)(param_1 + 4) = 0xffffffff;
    goto LAB_0078ffac;
  case 0x1a:
    local_18[1] = *(int *)((int)param_1 + 100);
    *(undefined4 *)((int)param_1 + 100) = 0;
    *(undefined4 *)(param_1 + 4) = 0xffffffff;
    goto LAB_0078ff76;
  case 0x1b:
    local_18[1] = *(int *)((int)param_1 + 100);
    *(undefined4 *)((int)param_1 + 100) = 0;
    *(undefined4 *)(param_1 + 4) = 0xffffffff;
    local_18[0] = 0;
    goto LAB_0078fef3;
  case 0x1c:
    local_18[0] = *(int *)(param_1 + 0xd);
    *(undefined4 *)(param_1 + 0xd) = 0;
    *(undefined4 *)(param_1 + 4) = 0xffffffff;
    goto LAB_0078feaa;
  case 0x1d:
    local_18[0] = *(int *)(param_1 + 0xd);
    *(undefined4 *)(param_1 + 0xd) = 0;
    *(undefined4 *)(param_1 + 4) = 0xffffffff;
    goto LAB_0078fd2c;
  case 0x1e:
    local_18[1] = *(int *)((int)param_1 + 100);
    *(undefined4 *)((int)param_1 + 100) = 0;
    *(undefined4 *)(param_1 + 4) = 0xffffffff;
    goto LAB_0078fca6;
  case 0x1f:
    local_18[1] = *(int *)((int)param_1 + 100);
    *(undefined4 *)((int)param_1 + 100) = 0;
    *(undefined4 *)(param_1 + 4) = 0xffffffff;
    goto LAB_0078fc77;
  case 0x20:
    local_1c = *(int *)((int)param_1 + 0x74);
    *(undefined4 *)((int)param_1 + 0x74) = 0;
    *(undefined4 *)(param_1 + 4) = 0xffffffff;
    goto LAB_0078fac4;
  case 0x21:
    local_18[1] = *(int *)((int)param_1 + 100);
    *(undefined4 *)((int)param_1 + 100) = 0;
    *(undefined4 *)(param_1 + 4) = 0xffffffff;
    goto LAB_0078fa54;
  case 0x22:
    local_18[0] = *(int *)(param_1 + 0xd);
    *(undefined4 *)(param_1 + 0xd) = 0;
    *(undefined4 *)(param_1 + 4) = 0xffffffff;
    goto LAB_0078fa18;
  default:
    local_18[0] = iVar6;
    local_18[1] = iVar6;
    local_18[1] = FUN_00787840(1,0,0,0);
    if ((*(uint *)(local_18[1] + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 4) = 0;
      FUN_00eaecdd();
      FUN_00d96380();
      FUN_00dfc9c0();
      return;
    }
  }
  if ((*(uint *)(local_18[1] + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  local_18[0] = FUN_0077abc0();
  if ((*(uint *)(local_18[0] + 0x1c) & 0x1600000) == 0) {
    *(undefined4 *)(param_1 + 4) = 1;
    FUN_00eaecdd();
    FUN_00d96380();
    FUN_00dfca00();
  }
  else {
LAB_007928b3:
    if ((*(uint *)(local_18[0] + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    iVar6 = *(int *)(local_18[0] + 0x20);
    if (iVar6 != 0) {
      dVar1 = param_1[8];
      if (*(char *)(param_1 + 7) == '\0') {
        dVar1 = *(double *)(iVar6 + 4) / _DAT_018d3a88;
      }
      *param_1 = dVar1;
      dVar1 = param_1[10];
      if (*(char *)(param_1 + 9) == '\0') {
        dVar1 = *(double *)(iVar6 + 0xc) / _DAT_018d3a88;
      }
      param_1[1] = dVar1;
      if (PTR_FUN_01c21b04 != (undefined *)0x0) {
        FUN_00e8e290();
      }
      iVar6 = FUN_00bcaf40();
      if (iVar6 != 0) {
        if (*(char *)(param_1 + 0xc) == '\0') {
          while( true ) {
            local_1c = FUN_0077ac00();
            if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
              *(undefined4 *)(param_1 + 4) = 5;
              FUN_00eaecdd();
              FUN_00d96380();
              FUN_00dfc9c0();
              return;
            }
LAB_0079268d:
            if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            if (*(char *)(local_1c + 0x20) == '\0') break;
            local_d4 = *(undefined4 *)(*(int *)(iVar2 + 0x14) + 8);
            FUN_00eaeae1();
            iVar6 = FUN_00eae9a0();
            *(undefined4 *)(iVar6 + 4) = 0;
            FUN_00eaebca();
            FUN_0077a610(extraout_ECX_03,&PTR_DAT_01be70bc);
            local_18[1] = FUN_00975000();
            if ((*(uint *)(local_18[1] + 0x1c) & 0x1600000) == 0) {
              *(undefined4 *)(param_1 + 4) = 4;
              FUN_00eaecdd();
              FUN_00d96380();
              FUN_00dfc9c0();
              return;
            }
LAB_007926d6:
            if ((*(uint *)(local_18[1] + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
          }
        }
        else {
          while( true ) {
            local_1c = FUN_0077ac00();
            if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
              *(undefined4 *)(param_1 + 4) = 3;
              FUN_00eaecdd();
              FUN_00d96380();
              FUN_00dfc9c0();
              return;
            }
LAB_00792753:
            if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            if (*(char *)(local_1c + 0x20) != '\0') break;
            local_d0 = *(undefined4 *)(*(int *)(iVar2 + 0x14) + 8);
            FUN_00eaeae1();
            iVar6 = FUN_00eae9a0();
            *(undefined4 *)(iVar6 + 4) = 0;
            FUN_00eaebca();
            FUN_0077a610(extraout_ECX_02,&PTR_DAT_01be70d8);
            local_18[1] = FUN_00975000();
            if ((*(uint *)(local_18[1] + 0x1c) & 0x1600000) == 0) {
              *(undefined4 *)(param_1 + 4) = 2;
              FUN_00eaecdd();
              FUN_00d96380();
              FUN_00dfc9c0();
              return;
            }
LAB_00792836:
            if ((*(uint *)(local_18[1] + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
          }
        }
        if (*(char *)((int)param_1 + 0x2c) == '\0') {
          while( true ) {
            local_1c = FUN_0077af00();
            if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
              *(undefined4 *)(param_1 + 4) = 9;
              FUN_00eaecdd();
              FUN_00d96380();
              FUN_00dfc9c0();
              return;
            }
LAB_007923be:
            if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            if (*(char *)(local_1c + 0x20) == '\0') break;
            FUN_00906a20();
            FUN_00782420();
            local_18[1] = FUN_00975000();
            if ((*(uint *)(local_18[1] + 0x1c) & 0x1600000) == 0) {
              *(undefined4 *)(param_1 + 4) = 8;
              FUN_00eaecdd();
              FUN_00d96380();
              FUN_00dfc9c0();
              return;
            }
LAB_007924d8:
            if ((*(uint *)(local_18[1] + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
          }
        }
        else {
          while( true ) {
            local_1c = FUN_0077af00();
            if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
              *(undefined4 *)(param_1 + 4) = 7;
              FUN_00eaecdd();
              FUN_00d96380();
              FUN_00dfc9c0();
              return;
            }
LAB_00792555:
            if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            if (*(char *)(local_1c + 0x20) != '\0') break;
            FUN_00906a20();
            FUN_00782420();
            local_18[1] = FUN_00975000();
            if ((*(uint *)(local_18[1] + 0x1c) & 0x1600000) == 0) {
              *(undefined4 *)(param_1 + 4) = 6;
              FUN_00eaecdd();
              FUN_00d96380();
              FUN_00dfc9c0();
              return;
            }
LAB_00792610:
            if ((*(uint *)(local_18[1] + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
          }
        }
        FUN_00eae9a0();
        FUN_0092f2f0();
        FUN_00eaed7c();
        *(undefined2 *)((int)param_1 + 0x2d) = 0;
        *(undefined4 *)((int)param_1 + 0x6c) = 0;
        *(undefined4 *)(param_1 + 0xe) = 0;
LAB_0079240f:
        do {
          local_44 = *(int *)(iVar2 + 0x1c);
          if ((local_44 != 0) && (*(int *)(local_44 + 0x10) != 0)) {
LAB_00792bd6:
                    /* WARNING: Subroutine does not return */
            FUN_00968fa0();
          }
          if (*(char *)((int)param_1 + 0x2e) != '\0') {
            if (*(char *)((int)param_1 + 0x2c) == '\0') {
              while( true ) {
                local_1c = FUN_0077af00();
                if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
                  *(undefined4 *)(param_1 + 4) = 0xd;
                  FUN_00eaecdd();
                  FUN_00d96380();
                  FUN_00dfc9c0();
                  return;
                }
LAB_007905d1:
                if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
                  FUN_0099dbc0();
                }
                if (*(char *)(local_1c + 0x20) == '\0') break;
                FUN_00906a20();
                FUN_00782420();
                local_18[1] = FUN_00975000();
                if ((*(uint *)(local_18[1] + 0x1c) & 0x1600000) == 0) {
                  *(undefined4 *)(param_1 + 4) = 0xc;
                  FUN_00eaecdd();
                  FUN_00d96380();
                  FUN_00dfc9c0();
                  return;
                }
LAB_00792209:
                if ((*(uint *)(local_18[1] + 0x1c) & 0x11000000) != 0x1000000) {
                  FUN_0099dbc0();
                }
              }
            }
            else {
              while( true ) {
                local_1c = FUN_0077af00();
                if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
                  *(undefined4 *)(param_1 + 4) = 0xb;
                  FUN_00eaecdd();
                  FUN_00d96380();
                  FUN_00dfc9c0();
                  return;
                }
LAB_00792286:
                if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
                  FUN_0099dbc0();
                }
                if (*(char *)(local_1c + 0x20) != '\0') break;
                FUN_00906a20();
                FUN_00782420();
                local_18[1] = FUN_00975000();
                if ((*(uint *)(local_18[1] + 0x1c) & 0x1600000) == 0) {
                  *(undefined4 *)(param_1 + 4) = 10;
                  FUN_00eaecdd();
                  FUN_00d96380();
                  FUN_00dfc9c0();
                  return;
                }
LAB_00792341:
                if ((*(uint *)(local_18[1] + 0x1c) & 0x11000000) != 0x1000000) {
                  FUN_0099dbc0();
                }
              }
            }
            *(undefined1 *)((int)param_1 + 0x2e) = 0;
          }
          local_44 = *(int *)(iVar2 + 0x1c);
          if ((local_44 != 0) && (*(int *)(local_44 + 0x10) != 0)) goto LAB_00792bd6;
          cVar11 = '\0';
          if (*(int *)((int)param_1 + 0x14) != 0) {
            local_1c = (**(code **)(*(int *)((int)param_1 + 0x14) + 0x10))();
            if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
              *(undefined4 *)(param_1 + 4) = 0xe;
              FUN_00eaecdd();
              FUN_00d96380();
              FUN_00dfc9c0();
              return;
            }
LAB_00790535:
            if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            cVar11 = *(char *)(local_1c + 0x20);
          }
          if (cVar11 != '\0') goto LAB_00792c05;
          local_48 = FUN_0077b0a0();
          if ((*(uint *)(local_48 + 0x1c) & 0x1600000) == 0) {
            *(undefined4 *)(param_1 + 4) = 0xf;
            FUN_00eaecdd();
            FUN_00d96380();
            FUN_00dfca00();
            return;
          }
LAB_007904c8:
          if ((*(uint *)(local_48 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          if ((*(int *)(local_48 + 0x20) == 0) || (*(int *)(*(int *)(local_48 + 0x20) + 8) == 0)) {
LAB_007906b4:
            local_18[0] = FUN_0077abc0();
            if ((*(uint *)(local_18[0] + 0x1c) & 0x1600000) == 0) {
              *(undefined4 *)(param_1 + 4) = 0x13;
              FUN_00eaecdd();
              FUN_00d96380();
              FUN_00dfca00();
              return;
            }
LAB_0079029d:
            if ((*(uint *)(local_18[0] + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            if ((*(int *)(local_18[0] + 0x20) != 0) &&
               (*(char *)(*(int *)(local_18[0] + 0x20) + 0x69) != '\0')) {
              if (*(int *)(param_1 + 3) == 0) {
                local_18[1] = FUN_00975000();
                if ((*(uint *)(local_18[1] + 0x1c) & 0x1600000) == 0) {
                  *(undefined4 *)(param_1 + 4) = 0x15;
                  FUN_00eaecdd();
                  FUN_00d96380();
                  FUN_00dfc9c0();
                  return;
                }
LAB_00790227:
                if ((*(uint *)(local_18[1] + 0x1c) & 0x11000000) != 0x1000000) {
                  FUN_0099dbc0();
                }
              }
              else {
                local_1c = (**(code **)(*(int *)(param_1 + 3) + 0x10))();
                if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
                  *(undefined4 *)(param_1 + 4) = 0x14;
                  FUN_00eaecdd();
                  FUN_00d96380();
                  FUN_00dfc9c0();
                  return;
                }
LAB_0079025d:
                if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
                  FUN_0099dbc0();
                }
                if (*(char *)(local_1c + 0x20) != '\0') goto LAB_00792c05;
              }
              *(undefined1 *)((int)param_1 + 0x2d) = 1;
              goto LAB_0079240f;
            }
            if (*(char *)((int)param_1 + 0x2d) != '\0') {
              if (*(char *)((int)param_1 + 0x2c) != '\0') {
                FUN_0077ae70();
              }
              *(undefined1 *)((int)param_1 + 0x2d) = 0;
            }
            if (*(char *)(*(int *)(*(int *)(iVar2 + 4) + 0xfc) + 0x38) == '\0') {
              if (*(int *)(*(int *)(*(int *)(iVar2 + 4) + 0xf8) + 8) == 0) {
                local_20 = 0;
              }
              else {
                local_20 = FUN_00909ad0();
              }
            }
            else {
              local_20 = 1;
            }
            local_20 = local_20 & 0xff;
            if ((local_20 != 0) &&
               (iVar6 = *(int *)(*(int *)(iVar2 + 4) + 0xfc), *(char *)(iVar6 + 0x38) == '\0')) {
              local_dc = 1;
              *(undefined1 *)(iVar6 + 0x38) = 1;
              if (*(int *)(iVar6 + 0x34) != 0x200) {
                FUN_00b70f80();
                FUN_00b6cb60();
              }
            }
            if (((*(char *)(*(int *)(*(int *)(iVar2 + 4) + 0xa0) + 0x38) == '\0') || (local_20 != 0)
                ) || (FUN_00916ec0(), uVar3 = (uint)(local_bc < *(uint *)((int)param_1 + 0x6c)),
                     iVar6 = (local_b8 & 0x3fffffff) - (*(uint *)(param_1 + 0xe) & 0x3fffffff),
                     (SBORROW4(local_b8 & 0x3fffffff,*(uint *)(param_1 + 0xe) & 0x3fffffff) !=
                     SBORROW4(iVar6,uVar3)) != (int)(iVar6 - uVar3) < 0)) {
              local_a0 = *(int *)(param_1 + 0xb);
              if ((undefined *)**(undefined4 **)((int)param_1 + 0x1c) == &DAT_016121c8) {
                puVar12 = (undefined4 *)(*(undefined4 **)((int)param_1 + 0x1c))[1];
                if ((undefined *)*puVar12 == &DAT_0161c980) {
                  uVar3 = puVar12[2];
                  uVar9 = puVar12[3] ^ puVar12[1];
                  uVar10 = puVar12[4] ^ uVar3;
                  puVar12[1] = uVar10 ^ puVar12[1];
                  puVar12[2] = uVar3 ^ uVar9;
                  puVar12[3] = uVar9 ^ uVar3 << 9;
                  puVar12[4] = uVar10 << 0xb | uVar10 >> 0x15;
                  lVar15 = (ulonglong)((uVar3 * 0x280 | uVar3 * 5 >> 0x19) * 9) * 0xb;
                  iVar6 = (int)((ulonglong)lVar15 >> 0x20);
                  if ((uint)lVar15 < 0xb) {
                    while (iVar6 = (int)((ulonglong)lVar15 >> 0x20), (uint)lVar15 < 4) {
                      uVar3 = puVar12[2];
                      uVar10 = puVar12[3] ^ puVar12[1];
                      uVar9 = puVar12[4] ^ uVar3;
                      puVar12[1] = uVar9 ^ puVar12[1];
                      puVar12[2] = uVar3 ^ uVar10;
                      puVar12[3] = uVar10 ^ uVar3 << 9;
                      puVar12[4] = uVar9 << 0xb | uVar9 >> 0x15;
                      lVar15 = (ulonglong)((uVar3 * 0x280 | uVar3 * 5 >> 0x19) * 9) * 0xb;
                    }
                  }
                  iVar6 = iVar6 + -5;
                }
                else {
                  iVar6 = FUN_009cc710();
                }
              }
              else {
                iVar6 = FUN_00e8fd82();
                iVar8 = *(int *)(iVar6 + 4);
                if (iVar8 == 0) {
                  iVar8 = FUN_009cc640();
                }
                uVar3 = *(uint *)(iVar8 + 8);
                uVar9 = *(uint *)(iVar8 + 0xc) ^ *(uint *)(iVar8 + 4);
                uVar10 = *(uint *)(iVar8 + 0x10) ^ uVar3;
                *(uint *)(iVar8 + 4) = uVar10 ^ *(uint *)(iVar8 + 4);
                *(uint *)(iVar8 + 8) = uVar3 ^ uVar9;
                *(uint *)(iVar8 + 0xc) = uVar9 ^ uVar3 << 9;
                *(uint *)(iVar8 + 0x10) = uVar10 << 0xb | uVar10 >> 0x15;
                lVar15 = (ulonglong)((uVar3 * 0x280 | uVar3 * 5 >> 0x19) * 9) * 0xb;
                iVar6 = (int)((ulonglong)lVar15 >> 0x20);
                if ((uint)lVar15 < 0xb) {
                  while (iVar6 = (int)((ulonglong)lVar15 >> 0x20), (uint)lVar15 < 4) {
                    uVar3 = *(uint *)(iVar8 + 8);
                    uVar10 = *(uint *)(iVar8 + 0xc) ^ *(uint *)(iVar8 + 4);
                    uVar9 = *(uint *)(iVar8 + 0x10) ^ uVar3;
                    *(uint *)(iVar8 + 4) = uVar9 ^ *(uint *)(iVar8 + 4);
                    *(uint *)(iVar8 + 8) = uVar3 ^ uVar10;
                    *(uint *)(iVar8 + 0xc) = uVar10 ^ uVar3 << 9;
                    *(uint *)(iVar8 + 0x10) = uVar9 << 0xb | uVar9 >> 0x15;
                    lVar15 = (ulonglong)((uVar3 * 0x280 | uVar3 * 5 >> 0x19) * 9) * 0xb;
                  }
                }
                iVar6 = iVar6 + -5;
              }
              local_28 = (double)(iVar6 + local_a0);
              local_a4 = *(int *)((int)param_1 + 0x5c);
              if ((undefined *)**(undefined4 **)((int)param_1 + 0x1c) == &DAT_016121c8) {
                puVar12 = (undefined4 *)(*(undefined4 **)((int)param_1 + 0x1c))[1];
                if ((undefined *)*puVar12 == &DAT_0161c980) {
                  uVar3 = puVar12[2];
                  uVar9 = puVar12[3] ^ puVar12[1];
                  uVar10 = puVar12[4] ^ uVar3;
                  puVar12[1] = uVar10 ^ puVar12[1];
                  puVar12[2] = uVar3 ^ uVar9;
                  puVar12[3] = uVar9 ^ uVar3 << 9;
                  puVar12[4] = uVar10 << 0xb | uVar10 >> 0x15;
                  lVar15 = (ulonglong)((uVar3 * 0x280 | uVar3 * 5 >> 0x19) * 9) * 0xb;
                  iVar6 = (int)((ulonglong)lVar15 >> 0x20);
                  if ((uint)lVar15 < 0xb) {
                    while (iVar6 = (int)((ulonglong)lVar15 >> 0x20), (uint)lVar15 < 4) {
                      uVar3 = puVar12[2];
                      uVar10 = puVar12[3] ^ puVar12[1];
                      uVar9 = puVar12[4] ^ uVar3;
                      puVar12[1] = uVar9 ^ puVar12[1];
                      puVar12[2] = uVar3 ^ uVar10;
                      puVar12[3] = uVar10 ^ uVar3 << 9;
                      puVar12[4] = uVar9 << 0xb | uVar9 >> 0x15;
                      lVar15 = (ulonglong)((uVar3 * 0x280 | uVar3 * 5 >> 0x19) * 9) * 0xb;
                    }
                  }
                  iVar6 = iVar6 + -5;
                }
                else {
                  iVar6 = FUN_009cc710();
                }
              }
              else {
                iVar6 = FUN_00e8fd82();
                iVar8 = *(int *)(iVar6 + 4);
                if (iVar8 == 0) {
                  iVar8 = FUN_009cc640();
                }
                uVar3 = *(uint *)(iVar8 + 8);
                uVar9 = *(uint *)(iVar8 + 0xc) ^ *(uint *)(iVar8 + 4);
                uVar10 = *(uint *)(iVar8 + 0x10) ^ uVar3;
                *(uint *)(iVar8 + 4) = uVar10 ^ *(uint *)(iVar8 + 4);
                *(uint *)(iVar8 + 8) = uVar3 ^ uVar9;
                *(uint *)(iVar8 + 0xc) = uVar9 ^ uVar3 << 9;
                *(uint *)(iVar8 + 0x10) = uVar10 << 0xb | uVar10 >> 0x15;
                lVar15 = (ulonglong)((uVar3 * 0x280 | uVar3 * 5 >> 0x19) * 9) * 0xb;
                iVar6 = (int)((ulonglong)lVar15 >> 0x20);
                if ((uint)lVar15 < 0xb) {
                  while (iVar6 = (int)((ulonglong)lVar15 >> 0x20), (uint)lVar15 < 4) {
                    uVar3 = *(uint *)(iVar8 + 8);
                    uVar10 = *(uint *)(iVar8 + 0xc) ^ *(uint *)(iVar8 + 4);
                    uVar9 = *(uint *)(iVar8 + 0x10) ^ uVar3;
                    *(uint *)(iVar8 + 4) = uVar9 ^ *(uint *)(iVar8 + 4);
                    *(uint *)(iVar8 + 8) = uVar3 ^ uVar10;
                    *(uint *)(iVar8 + 0xc) = uVar10 ^ uVar3 << 9;
                    *(uint *)(iVar8 + 0x10) = uVar9 << 0xb | uVar9 >> 0x15;
                    lVar15 = (ulonglong)((uVar3 * 0x280 | uVar3 * 5 >> 0x19) * 9) * 0xb;
                  }
                }
                iVar6 = iVar6 + -5;
              }
              local_30 = (double)(iVar6 + local_a4);
              FUN_00eaeae1();
              iVar6 = FUN_00eae9a0();
              *(double *)(iVar6 + 4) = local_28 * _DAT_018d3a88;
              FUN_00eaebca();
              iVar6 = FUN_00eae9a0();
              *(double *)(iVar6 + 4) = local_30 * _DAT_018d3a88;
              FUN_00eaebca();
              iVar6 = FUN_00eae9a0();
              *(undefined4 *)(iVar6 + 4) = 0;
              FUN_00eaebca();
              FUN_0077a610(extraout_ECX,&PTR_DAT_01bf1f80);
              *(undefined4 *)(param_1 + 5) = 0;
              while (*(int *)(param_1 + 5) < 4) {
                if ((undefined *)**(undefined4 **)((int)param_1 + 0x1c) == &DAT_016121c8) {
                  puVar12 = (undefined4 *)(*(undefined4 **)((int)param_1 + 0x1c))[1];
                  if ((undefined *)*puVar12 == &DAT_0161c980) {
                    uVar3 = puVar12[2];
                    uVar10 = puVar12[3] ^ puVar12[1];
                    uVar9 = puVar12[4] ^ uVar3;
                    puVar12[1] = uVar9 ^ puVar12[1];
                    puVar12[2] = uVar3 ^ uVar10;
                    puVar12[3] = uVar10 ^ uVar3 << 9;
                    puVar12[4] = uVar9 << 0xb | uVar9 >> 0x15;
                    lVar15 = (ulonglong)((uVar3 * 0x280 | uVar3 * 5 >> 0x19) * 9) * 0xc9;
                    iVar6 = (int)((ulonglong)lVar15 >> 0x20);
                    if ((uint)lVar15 < 0xc9) {
                      while (iVar6 = (int)((ulonglong)lVar15 >> 0x20), (uint)lVar15 < 100) {
                        uVar3 = puVar12[2];
                        uVar10 = puVar12[3] ^ puVar12[1];
                        uVar9 = puVar12[4] ^ uVar3;
                        puVar12[1] = uVar9 ^ puVar12[1];
                        puVar12[2] = uVar3 ^ uVar10;
                        puVar12[3] = uVar10 ^ uVar3 << 9;
                        puVar12[4] = uVar9 << 0xb | uVar9 >> 0x15;
                        lVar15 = (ulonglong)((uVar3 * 0x280 | uVar3 * 5 >> 0x19) * 9) * 0xc9;
                      }
                    }
                    iVar6 = iVar6 + -100;
                  }
                  else {
                    iVar6 = FUN_009cc710();
                  }
                }
                else {
                  iVar6 = FUN_00e8fd82();
                  iVar8 = *(int *)(iVar6 + 4);
                  if (iVar8 == 0) {
                    iVar8 = FUN_009cc640();
                  }
                  uVar3 = *(uint *)(iVar8 + 8);
                  uVar10 = *(uint *)(iVar8 + 0xc) ^ *(uint *)(iVar8 + 4);
                  uVar9 = *(uint *)(iVar8 + 0x10) ^ uVar3;
                  *(uint *)(iVar8 + 4) = uVar9 ^ *(uint *)(iVar8 + 4);
                  *(uint *)(iVar8 + 8) = uVar3 ^ uVar10;
                  *(uint *)(iVar8 + 0xc) = uVar10 ^ uVar3 << 9;
                  *(uint *)(iVar8 + 0x10) = uVar9 << 0xb | uVar9 >> 0x15;
                  lVar15 = (ulonglong)((uVar3 * 0x280 | uVar3 * 5 >> 0x19) * 9) * 0xc9;
                  iVar6 = (int)((ulonglong)lVar15 >> 0x20);
                  if ((uint)lVar15 < 0xc9) {
                    while (iVar6 = (int)((ulonglong)lVar15 >> 0x20), (uint)lVar15 < 100) {
                      uVar3 = *(uint *)(iVar8 + 8);
                      uVar10 = *(uint *)(iVar8 + 0xc) ^ *(uint *)(iVar8 + 4);
                      uVar9 = *(uint *)(iVar8 + 0x10) ^ uVar3;
                      *(uint *)(iVar8 + 4) = uVar9 ^ *(uint *)(iVar8 + 4);
                      *(uint *)(iVar8 + 8) = uVar3 ^ uVar10;
                      *(uint *)(iVar8 + 0xc) = uVar10 ^ uVar3 << 9;
                      *(uint *)(iVar8 + 0x10) = uVar9 << 0xb | uVar9 >> 0x15;
                      lVar15 = (ulonglong)((uVar3 * 0x280 | uVar3 * 5 >> 0x19) * 9) * 0xc9;
                    }
                  }
                  iVar6 = iVar6 + -100;
                }
                if (iVar6 + 500 < -1) {
                    /* WARNING: Subroutine does not return */
                  FUN_00931dc0();
                }
                local_18[1] = FUN_00975000();
                if ((*(uint *)(local_18[1] + 0x1c) & 0x1600000) == 0) {
                  *(undefined4 *)(param_1 + 4) = 0x1b;
                  FUN_00eaecdd();
                  FUN_00d96380();
                  FUN_00dfc9c0();
                  return;
                }
LAB_0078fef3:
                if ((*(uint *)(local_18[1] + 0x1c) & 0x11000000) != 0x1000000) {
                  FUN_0099dbc0();
                }
                local_18[0] = FUN_0077abc0();
                if ((*(uint *)(local_18[0] + 0x1c) & 0x1600000) == 0) {
                  *(undefined4 *)(param_1 + 4) = 0x1c;
                  FUN_00eaecdd();
                  FUN_00d96380();
                  FUN_00dfca00();
                  return;
                }
LAB_0078feaa:
                if ((*(uint *)(local_18[0] + 0x1c) & 0x11000000) != 0x1000000) {
                  FUN_0099dbc0();
                }
                if ((*(int *)(local_18[0] + 0x20) != 0) &&
                   (*(char *)(*(int *)(local_18[0] + 0x20) + 0x69) != '\0')) break;
                *(int *)(param_1 + 5) = *(int *)(param_1 + 5) + 1;
              }
              local_18[0] = FUN_0077abc0();
              if ((*(uint *)(local_18[0] + 0x1c) & 0x1600000) == 0) {
                *(undefined4 *)(param_1 + 4) = 0x1d;
                FUN_00eaecdd();
                FUN_00d96380();
                FUN_00dfca00();
                return;
              }
LAB_0078fd2c:
              if ((*(uint *)(local_18[0] + 0x1c) & 0x11000000) != 0x1000000) {
                FUN_0099dbc0();
              }
              iVar6 = *(int *)(local_18[0] + 0x20);
              if (iVar6 != 0) {
                if (*(char *)(iVar6 + 0x69) != '\0') goto LAB_0079240f;
                if (*(char *)(*(int *)(*(int *)(iVar2 + 4) + 0x134) + 0x38) == '\0') {
                  if ((0 < *(int *)(iVar6 + 0x50)) &&
                     ((double)*(int *)(iVar6 + 0x4c) <
                      (double)*(int *)(iVar6 + 0x50) * _DAT_018d3a80)) {
                    iVar6 = FUN_00eae9a0();
                    *(undefined4 *)(iVar6 + 4) = 0;
                    uVar7 = FUN_00eaeae1();
                    FUN_0099b2e0();
                    FUN_0099b2e0();
                    FUN_0077a610(uVar7,&PTR_DAT_01beefc8);
                    local_18[1] = FUN_00975000();
                    if ((*(uint *)(local_18[1] + 0x1c) & 0x1600000) == 0) {
                      *(undefined4 *)(param_1 + 4) = 0x1f;
                      FUN_00eaecdd();
                      FUN_00d96380();
                      FUN_00dfc9c0();
                      return;
                    }
LAB_0078fc77:
                    if ((*(uint *)(local_18[1] + 0x1c) & 0x11000000) != 0x1000000) {
                      FUN_0099dbc0();
                    }
                  }
                }
                else if ((0 < *(int *)(iVar6 + 0x60)) &&
                        ((double)*(int *)(iVar6 + 0x5c) <
                         (double)*(int *)(iVar6 + 0x60) * _DAT_018d3a80)) {
                  iVar6 = FUN_00eae9a0();
                  *(undefined4 *)(iVar6 + 4) = 0;
                  uVar7 = FUN_00eaeae1();
                  FUN_0099b2e0();
                  FUN_0099b2e0();
                  FUN_0077a610(uVar7,&PTR_DAT_01beefc8);
                  local_18[1] = FUN_00975000();
                  if ((*(uint *)(local_18[1] + 0x1c) & 0x1600000) == 0) {
                    *(undefined4 *)(param_1 + 4) = 0x1e;
                    FUN_00eaecdd();
                    FUN_00d96380();
                    FUN_00dfc9c0();
                    return;
                  }
LAB_0078fca6:
                  if ((*(uint *)(local_18[1] + 0x1c) & 0x11000000) != 0x1000000) {
                    FUN_0099dbc0();
                  }
                }
              }
              cVar11 = '\0';
              if (*(int *)((int)param_1 + 0x14) != 0) {
                local_1c = (**(code **)(*(int *)((int)param_1 + 0x14) + 0x10))();
                if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
                  *(undefined4 *)(param_1 + 4) = 0x20;
                  FUN_00eaecdd();
                  FUN_00d96380();
                  FUN_00dfc9c0();
                  return;
                }
LAB_0078fac4:
                if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
                  FUN_0099dbc0();
                }
                cVar11 = *(char *)(local_1c + 0x20);
              }
              if (cVar11 != '\0') goto LAB_00792c05;
              local_ac = *param_1;
              if ((undefined *)**(undefined4 **)((int)param_1 + 0x1c) == &DAT_016121c8) {
                puVar12 = (undefined4 *)(*(undefined4 **)((int)param_1 + 0x1c))[1];
                if ((undefined *)*puVar12 == &DAT_0161c980) {
                  uVar3 = puVar12[2];
                  uVar10 = puVar12[3] ^ puVar12[1];
                  uVar9 = puVar12[4] ^ uVar3;
                  puVar12[1] = uVar9 ^ puVar12[1];
                  puVar12[2] = uVar3 ^ uVar10;
                  puVar12[3] = uVar10 ^ uVar3 << 9;
                  puVar12[4] = uVar9 << 0xb | uVar9 >> 0x15;
                  lVar15 = (ulonglong)((uVar3 * 0x280 | uVar3 * 5 >> 0x19) * 9) * 0xb;
                  iVar8 = (int)((ulonglong)lVar15 >> 0x20);
                  if ((uint)lVar15 < 0xb) {
                    while (iVar8 = (int)((ulonglong)lVar15 >> 0x20), (uint)lVar15 < 4) {
                      uVar3 = puVar12[2];
                      uVar10 = puVar12[3] ^ puVar12[1];
                      uVar9 = puVar12[4] ^ uVar3;
                      puVar12[1] = uVar9 ^ puVar12[1];
                      puVar12[2] = uVar3 ^ uVar10;
                      puVar12[3] = uVar10 ^ uVar3 << 9;
                      puVar12[4] = uVar9 << 0xb | uVar9 >> 0x15;
                      lVar15 = (ulonglong)((uVar3 * 0x280 | uVar3 * 5 >> 0x19) * 9) * 0xb;
                    }
                  }
                  iVar8 = iVar8 + -5;
                }
                else {
                  iVar8 = FUN_009cc710();
                }
              }
              else {
                iVar6 = FUN_00e8fd82();
                iVar6 = *(int *)(iVar6 + 4);
                if (iVar6 == 0) {
                  iVar6 = FUN_009cc640();
                }
                uVar3 = *(uint *)(iVar6 + 8);
                uVar10 = *(uint *)(iVar6 + 0xc) ^ *(uint *)(iVar6 + 4);
                uVar9 = *(uint *)(iVar6 + 0x10) ^ uVar3;
                *(uint *)(iVar6 + 4) = uVar9 ^ *(uint *)(iVar6 + 4);
                *(uint *)(iVar6 + 8) = uVar3 ^ uVar10;
                *(uint *)(iVar6 + 0xc) = uVar10 ^ uVar3 << 9;
                *(uint *)(iVar6 + 0x10) = uVar9 << 0xb | uVar9 >> 0x15;
                lVar15 = (ulonglong)((uVar3 * 0x280 | uVar3 * 5 >> 0x19) * 9) * 0xb;
                iVar8 = (int)((ulonglong)lVar15 >> 0x20);
                if ((uint)lVar15 < 0xb) {
                  while (iVar8 = (int)((ulonglong)lVar15 >> 0x20), (uint)lVar15 < 4) {
                    uVar3 = *(uint *)(iVar6 + 8);
                    uVar10 = *(uint *)(iVar6 + 0xc) ^ *(uint *)(iVar6 + 4);
                    uVar9 = *(uint *)(iVar6 + 0x10) ^ uVar3;
                    *(uint *)(iVar6 + 4) = uVar9 ^ *(uint *)(iVar6 + 4);
                    *(uint *)(iVar6 + 8) = uVar3 ^ uVar10;
                    *(uint *)(iVar6 + 0xc) = uVar10 ^ uVar3 << 9;
                    *(uint *)(iVar6 + 0x10) = uVar9 << 0xb | uVar9 >> 0x15;
                    lVar15 = (ulonglong)((uVar3 * 0x280 | uVar3 * 5 >> 0x19) * 9) * 0xb;
                  }
                }
                iVar8 = iVar8 + -5;
              }
              local_38 = (double)iVar8 + local_ac;
              local_b4 = param_1[1];
              if ((undefined *)**(undefined4 **)((int)param_1 + 0x1c) == &DAT_016121c8) {
                puVar12 = (undefined4 *)(*(undefined4 **)((int)param_1 + 0x1c))[1];
                if ((undefined *)*puVar12 == &DAT_0161c980) {
                  uVar3 = puVar12[2];
                  uVar10 = puVar12[3] ^ puVar12[1];
                  uVar9 = puVar12[4] ^ uVar3;
                  puVar12[1] = uVar9 ^ puVar12[1];
                  puVar12[2] = uVar3 ^ uVar10;
                  puVar12[3] = uVar10 ^ uVar3 << 9;
                  puVar12[4] = uVar9 << 0xb | uVar9 >> 0x15;
                  lVar15 = (ulonglong)((uVar3 * 0x280 | uVar3 * 5 >> 0x19) * 9) * 0xb;
                  iVar6 = (int)((ulonglong)lVar15 >> 0x20);
                  if ((uint)lVar15 < 0xb) {
                    while (iVar6 = (int)((ulonglong)lVar15 >> 0x20), (uint)lVar15 < 4) {
                      uVar3 = puVar12[2];
                      uVar10 = puVar12[3] ^ puVar12[1];
                      uVar9 = puVar12[4] ^ uVar3;
                      puVar12[1] = uVar9 ^ puVar12[1];
                      puVar12[2] = uVar3 ^ uVar10;
                      puVar12[3] = uVar10 ^ uVar3 << 9;
                      puVar12[4] = uVar9 << 0xb | uVar9 >> 0x15;
                      lVar15 = (ulonglong)((uVar3 * 0x280 | uVar3 * 5 >> 0x19) * 9) * 0xb;
                    }
                  }
                  iVar6 = iVar6 + -5;
                }
                else {
                  iVar6 = FUN_009cc710();
                }
              }
              else {
                iVar6 = FUN_00e8fd82();
                iVar8 = *(int *)(iVar6 + 4);
                if (iVar8 == 0) {
                  iVar8 = FUN_009cc640();
                }
                uVar3 = *(uint *)(iVar8 + 8);
                uVar10 = *(uint *)(iVar8 + 0xc) ^ *(uint *)(iVar8 + 4);
                uVar9 = *(uint *)(iVar8 + 0x10) ^ uVar3;
                *(uint *)(iVar8 + 4) = uVar9 ^ *(uint *)(iVar8 + 4);
                *(uint *)(iVar8 + 8) = uVar3 ^ uVar10;
                *(uint *)(iVar8 + 0xc) = uVar10 ^ uVar3 << 9;
                *(uint *)(iVar8 + 0x10) = uVar9 << 0xb | uVar9 >> 0x15;
                lVar15 = (ulonglong)((uVar3 * 0x280 | uVar3 * 5 >> 0x19) * 9) * 0xb;
                iVar6 = (int)((ulonglong)lVar15 >> 0x20);
                if ((uint)lVar15 < 0xb) {
                  while (iVar6 = (int)((ulonglong)lVar15 >> 0x20), (uint)lVar15 < 4) {
                    uVar3 = *(uint *)(iVar8 + 8);
                    uVar10 = *(uint *)(iVar8 + 0xc) ^ *(uint *)(iVar8 + 4);
                    uVar9 = *(uint *)(iVar8 + 0x10) ^ uVar3;
                    *(uint *)(iVar8 + 4) = uVar9 ^ *(uint *)(iVar8 + 4);
                    *(uint *)(iVar8 + 8) = uVar3 ^ uVar10;
                    *(uint *)(iVar8 + 0xc) = uVar10 ^ uVar3 << 9;
                    *(uint *)(iVar8 + 0x10) = uVar9 << 0xb | uVar9 >> 0x15;
                    lVar15 = (ulonglong)((uVar3 * 0x280 | uVar3 * 5 >> 0x19) * 9) * 0xb;
                  }
                }
                iVar6 = iVar6 + -5;
              }
              local_40 = (double)iVar6 + local_b4;
              FUN_00eaeae1();
              iVar6 = FUN_00eae9a0();
              *(double *)(iVar6 + 4) = local_38 * _DAT_018d3a88;
              FUN_00eaebca();
              iVar6 = FUN_00eae9a0();
              *(double *)(iVar6 + 4) = local_40 * _DAT_018d3a88;
              FUN_00eaebca();
              iVar6 = FUN_00eae9a0();
              *(undefined4 *)(iVar6 + 4) = 0;
              FUN_00eaebca();
              FUN_0077a610(extraout_ECX_00,&PTR_DAT_01bf1f80);
              *(undefined4 *)(param_1 + 5) = 0;
              while (*(int *)(param_1 + 5) < 4) {
                if ((undefined *)**(undefined4 **)((int)param_1 + 0x1c) == &DAT_016121c8) {
                  puVar12 = (undefined4 *)(*(undefined4 **)((int)param_1 + 0x1c))[1];
                  if ((undefined *)*puVar12 == &DAT_0161c980) {
                    uVar3 = puVar12[2];
                    uVar10 = puVar12[3] ^ puVar12[1];
                    uVar9 = puVar12[4] ^ uVar3;
                    puVar12[1] = uVar9 ^ puVar12[1];
                    puVar12[2] = uVar3 ^ uVar10;
                    puVar12[3] = uVar10 ^ uVar3 << 9;
                    puVar12[4] = uVar9 << 0xb | uVar9 >> 0x15;
                    uVar3 = (uVar3 * 0x280 | uVar3 * 5 >> 0x19) * 0x711;
                    if (uVar3 < 0xc9) {
                      for (; uVar3 < 100; uVar3 = (uVar3 * 0x280 | uVar3 * 5 >> 0x19) * 0x711) {
                        uVar3 = puVar12[2];
                        uVar10 = puVar12[3] ^ puVar12[1];
                        uVar9 = puVar12[4] ^ uVar3;
                        puVar12[1] = uVar9 ^ puVar12[1];
                        puVar12[2] = uVar3 ^ uVar10;
                        puVar12[3] = uVar10 ^ uVar3 << 9;
                        puVar12[4] = uVar9 << 0xb | uVar9 >> 0x15;
                      }
                    }
                  }
                  else {
                    FUN_009cc710();
                  }
                }
                else {
                  iVar6 = FUN_00e8fd82();
                  iVar6 = *(int *)(iVar6 + 4);
                  if (iVar6 == 0) {
                    iVar6 = FUN_009cc640();
                  }
                  uVar3 = *(uint *)(iVar6 + 8);
                  uVar10 = *(uint *)(iVar6 + 0xc) ^ *(uint *)(iVar6 + 4);
                  uVar9 = *(uint *)(iVar6 + 0x10) ^ uVar3;
                  *(uint *)(iVar6 + 4) = uVar9 ^ *(uint *)(iVar6 + 4);
                  *(uint *)(iVar6 + 8) = uVar3 ^ uVar10;
                  *(uint *)(iVar6 + 0xc) = uVar10 ^ uVar3 << 9;
                  *(uint *)(iVar6 + 0x10) = uVar9 << 0xb | uVar9 >> 0x15;
                  uVar3 = (uVar3 * 0x280 | uVar3 * 5 >> 0x19) * 0x711;
                  if (uVar3 < 0xc9) {
                    for (; uVar3 < 100; uVar3 = (uVar3 * 0x280 | uVar3 * 5 >> 0x19) * 0x711) {
                      uVar3 = *(uint *)(iVar6 + 8);
                      uVar10 = *(uint *)(iVar6 + 0xc) ^ *(uint *)(iVar6 + 4);
                      uVar9 = *(uint *)(iVar6 + 0x10) ^ uVar3;
                      *(uint *)(iVar6 + 4) = uVar9 ^ *(uint *)(iVar6 + 4);
                      *(uint *)(iVar6 + 8) = uVar3 ^ uVar10;
                      *(uint *)(iVar6 + 0xc) = uVar10 ^ uVar3 << 9;
                      *(uint *)(iVar6 + 0x10) = uVar9 << 0xb | uVar9 >> 0x15;
                    }
                  }
                }
                FUN_007876f0();
                local_18[1] = FUN_00973a50();
                iVar6 = FUN_0099db90();
                if (iVar6 == 0) {
                  *(undefined4 *)(param_1 + 4) = 0x21;
                  FUN_00eaecdd();
                  FUN_00dfca40();
                  return;
                }
LAB_0078fa54:
                FUN_0099dba0();
                FUN_00787620();
                FUN_00792d90();
                local_18[0] = FUN_00cc8cb0();
                iVar6 = FUN_00b6fc00();
                if (iVar6 == 0) {
                  *(undefined4 *)(param_1 + 4) = 0x22;
                  FUN_00eaecdd();
                  FUN_00e393c0(&PTR_PTR_01553ff4,param_1);
                  return;
                }
LAB_0078fa18:
                iVar6 = FUN_00cce6b0();
                if ((iVar6 != 0) && (iVar6 = FUN_00778e60(), iVar6 != 0)) break;
                *(int *)(param_1 + 5) = *(int *)(param_1 + 5) + 1;
              }
              goto LAB_0079240f;
            }
            FUN_007876b0();
            local_1c = FUN_0077af00();
            if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
              *(undefined4 *)(param_1 + 4) = 0x16;
              FUN_00eaecdd();
              FUN_00d96380();
              FUN_00dfc9c0();
              return;
            }
LAB_00790168:
            if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            if (*(char *)(local_1c + 0x20) != '\0') {
              FUN_00906a20();
              FUN_00782420();
              local_18[1] = FUN_00975000();
              if ((*(uint *)(local_18[1] + 0x1c) & 0x1600000) == 0) {
                *(undefined4 *)(param_1 + 4) = 0x17;
                FUN_00eaecdd();
                FUN_00d96380();
                FUN_00dfc9c0();
                return;
              }
LAB_007900e2:
              if ((*(uint *)(local_18[1] + 0x1c) & 0x11000000) != 0x1000000) {
                FUN_0099dbc0();
              }
            }
            FUN_00787780();
            local_18[1] = FUN_00975000();
            if ((*(uint *)(local_18[1] + 0x1c) & 0x1600000) == 0) {
              *(undefined4 *)(param_1 + 4) = 0x18;
              FUN_00eaecdd();
              FUN_00d96380();
              FUN_00dfc9c0();
              return;
            }
LAB_0079005a:
            if ((*(uint *)(local_18[1] + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            *(undefined4 *)(param_1 + 5) = 0;
            if (*(int *)(*(int *)(*(int *)(iVar2 + 4) + 0xf8) + 8) != 0) {
              local_e0 = 0x2f;
              iVar6 = FUN_00908570(0,&local_e0,1);
              if (*(int *)(iVar6 + 4) == 0) goto LAB_00792bff;
              iVar6 = *(int *)(iVar6 + 8);
              if (iVar6 == 0) {
                *(undefined4 *)(param_1 + 5) = 0;
              }
              else {
                uVar14 = CONCAT44(*(undefined4 *)(iVar6 + 4),iVar6 + 8);
                FUN_00958ea0(iVar6 + 8,*(undefined4 *)(iVar6 + 4));
                FUN_00dd21c0(param_1 + 5,uVar14);
              }
            }
            FUN_00eae9a0();
            local_18[1] = FUN_00787640(*(undefined4 *)(iVar2 + 0x10),*(undefined4 *)(iVar2 + 0xc),
                                       *(undefined4 *)(iVar2 + 0x1c),*(undefined4 *)(iVar2 + 8));
            if ((*(uint *)(local_18[1] + 0x1c) & 0x1600000) == 0) {
              *(undefined4 *)(param_1 + 4) = 0x19;
              FUN_00eaecdd();
              FUN_00d96380();
              FUN_00dfc9c0();
              return;
            }
LAB_0078ffac:
            if ((*(uint *)(local_18[1] + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            local_4c = *(int *)(param_1 + 5);
            if (*(int *)(*(int *)(*(int *)(iVar2 + 4) + 0xf8) + 8) != 0) {
              local_e4 = 0x2f;
              iVar6 = FUN_00908570(0,&local_e4,1);
              if (*(int *)(iVar6 + 4) == 0) {
LAB_00792bff:
                    /* WARNING: Subroutine does not return */
                FUN_009c2bf0();
              }
              iVar6 = *(int *)(iVar6 + 8);
              if (iVar6 == 0) {
                local_4c = 0;
              }
              else {
                uVar14 = CONCAT44(*(undefined4 *)(iVar6 + 4),iVar6 + 8);
                FUN_00958ea0(iVar6 + 8,*(undefined4 *)(iVar6 + 4));
                FUN_00dd21c0(&local_4c,uVar14);
              }
            }
            if ((*(char *)(*(int *)(*(int *)(iVar2 + 4) + 0xfc) + 0x38) == '\0') &&
               (local_4c <= *(int *)(param_1 + 5))) {
              FUN_007876b0();
              FUN_00916ec0();
              dVar1 = DAT_018d3a90;
              FUN_00eb6440(DAT_018d3a90);
              uVar14 = FUN_00eb61b0(dVar1);
              lVar15 = __allmul(600000000,0,uVar14);
              lVar16 = FUN_00eb61b0((DAT_018d3a90 - dVar1) * _DAT_018d3a98);
              FUN_00916430(lVar15 + lVar16);
              *(undefined4 *)((int)param_1 + 0x6c) = local_cc;
              *(undefined4 *)(param_1 + 0xe) = local_c8;
            }
            else {
              FUN_00916ec0();
              dVar1 = DAT_018d3aa0;
              FUN_00eb6440(DAT_018d3aa0);
              uVar14 = FUN_00eb61b0(dVar1);
              lVar15 = __allmul(600000000,0,uVar14);
              lVar16 = FUN_00eb61b0((DAT_018d3aa0 - dVar1) * _DAT_018d3a98);
              FUN_00916430(lVar15 + lVar16);
              *(undefined4 *)((int)param_1 + 0x6c) = local_c4;
              *(undefined4 *)(param_1 + 0xe) = local_c0;
            }
            if (PTR_LAB_01c23e7c != (undefined *)0x0) {
              FUN_00e8f54a();
            }
            local_68 = FUN_00b848a0();
            uVar5 = _UNK_018d3abc;
            uVar4 = _UNK_018d3ab8;
            uVar7 = _UNK_018d3ab4;
            if (local_68 == 0) {
              local_5c = (undefined4 *)0x0;
              local_58 = 0;
            }
            else {
              local_5c = (undefined4 *)(local_68 + 8);
              local_58 = *(uint *)(local_68 + 4);
            }
            local_6c = 0;
            local_64 = 0;
            local_60 = 0;
            if (local_58 < 0x12) {
              FUN_0099d6f0();
            }
            else {
              *local_5c = _DAT_018d3ab0;
              local_5c[1] = uVar7;
              local_5c[2] = uVar4;
              local_5c[3] = uVar5;
              uVar5 = _UNK_018d3acc;
              uVar4 = _UNK_018d3ac8;
              uVar7 = _UNK_018d3ac4;
              local_5c[4] = _DAT_018d3ac0;
              local_5c[5] = uVar7;
              local_5c[6] = uVar4;
              local_5c[7] = uVar5;
              local_5c[8] = 0x20006e;
              local_64 = 0x12;
            }
            FUN_00de77e0();
            uVar5 = _UNK_018d3adc;
            uVar4 = _UNK_018d3ad8;
            uVar7 = _UNK_018d3ad4;
            if (local_58 < local_64) {
                    /* WARNING: Subroutine does not return */
              FUN_009318f0();
            }
            puVar12 = (undefined4 *)((int)local_5c + local_64 * 2);
            if (local_58 - local_64 < 0x13) {
              FUN_0099d6f0();
            }
            else {
              *puVar12 = _DAT_018d3ad0;
              puVar12[1] = uVar7;
              puVar12[2] = uVar4;
              puVar12[3] = uVar5;
              uVar5 = _UNK_018d3aec;
              uVar4 = _UNK_018d3ae8;
              uVar7 = _UNK_018d3ae4;
              puVar12[4] = _DAT_018d3ae0;
              puVar12[5] = uVar7;
              puVar12[6] = uVar4;
              puVar12[7] = uVar5;
              puVar12[8] = 0x2e002e;
              *(undefined2 *)(puVar12 + 9) = 0x2e;
              local_64 = local_64 + 0x13;
            }
            FUN_0099d560();
            FUN_007876b0();
            local_18[1] = FUN_00787840(1,0,0,0);
            if ((*(uint *)(local_18[1] + 0x1c) & 0x1600000) == 0) {
              *(undefined4 *)(param_1 + 4) = 0x1a;
              FUN_00eaecdd();
              FUN_00d96380();
              FUN_00dfc9c0();
              return;
            }
LAB_0078ff76:
            if ((*(uint *)(local_18[1] + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
          }
          else {
            iVar6 = FUN_00909ad0();
            if (iVar6 != 0) {
              FUN_007876b0();
              goto LAB_00792c05;
            }
            iVar6 = FUN_00909ad0();
            if (((iVar6 == 0) && (iVar6 = FUN_00909ad0(), iVar6 == 0)) &&
               (iVar6 = FUN_00909ad0(), iVar6 == 0)) goto LAB_007906b4;
            FUN_007876b0();
            local_d8 = *(undefined4 *)(*(int *)(iVar2 + 0x14) + 8);
            iVar6 = FUN_00eaeae1();
            *(undefined ***)(iVar6 + 8) = &PTR_DAT_01bb04a8;
            iVar6 = FUN_00eae9a0();
            *(undefined4 *)(iVar6 + 4) = 1;
            FUN_00eaebca();
            iVar6 = FUN_00eae9a0();
            *(undefined4 *)(iVar6 + 4) = 0;
            FUN_00eaebca();
            FUN_0077a610(extraout_ECX_01,&PTR_DAT_01befc64);
            local_18[1] = FUN_00975000();
            if ((*(uint *)(local_18[1] + 0x1c) & 0x1600000) == 0) {
              *(undefined4 *)(param_1 + 4) = 0x10;
              FUN_00eaecdd();
              FUN_00d96380();
              FUN_00dfc9c0();
              return;
            }
LAB_00790454:
            if ((*(uint *)(local_18[1] + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            local_18[1] = FUN_00787700();
            if ((*(uint *)(local_18[1] + 0x1c) & 0x1600000) == 0) {
              *(undefined4 *)(param_1 + 4) = 0x11;
              FUN_00eaecdd();
              FUN_00d96380();
              FUN_00dfc9c0();
              return;
            }
LAB_007903d5:
            if ((*(uint *)(local_18[1] + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            local_18[1] = FUN_00975000();
            if ((*(uint *)(local_18[1] + 0x1c) & 0x1600000) == 0) {
              *(undefined4 *)(param_1 + 4) = 0x12;
              FUN_00eaecdd();
              FUN_00d96380();
              FUN_00dfc9c0();
              return;
            }
LAB_00790333:
            if ((*(uint *)(local_18[1] + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            FUN_0077bc30(*(undefined1 *)(*(int *)(*(int *)(iVar2 + 4) + 0x138) + 0x38),
                         *(undefined1 *)(*(int *)(*(int *)(iVar2 + 4) + 0x134) + 0x38));
            FUN_00906a20();
            FUN_00782420();
          }
          *(undefined1 *)((int)param_1 + 0x2e) = 1;
        } while( true );
      }
      FUN_0099d430();
      puVar12 = local_9c;
      puVar13 = local_84;
      for (iVar6 = 6; iVar6 != 0; iVar6 = iVar6 + -1) {
        *puVar13 = *puVar12;
        puVar12 = puVar12 + 1;
        puVar13 = puVar13 + 1;
      }
      FUN_0099d5d0();
      FUN_00de77e0();
      FUN_0099d5d0();
      FUN_0099d560();
      FUN_007876b0();
    }
LAB_00792c05:
    *(undefined4 *)(param_1 + 4) = 0xfffffffe;
    FUN_00b6f9c0();
  }
  return;
}

