/* Address: 00954ac0 | Ghidra name: FUN_00954ac0 */

void __fastcall FUN_00954ac0(int param_1)

{
  uint *puVar1;
  bool bVar2;
  int iVar3;
  uint uVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  uint uVar8;
  int iVar9;
  uint uVar10;
  int local_48;
  int local_40;
  int local_3c;
  int local_38;
  int local_34;
  int local_28;
  uint local_24;
  int local_1c;
  
  if (*(int *)(param_1 + 4) == 0) {
    FUN_00eae9a0();
    FUN_009115d0(&PTR_DAT_01bf2058);
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  iVar3 = FUN_00eae9a0();
  FUN_00976f50(0x7fffffff);
  uVar8 = 0;
  uVar4 = 0;
  local_1c = 0;
  do {
    if (*(int *)(param_1 + 4) <= (int)uVar8) {
LAB_00954f5a:
      iVar5 = *(int *)(iVar3 + 0x10);
      iVar3 = *(int *)(iVar3 + 0xc);
      if (*(uint *)(param_1 + 4) <= *(int *)(param_1 + 4) - 1U) {
                    /* WARNING: Subroutine does not return */
        FUN_009c2bf0();
      }
      iVar6 = FUN_00955130();
      if (iVar5 + iVar3 <= (int)(0xff - (uint)(iVar6 == 0))) {
        FUN_00977000();
        return;
      }
      iVar3 = FUN_00eae9a0();
      iVar5 = FUN_00955130();
      *(uint *)(iVar3 + 4) = 0xff - (uint)(iVar5 == 0);
      FUN_00eae9a0();
      FUN_00930f10();
      FUN_009115d0(&PTR_DAT_01bf2058);
                    /* WARNING: Subroutine does not return */
      FUN_00eaeefb();
    }
    if (*(uint *)(param_1 + 4) < uVar4) {
                    /* WARNING: Subroutine does not return */
      FUN_00931d90();
    }
    puVar1 = (uint *)(param_1 + 8 + uVar4 * 2);
    iVar5 = FUN_00de21e0(*(int *)(param_1 + 4) - uVar4,0xffffff61,0xffffff0e,0x3002);
    if (iVar5 < 0) {
      uVar8 = *(uint *)(param_1 + 4);
    }
    else {
      uVar8 = iVar5 + uVar4;
    }
    if (uVar8 == uVar4) {
      if (*(uint *)(param_1 + 4) != uVar4) {
        FUN_00eae9a0();
        FUN_009115d0(&PTR_DAT_01bf2058);
                    /* WARNING: Subroutine does not return */
        FUN_00eaeefb();
      }
      goto LAB_00954f5a;
    }
    FUN_00978480(4);
    bVar2 = false;
    if (*(uint *)(param_1 + 4) <= uVar4) goto LAB_00955013;
    FUN_00945af0();
    iVar5 = FUN_009459e0();
    if (iVar5 == 0x40) {
      bVar2 = true;
      uVar10 = uVar8 - 1;
      if (*(uint *)(param_1 + 4) <= uVar10) {
LAB_00955013:
                    /* WARNING: Subroutine does not return */
        FUN_00931d90();
      }
      if (*(ushort *)(param_1 + 8 + uVar10 * 2) - 0xdc00 < 0x400) {
        uVar10 = uVar8 - 2;
      }
      if (*(uint *)(param_1 + 4) <= uVar10) goto LAB_00955013;
      FUN_00945af0();
      iVar5 = FUN_009459e0();
      if (iVar5 != 0x40) {
        FUN_00eae9a0();
        FUN_009115d0(&PTR_DAT_01bf2058);
                    /* WARNING: Subroutine does not return */
        FUN_00eaeefb();
      }
    }
    local_28 = 0;
    iVar5 = local_28;
    for (local_24 = uVar4; local_28 = iVar5, (int)local_24 < (int)uVar8; local_24 = local_24 + 1) {
      if (*(uint *)(param_1 + 4) <= local_24) goto LAB_00955013;
      FUN_00945af0();
      iVar6 = FUN_009459e0();
      if (bVar2) {
        if (iVar6 == 0x20) {
          FUN_00eae9a0();
          FUN_009115d0(&PTR_DAT_01bf2058);
                    /* WARNING: Subroutine does not return */
          FUN_00eaeefb();
        }
      }
      else if (iVar6 == 0x40) {
        FUN_00eae9a0();
        FUN_009115d0(&PTR_DAT_01bf2058);
                    /* WARNING: Subroutine does not return */
        FUN_00eaeefb();
      }
      if (*(ushort *)(param_1 + 8 + local_24 * 2) < 0x80) {
        FUN_009779b0();
        local_28 = iVar5 + 1;
      }
      else {
        iVar5 = FUN_00912b10();
        if (iVar5 != 0) {
          local_24 = local_24 + 1;
        }
      }
      iVar5 = local_28;
    }
    if (uVar8 - uVar4 == iVar5) {
      FUN_00977910(4);
    }
    else {
      if ((3 < (int)(*(int *)(param_1 + 4) - uVar4)) &&
         (puVar1[1] == 0x2d002d && (*puVar1 | 0x200020) == 0x6e0078)) {
        FUN_00eae9a0();
        FUN_009115d0(&PTR_DAT_01bf2058);
                    /* WARNING: Subroutine does not return */
        FUN_00eaeefb();
      }
      local_34 = 0;
      if (0 < iVar5) {
        FUN_009779b0();
      }
      local_38 = 0x80;
      local_3c = 0;
      local_40 = 0x48;
      while (local_28 < (int)(uVar8 - uVar4)) {
        local_48 = 0x7ffffff;
        for (uVar10 = uVar4; (int)uVar10 < (int)uVar8; uVar10 = uVar10 + iVar6) {
          iVar6 = FUN_00912c90();
          if ((local_38 <= iVar6) && (iVar6 < local_48)) {
            local_48 = iVar6;
          }
          if (iVar6 < 0x10000) {
            iVar6 = 1;
          }
          else {
            iVar6 = 2;
          }
        }
        local_3c = ((local_28 - local_34) + 1) * (local_48 - local_38) + local_3c;
        for (uVar10 = uVar4; (int)uVar10 < (int)uVar8; uVar10 = uVar10 + iVar6) {
          iVar6 = FUN_00912c90();
          if (iVar6 < local_48) {
            local_3c = local_3c + 1;
          }
          if (iVar6 == local_48) {
            iVar7 = 0x24;
            while( true ) {
              if (local_40 < iVar7) {
                if (iVar7 < local_40 + 0x1a) {
                  iVar9 = iVar7 - local_40;
                }
                else {
                  iVar9 = 0x1a;
                }
              }
              else {
                iVar9 = 1;
              }
              if (local_3c < iVar9) break;
              FUN_009779b0();
              local_3c = (local_3c - iVar9) / (0x24 - iVar9);
              iVar7 = iVar7 + 0x24;
            }
            FUN_009779b0();
            local_40 = FUN_00955ac0(local_28 == iVar5);
            if (local_48 < 0x10000) {
              local_3c = 0;
              local_28 = local_28 + 1;
            }
            else {
              local_28 = local_28 + 2;
              local_34 = local_34 + 1;
              local_3c = 0;
            }
          }
          if (iVar6 < 0x10000) {
            iVar6 = 1;
          }
          else {
            iVar6 = 2;
          }
        }
        local_3c = local_3c + 1;
        local_38 = local_48 + 1;
      }
    }
    if (0x3f < (*(int *)(iVar3 + 0x10) + *(int *)(iVar3 + 0xc)) - local_1c) {
      FUN_00eae9a0();
      FUN_009115d0(&PTR_DAT_01bf2058);
                    /* WARNING: Subroutine does not return */
      FUN_00eaeefb();
    }
    if (*(uint *)(param_1 + 4) != uVar8) {
      FUN_009779b0();
    }
    uVar4 = uVar8 + 1;
    local_1c = *(int *)(iVar3 + 0x10) + *(int *)(iVar3 + 0xc);
  } while( true );
}

