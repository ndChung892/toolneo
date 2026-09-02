/* Address: 00a2e620 | Ghidra name: FUN_00a2e620 */

undefined4 __fastcall FUN_00a2e620(int param_1)

{
  int iVar1;
  HANDLE pvVar2;
  undefined1 local_18 [4];
  undefined4 local_14;
  
  local_14 = 0;
  if (param_1 == 0) {
    FUN_00eae9a0();
    FUN_00911540();
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  iVar1 = FUN_00a2b580(local_18,0,0);
  if (iVar1 == 0) {
    iVar1 = FUN_00e8fd55();
    if (*(int *)(iVar1 + 4) == 6) {
      FUN_00eae9a0();
      FUN_00911540();
                    /* WARNING: Subroutine does not return */
      FUN_00eaeefb();
    }
  }
  FUN_00eaf9f0();
  pvVar2 = GetCurrentProcess();
  FUN_00eafa21();
  iVar1 = FUN_00a2b390(2,1,0,&local_14,pvVar2);
  if (iVar1 != 0) {
    return local_14;
  }
  FUN_00eae9a0();
  FUN_009a1480();
  FUN_0093bd10();
                    /* WARNING: Subroutine does not return */
  FUN_00eaeefb();
}

