/* Address: 00a34720 | Ghidra name: FUN_00a34720 */

undefined ** __fastcall
FUN_00a34720(int param_1,uint param_2,char param_3,byte param_4,undefined4 param_5)

{
  undefined **ppuVar1;
  int iVar2;
  
  ppuVar1 = &PTR_DAT_01b39360;
  switch(param_1) {
  case 0x17:
    if (param_3 == '\x05') {
      iVar2 = FUN_00eae9a0();
      *(ushort *)(iVar2 + 4) = (ushort)param_4;
      ppuVar1 = (undefined **)FUN_00a321f0();
    }
    else {
      iVar2 = FUN_00eae9a0();
      *(ushort *)(iVar2 + 4) = (ushort)param_4;
      ppuVar1 = (undefined **)FUN_00a321f0();
    }
    break;
  case 0x18:
  case 0x19:
    break;
  case 0x1a:
    iVar2 = FUN_00eae9a0();
    *(uint *)(iVar2 + 4) = param_2 & 0x7fffffff;
    iVar2 = FUN_00eae9a0();
    *(undefined4 *)(iVar2 + 4) = param_5;
    ppuVar1 = (undefined **)FUN_00a32210(iVar2);
    break;
  case 0x1b:
    iVar2 = FUN_00eae9a0();
    *(char *)(iVar2 + 4) = param_3;
    ppuVar1 = (undefined **)FUN_00a321f0();
    break;
  case 0x1c:
    iVar2 = FUN_00eae9a0();
    *(char *)(iVar2 + 4) = param_3;
    ppuVar1 = (undefined **)FUN_00a321f0();
    break;
  case 0x1d:
    iVar2 = FUN_00eae9a0();
    *(char *)(iVar2 + 4) = param_3;
    ppuVar1 = (undefined **)FUN_00a321f0();
    break;
  case 0x1e:
    iVar2 = FUN_00eae9a0();
    *(char *)(iVar2 + 4) = param_3;
    ppuVar1 = (undefined **)FUN_00a321f0();
    break;
  case 0x1f:
    if (param_3 == '\x05') {
      ppuVar1 = (undefined **)FUN_00907270();
    }
    else {
      iVar2 = FUN_00eae9a0();
      *(char *)(iVar2 + 4) = param_3;
      ppuVar1 = (undefined **)FUN_00a321f0();
    }
    break;
  default:
    if (param_1 == 0x29) {
      ppuVar1 = &PTR_DAT_01bd7700;
    }
  }
  return ppuVar1;
}

