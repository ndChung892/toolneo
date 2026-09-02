/* Address: 008b5620 | Ghidra name: FUN_008b5620 */

float10 __fastcall FUN_008b5620(int param_1)

{
  int iVar1;
  uint uVar2;
  longlong lVar3;
  uint extraout_EAX;
  int extraout_EDX;
  float10 fVar4;
  longlong lVar5;
  ULONGLONG UVar6;
  
  if (*(int *)(param_1 + 0x9c) == 0) {
    FUN_00966f60(*(undefined4 *)(param_1 + 0x70));
    if (*(int *)(param_1 + 0x94) == 0) {
      fVar4 = (float10)FUN_008b573f();
      return fVar4;
    }
    FUN_009671c0();
  }
  UVar6 = GetTickCount64();
  fVar4 = (float10)UVar6;
  iVar1 = *(int *)(param_1 + 0xa0);
  if (DAT_01c81020 != 0) {
    fVar4 = (float10)FUN_00eaf191();
  }
  if (iVar1 == 0) {
    uVar2 = (uint)(*(uint *)(param_1 + 0x54) < extraout_EAX);
    iVar1 = *(int *)(param_1 + 0x58) - extraout_EDX;
    if ((SBORROW4(*(int *)(param_1 + 0x58),extraout_EDX) != SBORROW4(iVar1,uVar2)) !=
        (int)(iVar1 - uVar2) < 0) {
      *(undefined4 *)(param_1 + 0xa0) = 1;
      *(uint *)(param_1 + 0x5c) = *(uint *)(param_1 + 0x44) + extraout_EAX;
      *(uint *)(param_1 + 0x60) =
           extraout_EDX + *(int *)(param_1 + 0x48) +
           (uint)CARRY4(*(uint *)(param_1 + 0x44),extraout_EAX);
      do {
        uVar2 = *(uint *)(param_1 + 0x4c);
        iVar1 = *(int *)(param_1 + 0x50);
        lVar3 = *(longlong *)(param_1 + 0x4c);
        lVar5 = FUN_00eafbe0(uVar2,iVar1,uVar2 + 1,iVar1 + (uint)(0xfffffffe < uVar2));
      } while (lVar5 != lVar3);
      FUN_008b44c0(uVar2 + 1,iVar1 + (uint)(0xfffffffe < uVar2));
      fVar4 = (float10)FUN_008be940();
    }
  }
  else if ((iVar1 == 1) &&
          (uVar2 = (uint)(*(uint *)(param_1 + 0x5c) < extraout_EAX),
          iVar1 = *(int *)(param_1 + 0x60) - extraout_EDX,
          (SBORROW4(*(int *)(param_1 + 0x60),extraout_EDX) != SBORROW4(iVar1,uVar2)) !=
          (int)(iVar1 - uVar2) < 0)) {
                    /* WARNING: Subroutine does not return */
    FUN_008b5910();
  }
  return fVar4;
}

