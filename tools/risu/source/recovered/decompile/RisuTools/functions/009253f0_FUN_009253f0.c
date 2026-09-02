/* Address: 009253f0 | Ghidra name: FUN_009253f0 */

int __fastcall FUN_009253f0(int param_1)

{
  int iVar1;
  int iVar2;
  
  switch(*(undefined4 *)(param_1 + 0x2c)) {
  case 1:
    iVar1 = FUN_00eae9a0();
    *(undefined4 *)(iVar1 + 0x24) = 0x80131500;
    *(undefined ***)(iVar1 + 4) = &PTR_DAT_01bad7c8;
    *(undefined4 *)(iVar1 + 0x24) = 0x80131501;
    *(undefined ***)(iVar1 + 0x2c) = &PTR_DAT_01be7274;
    *(undefined4 *)(iVar1 + 0x24) = 0x80004003;
    break;
  case 2:
    iVar1 = FUN_00eae9a0();
    FUN_009060f0(*(undefined4 *)(param_1 + 0x48),*(undefined4 *)(param_1 + 0x4c));
    FUN_00930f10();
    *(undefined4 *)(iVar1 + 0x24) = 0x80131500;
    FUN_00eaebca();
    *(undefined4 *)(iVar1 + 0x24) = 0x80131537;
    break;
  case 3:
    iVar1 = FUN_00eae9a0();
    FUN_009060f0(*(undefined4 *)(param_1 + 0x48),*(undefined4 *)(param_1 + 0x4c));
    FUN_00930f10();
    *(undefined4 *)(iVar1 + 0x24) = 0x80131500;
    FUN_00eaebca();
    *(undefined4 *)(iVar1 + 0x24) = 0x80131537;
    break;
  case 4:
    iVar1 = FUN_00eae9a0();
    FUN_009060f0(*(undefined4 *)(param_1 + 0x48),*(undefined4 *)(param_1 + 0x4c));
    FUN_00930f30(*(undefined4 *)(param_1 + 8));
    *(undefined4 *)(iVar1 + 0x24) = 0x80131500;
    FUN_00eaebca();
    *(undefined4 *)(iVar1 + 0x24) = 0x80131537;
    break;
  case 5:
    iVar1 = FUN_00eae9a0();
    FUN_009060f0(*(undefined4 *)(param_1 + 0x48),*(undefined4 *)(param_1 + 0x4c));
    FUN_00930f10();
    *(undefined4 *)(iVar1 + 0x24) = 0x80131500;
    FUN_00eaebca();
    *(undefined4 *)(iVar1 + 0x24) = 0x80131537;
    break;
  case 6:
    iVar1 = FUN_00eae9a0();
    FUN_009060f0(*(undefined4 *)(param_1 + 0x48),*(undefined4 *)(param_1 + 0x4c));
    FUN_00930f10();
    *(undefined4 *)(iVar1 + 0x24) = 0x80131500;
    FUN_00eaebca();
    *(undefined4 *)(iVar1 + 0x24) = 0x80131537;
    break;
  case 7:
    iVar1 = FUN_00eae9a0();
    *(undefined2 *)(iVar1 + 4) = *(undefined2 *)(param_1 + 0x30);
    iVar1 = FUN_00eae9a0();
    FUN_00930f10();
    *(undefined4 *)(iVar1 + 0x24) = 0x80131500;
    FUN_00eaebca();
    *(undefined4 *)(iVar1 + 0x24) = 0x80131537;
    break;
  case 8:
    iVar1 = FUN_00eae9a0();
    FUN_009060f0(*(undefined4 *)(param_1 + 0x48),*(undefined4 *)(param_1 + 0x4c));
    FUN_00930f10();
    *(undefined4 *)(iVar1 + 0x24) = 0x80131500;
    FUN_00eaebca();
    *(undefined4 *)(iVar1 + 0x24) = 0x80131537;
    break;
  case 9:
    iVar1 = FUN_00eae9a0();
    FUN_009060f0(*(undefined4 *)(param_1 + 0x48),*(undefined4 *)(param_1 + 0x4c));
    FUN_00930f10();
    *(undefined4 *)(iVar1 + 0x24) = 0x80131500;
    FUN_00eaebca();
    *(undefined4 *)(iVar1 + 0x24) = 0x80131537;
    break;
  case 10:
    iVar1 = FUN_00eae9a0();
    *(undefined4 *)(iVar1 + 0x24) = 0x80131500;
    *(undefined ***)(iVar1 + 4) = &PTR_DAT_01b935ac;
    *(undefined4 *)(iVar1 + 0x24) = 0x80131537;
    break;
  case 0xb:
    iVar1 = FUN_00eae9a0();
    FUN_009060f0(*(undefined4 *)(param_1 + 0x48),*(undefined4 *)(param_1 + 0x4c));
    FUN_00930f10();
    *(undefined4 *)(iVar1 + 0x24) = 0x80131500;
    FUN_00eaebca();
    *(undefined4 *)(iVar1 + 0x24) = 0x80131537;
    break;
  case 0xc:
    iVar1 = FUN_00eae9a0();
    *(undefined2 *)(iVar1 + 4) = *(undefined2 *)(param_1 + 0x30);
    iVar1 = FUN_00eae9a0();
    FUN_00930f10();
    *(undefined4 *)(iVar1 + 0x24) = 0x80131500;
    FUN_00eaebca();
    *(undefined4 *)(iVar1 + 0x24) = 0x80131537;
    break;
  case 0xd:
    iVar2 = FUN_00eae9a0();
    FUN_009060f0(*(undefined4 *)(param_1 + 0x48),*(undefined4 *)(param_1 + 0x4c));
    *(undefined4 *)(iVar2 + 4) = *(undefined4 *)(param_1 + 0x30);
    iVar1 = FUN_00eae9a0();
    FUN_00930f30(iVar2);
    *(undefined4 *)(iVar1 + 0x24) = 0x80131500;
    FUN_00eaebca();
    *(undefined4 *)(iVar1 + 0x24) = 0x80131537;
    break;
  case 0xe:
    iVar1 = FUN_00eae9a0();
    FUN_009060f0(*(undefined4 *)(param_1 + 0x48),*(undefined4 *)(param_1 + 0x4c));
    FUN_00930f10();
    *(undefined4 *)(iVar1 + 0x24) = 0x80131500;
    FUN_00eaebca();
    *(undefined4 *)(iVar1 + 0x24) = 0x80131537;
    break;
  default:
    return 0;
  }
  return iVar1;
}

