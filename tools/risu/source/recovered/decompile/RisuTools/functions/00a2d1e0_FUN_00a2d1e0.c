/* Address: 00a2d1e0 | Ghidra name: FUN_00a2d1e0 */

/* WARNING: Unable to track spacebase fully for stack */

void __fastcall FUN_00a2d1e0(undefined4 param_1,int param_2,uint param_3)

{
  int iVar1;
  undefined1 *puVar2;
  uint uVar3;
  int iVar4;
  uint uVar5;
  uint uVar6;
  bool bVar7;
  undefined1 local_98 [52];
  undefined4 uStack_64;
  undefined **ppuStack_60;
  uint local_5c [3];
  uint local_50;
  int local_4c;
  int *local_48;
  undefined1 *local_44;
  undefined4 local_40;
  uint local_3c;
  uint local_38;
  uint local_34;
  int local_30;
  int local_2c;
  uint local_28;
  uint local_24;
  int local_20;
  uint local_1c;
  uint local_18;
  undefined1 *local_14;
  
  local_14 = (undefined1 *)local_5c;
  local_4c = DAT_01c56b40;
  local_40 = param_1;
  if (param_2 == 0) {
                    /* WARNING: Subroutine does not return */
    ppuStack_60 = (undefined **)&UNK_00a2d3f6;
    FUN_00911740();
  }
  if ((int)param_3 < 0) {
                    /* WARNING: Subroutine does not return */
    ppuStack_60 = (undefined **)&UNK_00a2d403;
    local_14 = (undefined1 *)local_5c;
    FUN_00de6f20();
  }
  local_1c = *(uint *)(param_2 + 4);
  if ((int)(local_1c - param_3) < 8) {
    ppuStack_60 = (undefined **)0xa2d40e;
    local_14 = (undefined1 *)local_5c;
    FUN_00eae9a0();
    ppuStack_60 = &PTR_DAT_01b6af1c;
    uStack_64 = 0xa2d422;
    FUN_009117c0();
                    /* WARNING: Subroutine does not return */
    ppuStack_60 = (undefined **)&UNK_00a2d429;
    FUN_00eaeefb();
  }
  local_14 = (undefined1 *)local_5c;
  if (param_3 < local_1c) {
    if (*(char *)(param_2 + 8 + param_3) != '\x01') {
      ppuStack_60 = (undefined **)0xa2d434;
      local_14 = (undefined1 *)local_5c;
      FUN_00eae9a0();
      ppuStack_60 = &PTR_DAT_01be2868;
      uStack_64 = 0xa2d448;
      FUN_009115d0();
                    /* WARNING: Subroutine does not return */
      ppuStack_60 = (undefined **)&UNK_00a2d44f;
      FUN_00eaeefb();
    }
    local_14 = (undefined1 *)local_5c;
    if (param_3 + 1 < local_1c) {
      local_18 = (uint)*(byte *)(param_2 + 9 + param_3);
      if (0xf < local_18) {
        ppuStack_60 = (undefined **)0xa2d45a;
        local_14 = (undefined1 *)local_5c;
        iVar4 = FUN_00eae9a0();
        *(undefined4 *)(iVar4 + 4) = 0xf;
        ppuStack_60 = (undefined **)0xa2d46d;
        FUN_00eae9a0();
        ppuStack_60 = (undefined **)0xa2d47b;
        FUN_00a2c420();
        ppuStack_60 = &PTR_DAT_01be2868;
        uStack_64 = 0xa2d48a;
        FUN_009115d0();
                    /* WARNING: Subroutine does not return */
        ppuStack_60 = (undefined **)&UNK_00a2d491;
        FUN_00eaeefb();
      }
      if ((int)(local_1c - param_3) < (int)(local_18 * 4 + 8)) {
        ppuStack_60 = (undefined **)0xa2d49c;
        local_14 = (undefined1 *)local_5c;
        FUN_00eae9a0();
        ppuStack_60 = &PTR_DAT_01be2868;
        uStack_64 = 0xa2d4b0;
        FUN_009115d0();
                    /* WARNING: Subroutine does not return */
        ppuStack_60 = (undefined **)&UNK_00a2d4b7;
        FUN_00eaeefb();
      }
      puVar2 = local_98;
      if (local_5c < (undefined1 *)0x3c) {
        puVar2 = (undefined1 *)0x0;
      }
      do {
      } while (puVar2 <= local_5c);
      local_28 = param_3 + 2;
      local_44 = puVar2;
      local_14 = puVar2;
      if ((-1 < (int)param_3) && ((int)param_3 < (int)(local_1c - 7))) {
        uVar5 = (uint)*(byte *)(param_2 + 0xc + param_3) * 0x1000000;
        uVar6 = (uint)*(byte *)(param_2 + 0xd + param_3) * 0x10000;
        uVar3 = uVar6 + uVar5;
        local_50 = (uint)*(byte *)(param_2 + 0xb + param_3) +
                   (uint)*(byte *)(param_2 + 10 + param_3) * 0x100 + (uint)CARRY4(uVar6,uVar5);
        local_5c[1] = 0;
        local_5c[0] = (uint)*(byte *)(param_2 + 0xe + param_3) * 0x100;
        local_5c[2] = local_5c[0] + uVar3;
        uVar3 = (uint)*(byte *)(param_2 + 0xf + param_3);
        local_2c = uVar3 + local_5c[2];
        local_30 = local_50 + CARRY4(local_5c[0],uVar3) + (uint)CARRY4(uVar3,local_5c[2]);
LAB_00a2d338:
        if (local_18 != 0) {
          iVar4 = 0;
          local_24 = local_18;
          do {
            local_48 = (int *)(local_44 + iVar4);
            iVar1 = param_3 + iVar4;
            uVar3 = iVar1 + 8;
            local_20 = iVar4;
            if ((iVar1 < 0) || ((int)(local_1c - 0xb) <= iVar1)) {
              if (local_1c <= uVar3) goto LAB_00a2d60e;
              local_5c[2] = (uint)*(byte *)(param_2 + 8 + uVar3);
              if (local_1c <= iVar1 + 9U) goto LAB_00a2d60e;
              local_5c[2] = local_5c[2] + (uint)*(byte *)(param_2 + 8 + iVar1 + 9U) * 0x100;
              if (local_1c <= iVar1 + 10U) goto LAB_00a2d60e;
              local_5c[2] = (uint)*(byte *)(param_2 + 8 + iVar1 + 10U) * 0x10000 + local_5c[2];
              if (local_1c <= iVar1 + 0xbU) goto LAB_00a2d60e;
              *local_48 = (uint)*(byte *)(param_2 + 8 + iVar1 + 0xbU) * 0x1000000 + local_5c[2];
            }
            else {
              *local_48 = CONCAT13(*(undefined1 *)(param_2 + iVar1 + 0x13),
                                   CONCAT12(*(undefined1 *)(param_2 + iVar1 + 0x12),
                                            CONCAT11(*(undefined1 *)(param_2 + iVar1 + 0x11),
                                                     *(undefined1 *)(param_2 + 8 + uVar3))));
            }
            iVar4 = local_20 + 4;
            local_24 = local_24 - 1;
          } while (local_24 != 0);
        }
        uVar3 = local_18;
        if (0xf < local_18) {
                    /* WARNING: Subroutine does not return */
          *(undefined **)(puVar2 + -4) = &UNK_00a2d60d;
          FUN_009318f0();
        }
        *(int *)(puVar2 + -4) = local_30;
        *(int *)(puVar2 + -8) = local_2c;
        *(uint *)(puVar2 + -0xc) = uVar3;
        *(undefined1 **)(puVar2 + -0x10) = local_44;
        *(undefined4 *)(puVar2 + -0x14) = 0xa2d3d1;
        FUN_00a2cfa0();
        if (local_4c != DAT_01c56b40) {
          *(undefined4 *)(puVar2 + -4) = 0xa2d3e2;
          FUN_00ebc890();
        }
        return;
      }
      if ((local_28 < local_1c) &&
         (local_5c[2] = (uint)*(byte *)(param_2 + 10 + param_3) * 0x100, param_3 + 3 < local_1c)) {
        local_50 = 0;
        local_5c[2] = local_5c[2] + *(byte *)(param_2 + 0xb + param_3);
        if (param_3 + 4 < local_1c) {
          local_34 = (uint)*(byte *)(param_2 + 0xc + param_3);
          local_50 = local_34 * 0x1000000;
          local_5c[0] = local_50;
          if (param_3 + 5 < local_1c) {
            local_38 = (uint)*(byte *)(param_2 + 0xd + param_3);
            local_5c[0] = local_38 * 0x10000;
            bVar7 = CARRY4(local_5c[0],local_50);
            local_50 = local_5c[0] + local_50;
            local_5c[2] = local_5c[2] + bVar7;
            if (param_3 + 6 < local_1c) {
              local_3c = (uint)*(byte *)(param_2 + 0xe + param_3);
              local_5c[0] = local_3c * 0x100;
              bVar7 = CARRY4(local_5c[0],local_50);
              local_50 = local_5c[0] + local_50;
              local_5c[2] = local_5c[2] + bVar7;
              if (param_3 + 7 < local_1c) {
                uVar3 = (uint)*(byte *)(param_2 + 0xf + param_3);
                local_2c = uVar3 + local_50;
                local_30 = local_5c[2] + CARRY4(uVar3,local_50);
                goto LAB_00a2d338;
              }
            }
          }
        }
      }
    }
  }
LAB_00a2d60e:
                    /* WARNING: Subroutine does not return */
  ppuStack_60 = (undefined **)&UNK_00a2d613;
  FUN_009c2bf0();
}

