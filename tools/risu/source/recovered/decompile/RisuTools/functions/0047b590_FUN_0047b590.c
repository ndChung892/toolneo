/* Address: 0047b590 | Ghidra name: FUN_0047b590 */

undefined4 __fastcall FUN_0047b590(undefined1 *param_1)

{
  undefined1 uVar1;
  int iVar2;
  
  FUN_00978480(0x14);
  uVar1 = *param_1;
  iVar2 = FUN_00eae9a0();
  *(undefined1 *)(iVar2 + 4) = uVar1;
  FUN_009007a0();
  FUN_009775b0();
  FUN_00978480(0x1c);
  uVar1 = param_1[1];
  iVar2 = FUN_00eae9a0();
  *(undefined1 *)(iVar2 + 4) = uVar1;
  FUN_009007a0();
  FUN_009775b0();
  FUN_00978480(0xd);
  uVar1 = param_1[2];
  iVar2 = FUN_00eae9a0();
  *(undefined1 *)(iVar2 + 4) = uVar1;
  FUN_009007a0();
  FUN_009775b0();
  FUN_00978480(0x17);
  uVar1 = param_1[3];
  iVar2 = FUN_00eae9a0();
  *(undefined1 *)(iVar2 + 4) = uVar1;
  FUN_009007a0();
  FUN_009775b0();
  FUN_00978480(0x20);
  FUN_009775b0();
  return 1;
}

