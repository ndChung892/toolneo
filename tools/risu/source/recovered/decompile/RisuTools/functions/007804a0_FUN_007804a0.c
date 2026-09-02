/* Address: 007804a0 | Ghidra name: FUN_007804a0 */

undefined4 __thiscall FUN_007804a0(int param_1,uint param_2,undefined4 param_3)

{
  uint uVar1;
  int iVar2;
  int iVar3;
  undefined4 uVar4;
  undefined4 *puVar5;
  LPTHREAD_START_ROUTINE lpStartAddress;
  HANDLE pvVar6;
  int iVar7;
  uint *puVar8;
  uint *puVar9;
  LPSECURITY_ATTRIBUTES lpThreadAttributes;
  SIZE_T dwStackSize;
  LPVOID lpParameter;
  DWORD dwCreationFlags;
  LPDWORD lpThreadId;
  undefined4 in_stack_fffffec8;
  undefined4 local_f0;
  undefined4 local_ec;
  undefined1 local_e8 [4];
  uint local_e4 [8];
  uint local_c4;
  uint local_b8;
  undefined1 local_b4 [12];
  uint local_a8;
  uint local_9c;
  uint local_90;
  uint local_84;
  uint local_80 [5];
  uint local_6c;
  LPVOID local_68;
  HANDLE local_64;
  undefined4 uStack_60;
  undefined4 uStack_5c;
  undefined4 uStack_58;
  undefined4 local_54;
  undefined4 uStack_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined4 local_44;
  undefined4 uStack_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 local_34;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 local_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 local_14;
  
  uVar1 = param_2;
  iVar2 = -0xf0;
  do {
    *(undefined4 *)(&stack0xfffffff0 + iVar2) = 0;
    *(undefined4 *)(&stack0xfffffff4 + iVar2) = 0;
    *(undefined4 *)(&stack0xfffffff8 + iVar2) = 0;
    *(undefined4 *)(&stack0xfffffffc + iVar2) = 0;
    puVar5 = (undefined4 *)(&stack0x00000000 + iVar2);
    *puVar5 = 0;
    puVar5[1] = 0;
    puVar5[2] = 0;
    puVar5[3] = 0;
    *(undefined4 *)(&stack0x00000010 + iVar2) = 0;
    *(undefined4 *)(&stack0x00000014 + iVar2) = 0;
    *(undefined4 *)(&stack0x00000018 + iVar2) = 0;
    *(undefined4 *)(&stack0x0000001c + iVar2) = 0;
    iVar2 = iVar2 + 0x30;
  } while (iVar2 != 0);
  iVar2 = FUN_00eae9a0();
  FUN_00eaec39();
  FUN_00911390();
  FUN_008feb40();
  FUN_0098e190(&PTR_DAT_01ba44b8);
  iVar3 = FUN_0098b370();
  if (iVar3 == 0) {
    iVar2 = *(int *)(param_1 + 4);
    FUN_00906aa0(&PTR_DAT_01b408fc);
    (**(code **)(iVar2 + 0x10))();
  }
  else {
    *(undefined4 *)(iVar2 + 0xc) = 0;
    if ((char)uVar1 == '\0') {
      FUN_00901a50();
      FUN_009022b0();
    }
    else {
      FUN_00eae9a0();
      FUN_00eae9a0();
      FUN_00896540();
      FUN_008958d0(1);
      FUN_00895830(10000000,0);
      uVar4 = FUN_00eae9a0();
      local_e8[0] = 0;
      FUN_00a07400(local_e8,0,0);
      if (PTR_FUN_01c21d84 != (undefined *)0x0) {
        FUN_00e8e57c();
      }
      FUN_00896130(uVar4);
      FUN_00895970(0,0);
      FUN_00cc8b80();
      iVar3 = FUN_00899570();
      if (iVar3 == 0) {
        iVar3 = *(int *)(param_1 + 4);
        FUN_0099d430(1);
        puVar8 = local_e4;
        puVar9 = local_80;
        for (iVar7 = 6; iVar7 != 0; iVar7 = iVar7 + -1) {
          *puVar9 = *puVar8;
          puVar8 = puVar8 + 1;
          puVar9 = puVar9 + 1;
        }
        if (local_6c < local_80[2]) {
                    /* WARNING: Subroutine does not return */
          FUN_009318f0();
        }
        if (local_6c - local_80[2] < 0x31) {
          FUN_0099d6f0();
        }
        else {
          FUN_00930280(0x62);
          local_80[2] = local_80[2] + 0x31;
        }
        FUN_00dae040();
        FUN_0099d560();
        (**(code **)(iVar3 + 0x10))();
      }
      else {
        FUN_008993b0();
        FUN_00896800(0);
        FUN_00cc8b80();
        iVar3 = FUN_00909ad0();
        if (iVar3 != 0) {
          FUN_00a51650();
          puVar5 = (undefined4 *)FUN_00a51200();
          if (puVar5[7] != 0) {
            if ((undefined *)*puVar5 == &DAT_01626e9c) {
              FUN_00a4fcf0();
            }
            else {
              FUN_00a502b0();
            }
            FUN_00a4f4a0();
            iVar3 = FUN_00a4f280();
            if (iVar3 == 0) {
                    /* WARNING: Subroutine does not return */
              FUN_00931d20();
            }
            iVar7 = iVar3 + 8;
            uVar4 = *(undefined4 *)(iVar3 + 4);
            iVar3 = iVar7;
            local_ec = uVar4;
            FUN_00958ea0(iVar7,uVar4);
            iVar3 = FUN_00dd21c0(&local_f0,iVar3,uVar4);
            if (iVar3 != 0) {
              if (iVar3 != 1) {
                    /* WARNING: Subroutine does not return */
                FUN_00de72e0();
              }
                    /* WARNING: Subroutine does not return */
              FUN_00dca280(iVar7,local_ec);
            }
            *(undefined4 *)(iVar2 + 0xc) = local_f0;
          }
        }
      }
      FUN_00780be9();
      if (0 < *(int *)(iVar2 + 0xc)) {
        iVar3 = *(int *)(param_1 + 4);
        FUN_0099d430(1);
        if (local_84 < local_90) goto LAB_00780be3;
        if (local_84 - local_90 < 0x33) {
          FUN_0099d6f0();
        }
        else {
          FUN_00930280(0x66);
          local_90 = local_90 + 0x33;
        }
        FUN_00de77e0();
        FUN_0099d560();
        (**(code **)(iVar3 + 0x10))();
        FUN_0092af10();
        FUN_00901a50();
        FUN_009022b0();
      }
    }
    FUN_00906b80(param_3,&PTR_DAT_01b3c83c);
    local_54 = 0;
    uStack_50 = 0;
    uStack_4c = 0;
    uStack_48 = 0;
    local_44 = 0;
    uStack_40 = 0;
    uStack_3c = 0;
    uStack_38 = 0;
    local_34 = 0;
    uStack_30 = 0;
    uStack_2c = 0;
    uStack_28 = 0;
    local_24 = 0;
    uStack_20 = 0;
    uStack_1c = 0;
    uStack_18 = 0;
    local_14 = 0;
    uStack_48 = FUN_00d94a00(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
    local_64 = (HANDLE)0x0;
    uStack_60 = 0;
    uStack_5c = 0;
    uStack_58 = 0;
    iVar3 = FUN_00780000(&local_64,&local_54,0,0,4,0,0,0);
    if (iVar3 == 0) {
      iVar2 = *(int *)(param_1 + 4);
      FUN_0099d430(1);
      if (local_9c < local_a8) goto LAB_00780be3;
      if (local_9c - local_a8 < 0x4b) {
        FUN_0099d6f0();
      }
      else {
        FUN_00930280(0x96);
        local_a8 = local_a8 + 0x4b;
      }
      FUN_00e8fd55();
      FUN_00de77e0();
      FUN_0099d560();
      (**(code **)(iVar2 + 0x10))();
    }
    else {
      if (PTR_FUN_01c22140 != (undefined *)0x0) {
        FUN_00e8eb87();
      }
      FUN_00906a20();
      iVar3 = FUN_0097d6e0();
      local_68 = (LPVOID)FUN_007801e0(0x40,0x3000,*(undefined4 *)(iVar3 + 4));
      if (local_68 != (LPVOID)0x0) {
        FUN_00780250(local_b4,*(undefined4 *)(iVar3 + 4),iVar3);
        FUN_00780390();
        lpStartAddress = (LPTHREAD_START_ROUTINE)FUN_007802e0();
        if (lpStartAddress != (LPTHREAD_START_ROUTINE)0x0) {
          lpThreadId = (LPDWORD)0x0;
          dwCreationFlags = 0;
          dwStackSize = 0;
          lpThreadAttributes = (LPSECURITY_ATTRIBUTES)0x0;
          pvVar6 = local_64;
          lpParameter = local_68;
          FUN_00eaf9f0();
          pvVar6 = CreateRemoteThread(pvVar6,lpThreadAttributes,dwStackSize,lpStartAddress,
                                      lpParameter,dwCreationFlags,lpThreadId);
          FUN_00eafa21();
          if (pvVar6 != (HANDLE)0x0) {
            FUN_00780440();
            FUN_007803e0();
          }
        }
      }
      FUN_00780180();
      *(undefined4 *)(iVar2 + 8) = uStack_5c;
      FUN_007803e0();
      FUN_007803e0();
      if (0 < *(int *)(iVar2 + 8)) {
        FUN_00bc1800(param_2 & 0xff);
        iVar3 = *(int *)(param_1 + 4);
        FUN_0099d430(1);
        if (local_c4 <= local_b8) {
          if (local_b8 - local_c4 < 0x38) {
            FUN_0099d6f0();
          }
          else {
            FUN_00930280(0x70);
            local_c4 = local_c4 + 0x38;
          }
          FUN_00de77e0();
          FUN_0099d560();
          (**(code **)(iVar3 + 0x10))();
          if (0 < *(int *)(iVar2 + 0xc)) {
            FUN_00eae9a0();
            FUN_00e98d0c(in_stack_fffffec8);
            FUN_00974e80();
          }
          return *(undefined4 *)(iVar2 + 8);
        }
LAB_00780be3:
                    /* WARNING: Subroutine does not return */
        FUN_009318f0();
      }
      (**(code **)(*(int *)(param_1 + 4) + 0x10))();
    }
  }
  return 0;
}

