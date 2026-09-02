/* Address: 008e6e60 | Ghidra name: FUN_008e6e60 */

/* WARNING: Removing unreachable block (ram,0x008e7017) */
/* WARNING: Removing unreachable block (ram,0x008e6f6d) */
/* WARNING: Removing unreachable block (ram,0x008e6eb3) */
/* WARNING: Removing unreachable block (ram,0x008e6f1d) */
/* WARNING: Removing unreachable block (ram,0x008e6fc7) */
/* WARNING: Removing unreachable block (ram,0x008e7070) */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void FUN_008e6e60(void)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  undefined4 uVar4;
  
  uVar1 = 0;
  uVar2 = 0;
  iVar3 = 0;
  uVar4 = 0;
  FUN_0099d430(6);
  if (iVar3 == 0) {
    FUN_0099d6f0(uVar1,uVar2,0,uVar4);
    FUN_00de78a0(&PTR_DAT_01bf3788);
    if (iVar3 == 0) {
      FUN_0099d6f0(uVar1,uVar2,0,uVar4);
      FUN_00de1300();
      if (iVar3 == 0) {
        FUN_0099d6f0();
        FUN_00de1300();
        if (iVar3 == 0) {
          FUN_0099d6f0();
          FUN_00de77e0();
          if (iVar3 == 0) {
            FUN_0099d6f0();
            FUN_0099d620();
            if (iVar3 == 0) {
              FUN_0099d6f0();
              FUN_0099d620(uVar1,uVar2,iVar3);
              FUN_0099d560();
              return;
            }
          }
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  FUN_009318f0();
}

