/* Address: 006e9100 | Ghidra name: FUN_006e9100 */

/* WARNING: Removing unreachable block (ram,0x006e91e8) */
/* WARNING: Removing unreachable block (ram,0x006e922d) */
/* WARNING: Removing unreachable block (ram,0x006e9237) */
/* WARNING: Removing unreachable block (ram,0x006e9252) */

int __fastcall FUN_006e9100(int param_1)

{
  int iVar1;
  
  FUN_00eae9a0();
  FUN_006b5000();
  FUN_005a8ea0();
  FUN_006b5110();
  if (param_1 == 0) {
    iVar1 = 0;
  }
  else {
    iVar1 = *(int *)(param_1 + 8);
  }
  if (iVar1 == 0) {
    iVar1 = FUN_00eaeae1();
    *(undefined4 *)(iVar1 + 8) = 1;
  }
  FUN_00d8d2f0();
  (*(code *)PTR_FUN_01c430b0)();
  do {
    iVar1 = (*(code *)PTR_FUN_01c3a2f8)();
    if (iVar1 == 0) {
      (*(code *)PTR_FUN_01c37080)();
      return 0;
    }
    iVar1 = (*(code *)PTR_FUN_01c430e8)();
    if (iVar1 == 0) {
      iVar1 = FUN_006e9650();
joined_r0x006e91c9:
      if (iVar1 != 0) {
        FUN_006e930f();
        return iVar1;
      }
    }
    else if (iVar1 == 1) {
      iVar1 = FUN_006e94b0();
      goto joined_r0x006e91c9;
    }
    FUN_0043bbd0(&PTR_DAT_01b974d8);
  } while( true );
}

