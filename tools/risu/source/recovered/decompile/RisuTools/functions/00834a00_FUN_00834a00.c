/* Address: 00834a00 | Ghidra name: FUN_00834a00 */

void __fastcall FUN_00834a00(int param_1)

{
  undefined4 uVar1;
  int iVar2;
  LPCRITICAL_SECTION lpCriticalSection;
  DWORD DVar3;
  DWORD Flags;
  
  uVar1 = FUN_009a16f0();
  *(undefined4 *)(param_1 + 4) = uVar1;
  lpCriticalSection = *(LPCRITICAL_SECTION *)(param_1 + 4);
  if (lpCriticalSection != (LPCRITICAL_SECTION)0x0) {
    SetLastError(0);
    Flags = 0;
    DVar3 = 4000;
    FUN_00eaf9f0();
    InitializeCriticalSectionEx(lpCriticalSection,DVar3,Flags);
    FUN_00eafa21();
    DVar3 = GetLastError();
    iVar2 = FUN_00e8fd55();
    *(DWORD *)(iVar2 + 4) = DVar3;
    return;
  }
  FUN_00eae9a0();
  FUN_0092e850();
                    /* WARNING: Subroutine does not return */
  FUN_00eaeefb();
}

