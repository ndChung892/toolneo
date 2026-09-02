/* Address: 00955280 | Ghidra name: FUN_00955280 */

void __fastcall FUN_00955280(int param_1)

{
  uint uVar1;
  int iVar2;
  uint uVar3;
  int iVar4;
  uint uVar5;
  uint uVar6;
  int iVar7;
  undefined4 uVar8;
  int iVar9;
  int iVar10;
  bool bVar11;
  int local_48;
  int local_38;
  int local_34;
  int local_30;
  int local_2c;
  uint local_28;
  int local_20;
  int local_1c;
  uint local_18;
  
  uVar1 = *(uint *)(param_1 + 4);
  if (uVar1 == 0) {
    FUN_00eae9a0();
    FUN_009115d0(&PTR_DAT_01be1948);
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  iVar2 = FUN_00955130();
  if ((int)(0xff - (uint)(iVar2 == 0)) < (int)uVar1) {
    iVar2 = FUN_00eae9a0();
    iVar4 = FUN_00955130();
    *(uint *)(iVar2 + 4) = 0xff - (uint)(iVar4 == 0);
    FUN_00eae9a0();
    FUN_00930f10();
    FUN_009115d0(&PTR_DAT_01be1948);
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  iVar2 = FUN_00eae9a0();
  FUN_00976f50(0x7fffffff);
  local_18 = 0;
  local_1c = 0;
  if (0 < (int)uVar1) {
    do {
      uVar3 = FUN_00909b40(uVar1 - local_18,local_18);
      if (((int)uVar3 < 0) || ((int)uVar1 < (int)uVar3)) {
        uVar3 = uVar1;
      }
      if (uVar3 == local_18) {
        if (uVar1 != local_18) {
          FUN_00eae9a0();
          FUN_009115d0(&PTR_DAT_01be1948);
                    /* WARNING: Subroutine does not return */
          FUN_00eaeefb();
        }
        break;
      }
      if (0x3f < (int)(uVar3 - local_18)) {
        FUN_00eae9a0();
        FUN_009115d0(&PTR_DAT_01be1948);
                    /* WARNING: Subroutine does not return */
        FUN_00eaeefb();
      }
      if (((int)uVar1 < (int)(local_18 + 4)) ||
         (iVar4 = FUN_00904d20(5,4,0,&PTR_DAT_01bf38c4), iVar4 != 0)) {
        FUN_009775d0(uVar3 - local_18,local_18);
      }
      else {
        local_18 = local_18 + 4;
        local_20 = FUN_00909cf0(uVar3,uVar3 - 1);
        if (local_20 == uVar3 - 1) {
          FUN_00eae9a0();
          FUN_009115d0(&PTR_DAT_01be1948);
                    /* WARNING: Subroutine does not return */
          FUN_00eaeefb();
        }
        if ((int)local_18 < local_20) {
          local_20 = local_20 - local_18;
          uVar5 = local_18;
          if ((int)local_18 < (int)(local_18 + local_20)) {
            do {
              if (uVar1 <= uVar5) {
LAB_00955a41:
                    /* WARNING: Subroutine does not return */
                FUN_009c2bf0();
              }
              if (0x7f < *(ushort *)(param_1 + 8 + uVar5 * 2)) {
                FUN_00eae9a0();
                FUN_009115d0(&PTR_DAT_01be1948);
                    /* WARNING: Subroutine does not return */
                FUN_00eaeefb();
              }
              FUN_009779b0();
              uVar5 = uVar5 + 1;
            } while ((int)uVar5 < (int)(local_18 + local_20));
          }
        }
        else {
          local_20 = 0;
        }
        if (local_20 < 1) {
          local_20 = 0;
        }
        else {
          local_20 = local_20 + 1;
        }
        uVar5 = local_20 + local_18;
        local_28 = 0x80;
        local_2c = 0x48;
        iVar4 = 0;
        local_38 = 0;
        while ((int)uVar5 < (int)uVar3) {
          iVar9 = 1;
          local_34 = 0x24;
          uVar6 = uVar5;
          local_30 = iVar4;
          while( true ) {
            uVar5 = uVar6 + 1;
            if (uVar1 <= uVar6) goto LAB_00955a41;
            iVar7 = FUN_00955a50();
            if ((0x7ffffff - local_30) / iVar9 < iVar7) {
              FUN_00eae9a0();
              FUN_009115d0(&PTR_DAT_01be1948);
                    /* WARNING: Subroutine does not return */
              FUN_00eaeefb();
            }
            local_30 = iVar7 * iVar9 + local_30;
            if (local_2c < local_34) {
              if (local_34 < local_2c + 0x1a) {
                iVar10 = local_34 - local_2c;
              }
              else {
                iVar10 = 0x1a;
              }
            }
            else {
              iVar10 = 1;
            }
            if (iVar7 < iVar10) break;
            if ((int)(0x7ffffff / (longlong)(0x24 - iVar10)) < iVar9) {
              FUN_00eae9a0();
              FUN_009115d0(&PTR_DAT_01be1948);
                    /* WARNING: Subroutine does not return */
              FUN_00eaeefb();
            }
            iVar9 = iVar9 * (0x24 - iVar10);
            local_34 = local_34 + 0x24;
            uVar6 = uVar5;
            if ((int)uVar3 <= (int)uVar5) {
              FUN_00eae9a0();
              FUN_009115d0(&PTR_DAT_01be1948);
                    /* WARNING: Subroutine does not return */
              FUN_00eaeefb();
            }
          }
          local_2c = FUN_00955ac0(iVar4 == 0);
          iVar9 = (((*(int *)(iVar2 + 0x10) + *(int *)(iVar2 + 0xc)) - local_1c) - local_38) + 1;
          iVar4 = local_30 / iVar9;
          if ((int)(0x7ffffff - local_28) < iVar4) {
            FUN_00eae9a0();
            FUN_009115d0(&PTR_DAT_01be1948);
                    /* WARNING: Subroutine does not return */
            FUN_00eaeefb();
          }
          local_28 = local_28 + iVar4;
          local_30 = local_30 % iVar9;
          if ((0x10ffff < local_28) || (local_28 - 0xd800 < 0x800)) {
            FUN_00eae9a0();
            FUN_009115d0(&PTR_DAT_01be1948);
                    /* WARNING: Subroutine does not return */
            FUN_00eaeefb();
          }
          uVar8 = FUN_00912b70();
          iVar4 = local_30;
          local_48 = local_1c;
          if (0 < local_38) {
            for (; 0 < iVar4; iVar4 = iVar4 + -1) {
              if (*(int *)(iVar2 + 0x10) + *(int *)(iVar2 + 0xc) <= local_48) {
                FUN_00eae9a0();
                FUN_009115d0(&PTR_DAT_01be1948);
                    /* WARNING: Subroutine does not return */
                FUN_00eaeefb();
              }
              iVar9 = FUN_009772c0();
              if (iVar9 - 0xd800U < 0x800) {
                local_48 = local_48 + 1;
              }
              local_48 = local_48 + 1;
            }
          }
          FUN_00977a60(uVar8);
          if (0xffff < (int)local_28) {
            local_38 = local_38 + 1;
          }
          iVar4 = local_30 + 1;
        }
        iVar4 = FUN_00945970();
        bVar11 = iVar4 == 0x40;
        if (local_1c < *(int *)(iVar2 + 0x10) + *(int *)(iVar2 + 0xc)) {
          do {
            iVar9 = FUN_009772c0();
            if (0x3ff < iVar9 - 0xdc00U) {
              iVar4 = FUN_00945970();
              if (bVar11) {
                if (iVar4 == 0x20) goto LAB_00955969;
              }
              else if (iVar4 == 0x40) {
LAB_00955969:
                FUN_00eae9a0();
                FUN_009115d0(&PTR_DAT_01be1948);
                    /* WARNING: Subroutine does not return */
                FUN_00eaeefb();
              }
            }
            local_1c = local_1c + 1;
          } while (local_1c < *(int *)(iVar2 + 0x10) + *(int *)(iVar2 + 0xc));
        }
        if ((bVar11) && (iVar4 != 0x40)) {
          FUN_00eae9a0();
          FUN_009115d0(&PTR_DAT_01be1948);
                    /* WARNING: Subroutine does not return */
          FUN_00eaeefb();
        }
      }
      if (0x3f < (int)(uVar3 - local_18)) {
        FUN_00eae9a0();
        FUN_009115d0(&PTR_DAT_01be1948);
                    /* WARNING: Subroutine does not return */
        FUN_00eaeefb();
      }
      if (uVar1 != uVar3) {
        FUN_009779b0();
      }
      local_18 = uVar3 + 1;
      local_1c = *(int *)(iVar2 + 0x10) + *(int *)(iVar2 + 0xc);
    } while ((int)uVar3 < (int)uVar1);
  }
  iVar4 = *(int *)(iVar2 + 0x10);
  iVar2 = *(int *)(iVar2 + 0xc);
  FUN_009772c0();
  iVar9 = FUN_00955130();
  if ((int)(0xff - (uint)(iVar9 == 0)) < iVar4 + iVar2) {
    iVar2 = FUN_00eae9a0();
    FUN_00977150();
    FUN_009772c0();
    iVar4 = FUN_00955130();
    *(uint *)(iVar2 + 4) = 0xff - (uint)(iVar4 == 0);
    FUN_00eae9a0();
    FUN_00930f10();
    FUN_009115d0(&PTR_DAT_01be1948);
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  FUN_00977000();
  return;
}

