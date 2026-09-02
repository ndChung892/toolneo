/* Address: 00a33fd0 | Ghidra name: FUN_00a33fd0 */

undefined ** __fastcall FUN_00a33fd0(int param_1,undefined4 param_2,undefined4 param_3,byte param_4)

{
  ushort uVar1;
  undefined **ppuVar2;
  int iVar3;
  uint uVar4;
  uint uVar5;
  undefined4 uVar6;
  
  uVar4 = 0;
  iVar3 = 0;
  uVar5 = 0;
  uVar6 = 0;
  uVar1 = (ushort)param_4;
  if ((param_4 < 0x20) || (0x7e < param_4)) {
    FUN_0099d430(1);
    if (uVar5 < uVar4) {
                    /* WARNING: Subroutine does not return */
      FUN_009318f0();
    }
    if (uVar5 - uVar4 < 2) {
      FUN_0099d6f0();
    }
    else {
      *(undefined4 *)(iVar3 + uVar4 * 2) = 0x780030;
    }
    FUN_00dbc160(&PTR_DAT_01bd7b44);
    FUN_0099d560();
  }
  else {
    iVar3 = FUN_00eaea1e(param_4,param_4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
    *(ushort *)(iVar3 + 8) = uVar1;
  }
  ppuVar2 = &PTR_DAT_01b39360;
  switch(param_2) {
  case 0:
    FUN_00a3a080();
    iVar3 = FUN_00eae9a0();
    *(undefined4 *)(iVar3 + 4) = uVar6;
    ppuVar2 = (undefined **)FUN_00a321f0();
    break;
  case 1:
    ppuVar2 = &PTR_DAT_01b70b98;
    break;
  case 2:
    ppuVar2 = &PTR_DAT_01b70c5c;
    break;
  case 3:
    ppuVar2 = (undefined **)FUN_00a321f0();
    break;
  case 4:
    ppuVar2 = (undefined **)FUN_00a321f0();
    break;
  case 5:
    ppuVar2 = &PTR_DAT_01b7092c;
    break;
  case 6:
    ppuVar2 = (undefined **)FUN_00a321f0();
    break;
  case 7:
    ppuVar2 = (undefined **)FUN_00a321f0();
    break;
  case 8:
    ppuVar2 = (undefined **)FUN_00a321f0();
    break;
  case 9:
    ppuVar2 = (undefined **)FUN_00a321f0();
    break;
  case 10:
    ppuVar2 = (undefined **)FUN_00a321f0();
    break;
  case 0xb:
    ppuVar2 = (undefined **)FUN_00a321f0();
    break;
  case 0xc:
    ppuVar2 = (undefined **)FUN_00a321f0();
    break;
  case 0xd:
    ppuVar2 = &PTR_DAT_01b70d20;
    break;
  case 0xe:
    ppuVar2 = (undefined **)FUN_00a321f0();
    break;
  case 0xf:
    ppuVar2 = (undefined **)FUN_00a321f0();
    break;
  case 0x10:
    ppuVar2 = (undefined **)FUN_00a321f0();
    break;
  case 0x11:
    ppuVar2 = &PTR_DAT_01b709b4;
    break;
  case 0x12:
    ppuVar2 = (undefined **)FUN_00a321f0();
    break;
  case 0x13:
    ppuVar2 = (undefined **)FUN_00a321f0();
    break;
  case 0x14:
    ppuVar2 = (undefined **)FUN_00a321f0();
    break;
  case 0x15:
    ppuVar2 = (undefined **)FUN_00a321f0();
    break;
  case 0x16:
    iVar3 = FUN_00eae9a0();
    *(undefined1 *)(iVar3 + 4) = *(undefined1 *)(param_1 + 0x28);
    ppuVar2 = (undefined **)FUN_00a321f0();
    break;
  case 0x17:
    ppuVar2 = (undefined **)FUN_00a321f0();
    break;
  case 0x18:
    FUN_00a3a080();
    iVar3 = FUN_00eae9a0();
    *(undefined4 *)(iVar3 + 4) = uVar6;
    ppuVar2 = (undefined **)FUN_00a321f0();
    break;
  case 0x19:
    ppuVar2 = (undefined **)FUN_00907270();
    break;
  case 0x20:
    ppuVar2 = &PTR_DAT_01bbd9e4;
    break;
  case 0x21:
    ppuVar2 = &PTR_DAT_01bb7e80;
    break;
  case 0x22:
    ppuVar2 = &PTR_DAT_01bb7f74;
    break;
  case 0x23:
    ppuVar2 = (undefined **)FUN_00a321f0();
    break;
  case 0x24:
    ppuVar2 = (undefined **)FUN_00907270();
    break;
  case 0x25:
    ppuVar2 = (undefined **)FUN_00907270();
    break;
  case 0x26:
    ppuVar2 = &PTR_DAT_01bbdae8;
    break;
  case 0x27:
    ppuVar2 = &PTR_DAT_01bc72ac;
    break;
  case 0x28:
    ppuVar2 = (undefined **)FUN_00a321f0();
  }
  return ppuVar2;
}

