/* Address: 00782b40 | Ghidra name: FUN_00782b40 */

void __fastcall FUN_00782b40(undefined4 *param_1)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  undefined4 uVar5;
  undefined4 *puVar6;
  undefined4 local_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  int iStack_24;
  uint local_20;
  int local_1c;
  int local_18;
  uint local_14;
  
  local_30 = 0;
  uStack_2c = 0;
  uStack_28 = 0;
  iStack_24 = 0;
  local_20 = 0;
  local_1c = 0;
  local_18 = 0;
  local_14 = param_1[5];
  iVar4 = param_1[2];
  if (1 < local_14) {
    FUN_00eaea6e();
    FUN_00eaeca8();
    iVar1 = FUN_00eae9a0();
    *(undefined4 *)(iVar1 + 0x14) = 0x7fffffff;
    FUN_00eaea6e();
    FUN_00eaebca();
    FUN_00eaed47();
  }
  if (local_14 == 0) {
    local_18 = param_1[8];
    param_1[8] = 0;
    local_14 = 0xffffffff;
    param_1[5] = 0xffffffff;
    do {
      if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      iVar1 = *(int *)(local_18 + 0x20);
      if (iVar1 == 0) {
code_r0x00782eec:
        puVar6 = param_1;
        if ((int)local_14 < 0) {
          if (((0 < (int)param_1[6]) && (iVar1 = FUN_00bcf760(&iStack_24), iVar1 != 0)) &&
             (iStack_24 == param_1[1])) {
            iVar1 = FUN_00bcf570(&uStack_28);
            FUN_00bcf570(&uStack_2c);
            if ((iVar1 != 0) && (*(int *)(iVar4 + 0x1c) != 0)) {
              (**(code **)(*(int *)(iVar4 + 0x1c) + 0x10))();
            }
          }
          FUN_008fa280();
        }
        goto LAB_00782f8b;
      }
      if (PTR_LAB_01c22148 != (undefined *)0x0) {
        FUN_00e8eba9();
      }
      uVar5 = DAT_01c28f38;
      iVar1 = FUN_00986c60(iVar1,0);
      if (iVar1 != 0) {
        FUN_00978480(*(undefined4 *)(iVar1 + 4));
      }
      iVar1 = FUN_00977000();
      while (iVar3 = FUN_00de1be0(*(undefined4 *)(iVar1 + 4)), -1 < iVar3) {
        iVar2 = FUN_00909690(iVar3);
        iVar1 = FUN_00909650();
        FUN_00977160();
        puVar6 = param_1;
        if (iVar1 != 0) {
          FUN_00978480(*(undefined4 *)(iVar1 + 4));
          puVar6 = param_1;
        }
        param_1 = puVar6;
        if ((iVar2 != 0) && (*(int *)(iVar2 + 4) != 0)) {
          iVar3 = FUN_00909ad0(uVar5,iVar2,iVar4,puVar6,iVar3);
          if (iVar3 != 0) {
            iVar4 = FUN_0097d6e0();
            param_1 = puVar6;
            local_1c = FUN_008f4130(0,*(undefined4 *)(iVar4 + 4),0);
            if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
              local_14 = 1;
              puVar6[5] = 1;
              FUN_00eaecdd();
              FUN_00d94e20();
              FUN_00dfc9c0();
              FUN_00782ff3();
              return;
            }
            goto LAB_00782c85;
          }
          param_1 = puVar6;
          if (0 < (int)puVar6[6]) {
            iVar3 = FUN_00bcf760(&local_30);
            local_30 = 0;
            local_20 = (uint)(iVar3 == 0);
            FUN_00bcfdd0(puVar6[1]);
            FUN_00bcfdd0(*puVar6);
            if ((local_20 != 0) && (*(int *)(iVar4 + 0x18) != 0)) {
              (**(code **)(*(int *)(iVar4 + 0x18) + 0x10))();
            }
          }
          if (*(int *)(iVar4 + 0x14) != 0) {
            (**(code **)(*(int *)(iVar4 + 0x14) + 0x10))(iVar2);
          }
        }
      }
LAB_00782e53:
      if (*(char *)(iVar4 + 0x20) == '\0') goto code_r0x00782eec;
      if (*(char *)(param_1[1] + 0x10) == '\0') {
        iVar1 = *(int *)(param_1[1] + 4);
      }
      else {
        iVar1 = 0;
      }
      if ((iVar1 == 0) || (iVar1 = FUN_008f4bd0(), iVar1 == 0)) goto code_r0x00782eec;
      local_18 = FUN_008f3ed0(0,*(undefined4 *)(param_1[3] + 4),0);
    } while ((*(uint *)(local_18 + 0x1c) & 0x1600000) != 0);
    local_14 = 0;
    param_1[5] = 0;
    FUN_00eaecdd();
    FUN_00d94e20();
    FUN_00dfc9c0();
    FUN_00782ff3();
  }
  else {
    if (local_14 != 1) goto LAB_00782e53;
    local_1c = param_1[9];
    param_1[9] = 0;
    local_14 = 0xffffffff;
    param_1[5] = 0xffffffff;
LAB_00782c85:
    puVar6 = param_1;
    if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
      puVar6 = param_1;
    }
    FUN_008fa280();
    FUN_00782ff3();
LAB_00782f8b:
    puVar6[5] = 0xfffffffe;
    puVar6[3] = 0;
    puVar6[4] = 0;
    if (puVar6[7] == 0) {
      if (PTR_FUN_01c22110 != (undefined *)0x0) {
        FUN_00e8eaee();
      }
      FUN_00eaeca8();
    }
    else {
      iVar4 = FUN_00c0a790(0);
      if (iVar4 == 0) {
                    /* WARNING: Subroutine does not return */
        FUN_00931e50();
      }
    }
  }
  return;
}

