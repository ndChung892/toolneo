/* Address: 0091dca0 | Ghidra name: FUN_0091dca0 */

undefined4 __thiscall FUN_0091dca0(char param_1,int param_2,uint param_3)

{
  ushort uVar1;
  uint uVar2;
  int iVar3;
  uint uVar4;
  
  uVar2 = 0;
  if (0 < (int)param_3) {
    do {
      if (param_3 <= uVar2) {
LAB_0091de13:
                    /* WARNING: Subroutine does not return */
        FUN_009c2bf0();
      }
      uVar1 = *(ushort *)(param_2 + uVar2 * 2);
      uVar4 = (uint)uVar1;
      if (uVar4 < 0x4c) {
        if (uVar4 < 0x3b) {
          if ((uVar4 == 0x22) || (uVar4 == 0x27)) {
            uVar2 = uVar2 + 1;
            if ((int)uVar2 < (int)param_3) {
              if ((int)uVar2 < 0) {
                do {
                  if (param_3 <= uVar2) goto LAB_0091de13;
                } while ((*(ushort *)(param_2 + uVar2 * 2) != uVar4) &&
                        (uVar2 = uVar2 + 1, (int)uVar2 < (int)param_3));
              }
              else {
                do {
                  if (*(ushort *)(param_2 + uVar2 * 2) == uVar4) break;
                  uVar2 = uVar2 + 1;
                } while ((int)uVar2 < (int)param_3);
              }
            }
            if ((int)param_3 <= (int)uVar2) {
              if (param_1 == '\0') {
                return 0;
              }
              iVar3 = FUN_00eae9a0();
              *(ushort *)(iVar3 + 4) = uVar1;
              FUN_00eae9a0();
              FUN_00930f10();
              FUN_0091d220();
                    /* WARNING: Subroutine does not return */
              FUN_00eaeefb();
            }
          }
          else if (uVar4 == 0x3a) goto LAB_0091dd29;
        }
        else if ((uVar4 - 0x46 < 6) && ((0x25U >> (uVar4 - 0x46 & 0x1f) & 1) != 0))
        goto LAB_0091dd29;
LAB_0091dd78:
        uVar2 = uVar2 + 1;
      }
      else {
        if (0x68 < uVar4) {
          if (uVar4 < 0x74) {
            if ((uVar4 == 0x6d) || (uVar4 == 0x73)) goto LAB_0091dd29;
          }
          else if ((uVar4 == 0x74) || (uVar4 == 0x7a)) {
LAB_0091dd29:
            if (param_1 == '\0') {
              return 0;
            }
            FUN_00eae9a0();
            FUN_0091d220();
                    /* WARNING: Subroutine does not return */
            FUN_00eaeefb();
          }
          goto LAB_0091dd78;
        }
        if (uVar4 != 0x5c) {
          if ((uVar4 == 0x66) || (uVar4 == 0x68)) goto LAB_0091dd29;
          goto LAB_0091dd78;
        }
        if (uVar2 == param_3 - 1) {
          if (param_1 == '\0') {
            return 0;
          }
          FUN_00eae9a0();
          FUN_0091d220();
                    /* WARNING: Subroutine does not return */
          FUN_00eaeefb();
        }
        uVar2 = uVar2 + 2;
      }
    } while ((int)uVar2 < (int)param_3);
  }
  return 1;
}

