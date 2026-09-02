/* Address: 00985540 | Ghidra name: FUN_00985540 */

int __fastcall FUN_00985540(int param_1,byte *param_2,undefined4 *param_3,int param_4)

{
  int *piVar1;
  int iVar2;
  undefined1 uVar3;
  byte *pbVar6;
  uint uVar7;
  uint local_1c;
  int local_14;
  undefined1 uVar4;
  undefined1 uVar5;
  
  if ((param_3 != (undefined4 *)0x0) && ((undefined *)*param_3 != &DAT_0161dcd4)) {
                    /* WARNING: Subroutine does not return */
    FUN_0099ace0();
  }
  local_14 = 0;
  pbVar6 = param_2 + param_4;
  local_1c = 0;
  uVar7 = 0;
  if (param_3 == (undefined4 *)0x0) {
    if ((undefined *)**(undefined4 **)(param_1 + 0xc) == &DAT_016157cc) {
      piVar1 = (int *)FUN_00eae9a0();
      piVar1[7] = -1;
      piVar1[8] = -1;
      FUN_00eaebef();
    }
    else {
      piVar1 = (int *)FUN_00eae9a0();
    }
  }
  else {
    local_1c = param_3[9];
    uVar7 = param_3[8];
    piVar1 = (int *)FUN_0097a890();
  }
  piVar1[3] = (int)param_2;
  piVar1[4] = 0;
  while ((param_2 < pbVar6 && (-1 < local_14))) {
    if (*(char *)(param_1 + 0x17) == '\0') {
      uVar7 = (uVar7 >> 8) + (uint)*param_2 * 0x1000000;
    }
    else {
      uVar7 = uVar7 * 0x100 + (uint)*param_2;
    }
    param_2 = param_2 + 1;
    local_1c = local_1c + 1;
    if (3 < (int)local_1c) {
      local_1c = 0;
      if ((uVar7 < 0x110000) && ((uVar7 < 0xd800 || (0xdfff < uVar7)))) {
        if (0xffff < uVar7) {
          local_14 = local_14 + 1;
        }
        local_14 = local_14 + 1;
      }
      else {
        uVar3 = (undefined1)(uVar7 >> 8);
        uVar4 = (undefined1)(uVar7 >> 0x10);
        uVar5 = (undefined1)(uVar7 >> 0x18);
        if (*(char *)(param_1 + 0x17) == '\0') {
          iVar2 = FUN_00eaea6e();
          *(char *)(iVar2 + 8) = (char)uVar7;
          *(undefined1 *)(iVar2 + 9) = uVar3;
          *(undefined1 *)(iVar2 + 10) = uVar4;
          *(undefined1 *)(iVar2 + 0xb) = uVar5;
        }
        else {
          iVar2 = FUN_00eaea6e();
          *(undefined1 *)(iVar2 + 8) = uVar5;
          *(undefined1 *)(iVar2 + 9) = uVar4;
          *(undefined1 *)(iVar2 + 10) = uVar3;
          *(char *)(iVar2 + 0xb) = (char)uVar7;
        }
        if ((undefined *)*piVar1 == &DAT_01615810) {
          iVar2 = *(int *)(piVar1[6] + 4);
        }
        else {
          iVar2 = (**(code **)(*piVar1 + 0x30))(param_2);
        }
        local_14 = local_14 + iVar2;
      }
      uVar7 = 0;
    }
  }
  if ((0 < (int)local_1c) && ((param_3 == (undefined4 *)0x0 || (*(char *)(param_3 + 7) != '\0')))) {
    iVar2 = FUN_00eaea6e();
    if (*(char *)(param_1 + 0x17) == '\0') {
      do {
        local_1c = local_1c - 1;
        if (*(uint *)(iVar2 + 4) <= local_1c) {
LAB_009857da:
                    /* WARNING: Subroutine does not return */
          FUN_009c2bf0();
        }
        *(char *)(iVar2 + 8 + local_1c) = (char)(uVar7 >> 0x18);
        uVar7 = uVar7 << 8;
      } while (0 < (int)local_1c);
    }
    else {
      do {
        local_1c = local_1c - 1;
        if (*(uint *)(iVar2 + 4) <= local_1c) goto LAB_009857da;
        *(char *)(iVar2 + 8 + local_1c) = (char)uVar7;
        uVar7 = uVar7 >> 8;
      } while (0 < (int)local_1c);
    }
    if ((undefined *)*piVar1 == &DAT_01615810) {
      iVar2 = *(int *)(piVar1[6] + 4);
    }
    else {
      iVar2 = (**(code **)(*piVar1 + 0x30))(param_2);
    }
    local_14 = local_14 + iVar2;
  }
  if (local_14 < 0) {
    FUN_00eae9a0();
    FUN_009117c0(&PTR_DAT_01bcc2f0);
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  return local_14;
}

