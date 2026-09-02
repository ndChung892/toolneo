/* Address: 008a6e90 | Ghidra name: FUN_008a6e90 */

undefined4 __fastcall FUN_008a6e90(int param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  char cVar1;
  int iVar2;
  int extraout_ECX;
  undefined4 uVar3;
  
  iVar2 = FUN_00892e60(param_4);
  if (iVar2 == 0) {
    iVar2 = FUN_0099aa80();
    if (iVar2 == 0) {
      iVar2 = FUN_0099aa80();
      if (iVar2 == 0) {
        FUN_00eaed47();
        return 0;
      }
      iVar2 = FUN_0099aa80(iVar2);
      if (iVar2 == 0) {
        uVar3 = 0;
      }
      else {
        uVar3 = *(undefined4 *)(iVar2 + 0x2c);
      }
      cVar1 = *(char *)(param_1 + 0x56);
      iVar2 = FUN_00eae9a0();
      *(undefined4 *)(iVar2 + 0x24) = 0x80131500;
      *(undefined ***)(iVar2 + 4) = &PTR_DAT_01b4dcf8;
      iVar2 = FUN_00eaebef();
      *(undefined4 *)(iVar2 + 0x24) = *(undefined4 *)(extraout_ECX + 0x24);
      *(undefined4 *)(iVar2 + 0x34) = 0;
      *(undefined4 *)(iVar2 + 0x38) = 0;
      *(undefined4 *)(iVar2 + 0x30) = uVar3;
      *(uint *)(iVar2 + 0x2c) = (uint)(cVar1 != '\0');
      FUN_00eaeca8();
    }
    else {
      iVar2 = FUN_00eae9a0();
      *(undefined4 *)(iVar2 + 0x24) = 0x80131500;
      *(undefined ***)(iVar2 + 4) = &PTR_DAT_01b4dcf8;
      iVar2 = FUN_00eaec39();
      *(undefined4 *)(iVar2 + 0x24) = *(undefined4 *)(param_2 + 0x24);
      FUN_00eaeca8();
    }
  }
  else {
    iVar2 = FUN_00eae9a0();
    if (PTR_FUN_01c21d40 != (undefined *)0x0) {
      FUN_00e8e527();
    }
    *(undefined4 *)(iVar2 + 0x24) = 0x80131500;
    FUN_00eaebca();
    FUN_00eaec39();
    *(undefined4 *)(iVar2 + 0x24) = 0x8013153b;
    FUN_00eaec39();
    FUN_00eaed7c();
  }
  return 1;
}

