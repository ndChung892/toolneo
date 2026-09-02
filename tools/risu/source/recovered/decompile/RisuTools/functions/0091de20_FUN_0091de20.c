/* Address: 0091de20 | Ghidra name: FUN_0091de20 */

undefined4 __thiscall FUN_0091de20(char param_1,int param_2,uint param_3)

{
  ushort uVar1;
  int iVar2;
  uint uVar3;
  uint uVar4;
  
  uVar4 = 0;
  if (0 < (int)param_3) {
    do {
      if (param_3 <= uVar4) {
LAB_0091df72:
                    /* WARNING: Subroutine does not return */
        FUN_009c2bf0();
      }
      uVar1 = *(ushort *)(param_2 + uVar4 * 2);
      uVar3 = (uint)uVar1;
      if (uVar3 < 0x4e) {
        if (uVar3 < 0x28) {
          if ((uVar3 == 0x22) || (uVar3 == 0x27)) {
            uVar4 = uVar4 + 1;
            if ((int)uVar4 < (int)param_3) {
              if ((int)uVar4 < 0) {
                do {
                  if (param_3 <= uVar4) goto LAB_0091df72;
                } while ((*(ushort *)(param_2 + uVar4 * 2) != uVar3) &&
                        (uVar4 = uVar4 + 1, (int)uVar4 < (int)param_3));
              }
              else {
                do {
                  if (*(ushort *)(param_2 + uVar4 * 2) == uVar3) break;
                  uVar4 = uVar4 + 1;
                } while ((int)uVar4 < (int)param_3);
              }
            }
            if ((int)param_3 <= (int)uVar4) {
              if (param_1 == '\0') {
                return 0;
              }
              iVar2 = FUN_00eae9a0();
              *(ushort *)(iVar2 + 4) = uVar1;
              FUN_00eae9a0();
              FUN_00930f10();
              FUN_0091d220();
                    /* WARNING: Subroutine does not return */
              FUN_00eaeefb();
            }
          }
        }
        else if ((uVar3 == 0x2f) || (uVar3 == 0x4d)) goto LAB_0091de62;
LAB_0091de83:
        uVar4 = uVar4 + 1;
      }
      else {
        if (100 < uVar3) {
          if ((uVar3 - 0x6b < 0x10) && ((0xc001U >> (uVar3 - 0x6b & 0x1f) & 1) != 0)) {
LAB_0091de62:
            if (param_1 == '\0') {
              return 0;
            }
            FUN_00eae9a0();
            FUN_0091d220();
                    /* WARNING: Subroutine does not return */
            FUN_00eaeefb();
          }
          goto LAB_0091de83;
        }
        if (uVar3 != 0x5c) {
          if (uVar3 == 100) goto LAB_0091de62;
          goto LAB_0091de83;
        }
        if (uVar4 == param_3 - 1) {
          if (param_1 == '\0') {
            return 0;
          }
          FUN_00eae9a0();
          FUN_0091d220();
                    /* WARNING: Subroutine does not return */
          FUN_00eaeefb();
        }
        uVar4 = uVar4 + 2;
      }
    } while ((int)uVar4 < (int)param_3);
  }
  return 1;
}

