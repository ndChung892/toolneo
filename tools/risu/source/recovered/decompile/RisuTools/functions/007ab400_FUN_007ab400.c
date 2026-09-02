/* Address: 007ab400 | Ghidra name: FUN_007ab400 */

/* WARNING: Removing unreachable block (ram,0x007abaf3) */
/* WARNING: Removing unreachable block (ram,0x007abb1d) */
/* WARNING: Removing unreachable block (ram,0x007abb25) */
/* WARNING: Removing unreachable block (ram,0x007abb82) */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_007ab400(int *param_1)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  int iVar4;
  int extraout_ECX;
  int iStack_28;
  int iStack_24;
  int iStack_20;
  int local_1c;
  int local_18;
  
  iVar4 = *param_1;
  switch(param_1[5]) {
  case 0:
    local_18 = param_1[7];
    param_1[7] = 0;
    param_1[5] = -1;
    do {
      if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      if (*(int *)(local_18 + 0x20) == 0) {
        iVar1 = 0;
      }
      else {
        if (*(int *)(DAT_01c289bc + 0x2c) == 0) {
          FUN_00eae9a0();
          FUN_00e99647();
          FUN_00eaec14();
        }
        iVar1 = FUN_00e4e4a0();
      }
      if ((iVar1 == 0) || (*(char *)(iVar1 + 0x3c) != '\0')) {
        FUN_00906aa0(&PTR_DAT_01bde460);
        FUN_007876b0();
        param_1[5] = -2;
        if (param_1[6] == 0) {
          if (PTR_FUN_01c22110 != (undefined *)0x0) {
            FUN_00e8eaee();
          }
          FUN_00eaecdd();
          return;
        }
        iVar4 = FUN_00c0a790(0);
        if (iVar4 != 0) {
          return;
        }
                    /* WARNING: Subroutine does not return */
        FUN_00931e50();
      }
      local_1c = FUN_0077ac80();
      if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
        param_1[5] = 1;
        FUN_00eaecdd();
        FUN_00d99940();
        FUN_00dfc9c0();
        return;
      }
LAB_007ab814:
      if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      if (*(char *)(local_1c + 0x20) == '\0') {
        iStack_24 = FUN_0077acc0();
        if ((*(uint *)(iStack_24 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 3;
          FUN_00eaecdd();
          FUN_00d99940();
          FUN_00dfca00(&PTR_DAT_01568d68);
          return;
        }
LAB_007ab6c5:
        if ((*(uint *)(iStack_24 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        FUN_00eaecdd();
        iStack_28 = FUN_0077abc0();
        if ((*(uint *)(iStack_28 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 4;
          FUN_00eaeca8();
          FUN_00d99940();
          FUN_00dfca00(&PTR_DAT_01553fd0);
          return;
        }
LAB_007ab5ec:
        if ((*(uint *)(iStack_28 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        FUN_00eaebca();
        if ((*(int *)(extraout_ECX + 0xc) != 0) && (*(int *)(*(int *)(extraout_ECX + 8) + 4) != 0))
        {
          if (*(int *)(DAT_01c289bc + 0x30) == 0) {
            FUN_00eae9a0();
            FUN_00e99658();
            FUN_00eaec14();
          }
          FUN_00e4ee90(&PTR_DAT_01544498);
          iVar1 = FUN_00e4ee50();
          if (0 < *(int *)(iVar1 + 8)) {
            param_1[4] = 0;
            FUN_00966f60();
            if (*(int *)(iVar4 + 0xc) == 0) {
              FUN_00eae9a0();
              FUN_00e99735();
              FUN_00eaebef();
            }
            FUN_00e4ee90(&PTR_DAT_01544498);
            FUN_00e4ee50();
            uVar2 = FUN_00eae9a0();
            FUN_00e99746();
            uVar3 = FUN_00eae9a0();
            FUN_00cf24b0(0,0,0,uVar2);
            FUN_00e4e3a0();
                    /* WARNING: Subroutine does not return */
            FUN_00860240(uVar3);
          }
          iStack_20 = FUN_00975000(*(undefined4 *)(*(int *)(iVar4 + 4) + 0x1c));
          if ((*(uint *)(iStack_20 + 0x1c) & 0x1600000) == 0) {
            param_1[5] = 7;
            FUN_00eaecdd();
            FUN_00d99940();
            FUN_00dfc9c0();
            return;
          }
LAB_007ab460:
          if ((*(uint *)(iStack_20 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
        }
LAB_007abbe2:
        param_1[2] = 0;
        param_1[3] = 0;
      }
      else {
        iStack_20 = FUN_00975000(*(undefined4 *)(*(int *)(iVar4 + 4) + 0x1c));
        if ((*(uint *)(iStack_20 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 2;
          FUN_00eaecdd();
          FUN_00d99940();
          FUN_00dfc9c0();
          return;
        }
LAB_007ab767:
        if ((*(uint *)(iStack_20 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
      }
switchD_007ab445_default:
      FUN_00eae9a0();
      FUN_00eaeca8();
      local_18 = FUN_0077ad90();
    } while ((*(uint *)(local_18 + 0x1c) & 0x1600000) != 0);
    param_1[5] = 0;
    FUN_00eaeca8();
    FUN_00d99940();
    FUN_00dfca00(&PTR_DAT_01568f14);
    break;
  case 1:
    local_1c = param_1[8];
    param_1[8] = 0;
    param_1[5] = -1;
    goto LAB_007ab814;
  case 2:
    iStack_20 = param_1[9];
    param_1[9] = 0;
    param_1[5] = -1;
    goto LAB_007ab767;
  case 3:
    iStack_24 = param_1[10];
    param_1[10] = 0;
    param_1[5] = -1;
    goto LAB_007ab6c5;
  case 4:
    iStack_28 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007ab5ec;
  case 5:
    iVar1 = param_1[9];
    param_1[9] = 0;
    param_1[5] = -1;
    if ((*(uint *)(iVar1 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    uVar2 = *(undefined4 *)(param_1[4] + 0x28);
    FUN_00eaeae1();
    iVar1 = FUN_00eae9a0();
    *(undefined4 *)(iVar1 + 4) = uVar2;
    FUN_00eaebca();
    iVar1 = FUN_00eae9a0();
    *(undefined4 *)(iVar1 + 4) = 0;
    FUN_00eaebca();
    FUN_0077a610();
    iStack_20 = FUN_00975000(*(undefined4 *)(*(int *)(iVar4 + 4) + 0x1c));
    if ((*(uint *)(iStack_20 + 0x1c) & 0x1600000) != 0) goto LAB_007ab49d;
    param_1[5] = 6;
    FUN_00eaeca8();
    FUN_00d99940();
    FUN_00dfc9c0();
    break;
  case 6:
    iStack_20 = param_1[9];
    param_1[9] = 0;
    param_1[5] = -1;
LAB_007ab49d:
    if ((*(uint *)(iStack_20 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    FUN_00966f60();
    FUN_00b43480();
    FUN_009671c0();
    param_1[4] = 0;
    goto LAB_007abbe2;
  case 7:
    iStack_20 = param_1[9];
    param_1[9] = 0;
    param_1[5] = -1;
    goto LAB_007ab460;
  default:
    goto switchD_007ab445_default;
  }
  return;
}

