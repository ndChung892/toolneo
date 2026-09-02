/* Address: 0089c820 | Ghidra name: FUN_0089c820 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_0089c820(int param_1)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  int iVar5;
  uint local_64;
  int local_5c;
  uint local_58;
  uint local_4c;
  int local_44;
  uint local_40;
  uint local_34;
  int local_2c;
  uint local_28;
  uint local_1c;
  int local_14;
  uint local_10;
  
  iVar5 = -0x60;
  do {
    *(undefined4 *)(&stack0xfffffff4 + iVar5) = 0;
    *(undefined4 *)(&stack0xfffffff8 + iVar5) = 0;
    *(undefined4 *)(&stack0xfffffffc + iVar5) = 0;
    *(undefined4 *)(&stack0x00000000 + iVar5) = 0;
    *(undefined4 *)(&stack0x00000004 + iVar5) = 0;
    *(undefined4 *)(&stack0x00000008 + iVar5) = 0;
    *(undefined4 *)(&stack0x0000000c + iVar5) = 0;
    *(undefined4 *)(&stack0x00000010 + iVar5) = 0;
    *(undefined4 *)(&stack0x00000014 + iVar5) = 0;
    *(undefined4 *)(&stack0x00000018 + iVar5) = 0;
    *(undefined4 *)(&stack0x0000001c + iVar5) = 0;
    *(undefined4 *)(&stack0x00000020 + iVar5) = 0;
    iVar5 = iVar5 + 0x30;
  } while (iVar5 != 0);
  iVar5 = FUN_00a01370();
  if (iVar5 == 0) {
    if (*(int *)(param_1 + 0x18) == 0) {
      FUN_0099d430(1);
      if (local_34 <= local_28) {
        puVar1 = (undefined4 *)(local_2c + local_34 * 2);
        if (local_28 - local_34 < 6) {
          FUN_0099d6f0();
        }
        else {
          *puVar1 = 0x720050;
          puVar1[1] = 0x78006f;
          puVar1[2] = 0x200079;
        }
        FUN_00e52ce0(&PTR_DAT_0154d720);
        FUN_0099d560();
        goto LAB_0089cafc;
      }
    }
    else {
      FUN_0099d430(2);
      uVar4 = _UNK_018d92cc;
      uVar3 = _UNK_018d92c8;
      uVar2 = _UNK_018d92c4;
      if (local_1c <= local_10) {
        puVar1 = (undefined4 *)(local_14 + local_1c * 2);
        if (local_10 - local_1c < 8) {
          FUN_0099d6f0();
        }
        else {
          *puVar1 = _DAT_018d92c0;
          puVar1[1] = uVar2;
          puVar1[2] = uVar3;
          puVar1[3] = uVar4;
          local_1c = local_1c + 8;
        }
        FUN_00e52ce0(&PTR_DAT_015473b8);
        uVar4 = _UNK_018d92dc;
        uVar3 = _UNK_018d92d8;
        uVar2 = _UNK_018d92d4;
        if (local_1c <= local_10) {
          puVar1 = (undefined4 *)(local_14 + local_1c * 2);
          if (local_10 - local_1c < 0x16) {
            FUN_0099d6f0();
          }
          else {
            *puVar1 = _DAT_018d92d0;
            puVar1[1] = uVar2;
            puVar1[2] = uVar3;
            puVar1[3] = uVar4;
            uVar4 = _UNK_018d92ec;
            uVar3 = _UNK_018d92e8;
            uVar2 = _UNK_018d92e4;
            puVar1[4] = _DAT_018d92e0;
            puVar1[5] = uVar2;
            puVar1[6] = uVar3;
            puVar1[7] = uVar4;
            puVar1[8] = 0x720050;
            puVar1[9] = 0x78006f;
            puVar1[10] = 0x200079;
          }
          FUN_00e52ce0(&PTR_DAT_0154d720);
          FUN_0099d560();
          iVar5 = FUN_00905410();
          if (iVar5 == 0) {
            FUN_00906a20();
          }
          FUN_00906a20();
          goto LAB_0089cafc;
        }
      }
    }
  }
  else if (*(int *)(param_1 + 0x18) == 0) {
    FUN_0099d430(1);
    if (local_64 <= local_58) {
      puVar1 = (undefined4 *)(local_5c + local_64 * 2);
      if (local_58 - local_64 < 7) {
        FUN_0099d6f0();
      }
      else {
        *puVar1 = 0x740068;
        puVar1[1] = 0x700074;
        puVar1[2] = 0x2f003a;
        *(undefined2 *)(puVar1 + 3) = 0x2f;
      }
      FUN_00e52ce0(&PTR_DAT_015473b8);
      FUN_0099d560();
LAB_0089cafc:
      FUN_00906a20();
      return;
    }
  }
  else {
    FUN_0099d430(1);
    uVar4 = _UNK_018d92cc;
    uVar3 = _UNK_018d92c8;
    uVar2 = _UNK_018d92c4;
    if (local_4c <= local_40) {
      puVar1 = (undefined4 *)(local_44 + local_4c * 2);
      if (local_40 - local_4c < 8) {
        FUN_0099d6f0();
      }
      else {
        *puVar1 = _DAT_018d92c0;
        puVar1[1] = uVar2;
        puVar1[2] = uVar3;
        puVar1[3] = uVar4;
      }
      FUN_00e52ce0(&PTR_DAT_015473b8);
      FUN_0099d560();
      iVar5 = FUN_00905410();
      if (iVar5 == 0) {
        FUN_00906a20();
      }
      FUN_00906a20();
      goto LAB_0089cafc;
    }
  }
                    /* WARNING: Subroutine does not return */
  FUN_009318f0();
}

