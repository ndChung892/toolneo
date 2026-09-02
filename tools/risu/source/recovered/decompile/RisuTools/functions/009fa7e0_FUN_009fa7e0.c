/* Address: 009fa7e0 | Ghidra name: FUN_009fa7e0 */

undefined4 __fastcall
FUN_009fa7e0(undefined4 param_1,uint *param_2,undefined4 *param_3,undefined4 param_4,
            undefined4 param_5)

{
  undefined4 *puVar1;
  int iVar2;
  undefined4 uVar3;
  int iVar4;
  int iVar5;
  uint uVar6;
  undefined4 uVar7;
  int *piVar8;
  int *piVar9;
  undefined4 *puVar10;
  undefined4 *puVar11;
  undefined4 local_cc [4];
  undefined4 local_bc;
  uint local_b8;
  uint local_b4;
  undefined4 local_b0;
  uint local_ac;
  undefined4 local_a8;
  int local_a4 [5];
  undefined4 local_90;
  int local_8c;
  undefined4 local_88;
  undefined4 local_84;
  uint local_80;
  undefined4 local_7c;
  undefined4 local_78;
  undefined1 local_74;
  char local_73;
  undefined4 local_70;
  uint *local_6c;
  undefined4 local_68;
  undefined4 local_64;
  undefined4 local_60;
  undefined4 local_5c;
  undefined4 local_58;
  undefined1 local_54;
  undefined4 local_48;
  uint local_44;
  uint local_38;
  int local_30 [4];
  undefined4 local_20;
  undefined4 *local_1c;
  uint *local_18;
  int local_14;
  
  puVar1 = param_3;
  iVar2 = -0xc0;
  do {
    *(undefined4 *)((int)&local_14 + iVar2) = 0;
    *(undefined4 *)(&stack0xfffffff0 + iVar2) = 0;
    *(undefined4 *)(&stack0xfffffff4 + iVar2) = 0;
    *(undefined4 *)(&stack0xfffffff8 + iVar2) = 0;
    *(undefined4 *)(&stack0xfffffffc + iVar2) = 0;
    *(undefined4 *)(&stack0x00000000 + iVar2) = 0;
    *(undefined4 *)((int)&param_3 + iVar2) = 0;
    *(undefined4 *)((int)&param_4 + iVar2) = 0;
    *(undefined4 *)((int)&param_5 + iVar2) = 0;
    *(undefined4 *)(&stack0x00000010 + iVar2) = 0;
    *(undefined4 *)(&stack0x00000014 + iVar2) = 0;
    *(undefined4 *)(&stack0x00000018 + iVar2) = 0;
    iVar2 = iVar2 + 0x30;
  } while (iVar2 != 0);
  if ((*param_2 & 0x2000000) == 0) {
    local_20 = 0;
    local_14 = 0;
  }
  else {
    local_14 = iVar2;
    local_14 = FUN_009c08c0();
  }
  local_1c = (undefined4 *)0x0;
  local_18 = param_2;
  if (PTR_LAB_01c22354 != (undefined *)0x0) {
    FUN_00e8ee40();
  }
  iVar2 = DAT_01c2910c;
  uVar3 = FUN_009f1940();
  iVar4 = FUN_009c00d0();
  local_a4[0] = *(int *)(*(int *)(*(int *)(iVar2 + 4) + 4) + 4);
  local_a4[2] = 0xffffffff;
  local_a4[3] = 0xffffffff;
  local_a4[1] = 0;
  if ((iVar4 != 0) && (iVar4 = FUN_00c1f470(local_a4 + 2), iVar4 == 0)) {
    FUN_009c02c0();
    FUN_00906a20();
    FUN_0090e2c0(0,0,4,0);
  }
  piVar8 = local_a4;
  piVar9 = local_30;
  for (iVar4 = 4; iVar4 != 0; iVar4 = iVar4 + -1) {
    *piVar9 = *piVar8;
    piVar8 = piVar8 + 1;
    piVar9 = piVar9 + 1;
  }
LAB_009fa907:
  do {
    iVar4 = FUN_009f1640();
    if (iVar4 == 0) {
      *puVar1 = 0;
      puVar1[1] = 0;
      puVar1[2] = 0;
      puVar1[3] = 0;
      puVar1[4] = 0;
      puVar1[5] = 0;
      return 0;
    }
    if (local_30[1] == 0) {
      FUN_0090e2c0(0,0,4,0);
    }
    iVar4 = local_30[1];
    local_a8 = 0;
    local_ac = 0;
    iVar5 = FUN_009f1530(&local_ac,&local_a8);
  } while (iVar5 == 0);
  iVar5 = FUN_00eae9a0();
  if (0x3ffffffe < local_ac) {
                    /* WARNING: Subroutine does not return */
    FUN_009fc3e0();
  }
  *(undefined4 *)(iVar5 + 4) = local_a8;
  *(uint *)(iVar5 + 8) = local_ac;
  FUN_009fc5e0(iVar5,0);
  local_48 = 0;
  local_44 = 0;
  local_b0 = 0;
  local_b4 = 0;
  iVar5 = FUN_009f1530(&local_b4,&local_b0);
  puVar10 = local_1c;
  if (iVar5 == 0) {
    local_48 = 0;
    local_44 = 0;
  }
  else {
    local_48 = local_b0;
    local_44 = local_b4 >> 2;
  }
  if (local_1c == (undefined4 *)0x0) {
    if (local_14 == 0) {
      if (local_18 == (uint *)0x0) {
        uVar6 = 0;
      }
      else {
        uVar6 = local_18[4];
      }
    }
    else {
      if (*(int *)(DAT_01c29118 + 4) == 0) {
        FUN_009f6890();
      }
      uVar7 = FUN_009fc000();
      piVar8 = (int *)FUN_009ec220(iVar2,uVar7);
      piVar9 = (int *)FUN_009eb660();
      if (piVar9 == (int *)0x0) {
        (**(code **)(*piVar8 + 0x24))();
        piVar9 = (int *)FUN_00eaebca();
      }
      uVar6 = (**(code **)(*piVar9 + 0x1c))();
      FUN_009fc0d0();
    }
  }
  else {
    piVar8 = (int *)FUN_009eb660();
    if (piVar8 == (int *)0x0) {
      if ((undefined *)*puVar10 == &DAT_01620edc) {
        FUN_009eed40();
      }
      piVar8 = (int *)FUN_00eaebca();
    }
    uVar6 = (**(code **)(*piVar8 + 0x1c))();
  }
  local_bc = 0;
  local_b8 = uVar6;
  FUN_009fc640(&local_bc,uVar6 >> 8 & local_38);
  puVar10 = local_cc;
  puVar11 = &local_58;
  for (iVar5 = 4; iVar5 != 0; iVar5 = iVar5 + -1) {
    *puVar11 = *puVar10;
    puVar10 = puVar10 + 1;
    puVar11 = puVar11 + 1;
  }
  local_58 = local_bc;
  local_54 = (undefined1)local_b8;
  local_68 = *(undefined4 *)(iVar4 + 4);
  local_70 = param_4;
  local_60 = param_5;
  local_80 = 0;
  local_5c = 0;
  local_7c = 0;
  local_78 = 0xffffffff;
  local_74 = 0;
  local_73 = '\0';
  local_84 = 0;
  local_6c = param_2;
  local_64 = uVar3;
LAB_009fab5b:
  do {
    FUN_009fe260();
    local_8c = local_a4[4];
    local_88 = local_90;
    if (local_a4[4] == 0) goto LAB_009fa907;
    FUN_00c33280(local_20,local_1c,local_18,local_14,&local_48);
    if (local_73 != '\0') {
      if ((local_80 & 2) != 0) {
        if (*(int *)(DAT_01c29118 + 4) == 0) {
          FUN_009f6890();
        }
        iVar4 = FUN_009f7140(0,local_70);
        if (iVar4 == 0) goto LAB_009fab5b;
      }
      iVar4 = FUN_00c333a0(puVar1 + 2,puVar1 + 3);
      if (iVar4 != 0) {
        FUN_00eaed47();
        puVar1[4] = local_78;
        puVar1[5] = local_80;
        return 1;
      }
    }
  } while( true );
}

