/* Address: 00aca260 | Ghidra name: FUN_00aca260 */

/* WARNING: Removing unreachable block (ram,0x00aca340) */
/* WARNING: Removing unreachable block (ram,0x00aca2d7) */
/* WARNING: Removing unreachable block (ram,0x00aca39b) */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_00aca260(undefined4 param_1,int *param_2)

{
  int iVar1;
  int iVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  int iVar7;
  undefined4 uVar8;
  
  uVar3 = 0;
  uVar4 = 0;
  uVar5 = 0;
  uVar6 = 0;
  iVar7 = 0;
  uVar8 = 0;
  iVar2 = 0;
  if (0 < param_2[1]) {
    do {
      (**(code **)(*param_2 + 0x2c))(iVar2,uVar3,uVar4,uVar5,uVar6,iVar7,uVar8);
      iVar1 = FUN_00aca180(uVar3,uVar4);
      if (iVar1 != 0) {
        FUN_0099d430(2);
        if (iVar7 == 0) {
          FUN_0099d6f0();
          FUN_00e52ce0(&PTR_DAT_01551230);
          if (iVar7 == 0) {
            FUN_0099d6f0();
            FUN_00903080();
            FUN_0099d620();
            if (iVar7 == 0) {
              FUN_0099d6f0();
              FUN_00eae9a0();
              FUN_0099d560();
              FUN_009115d0(&PTR_DAT_01bed988);
                    /* WARNING: Subroutine does not return */
              FUN_00eaeefb();
            }
          }
        }
                    /* WARNING: Subroutine does not return */
        FUN_009318f0();
      }
      iVar2 = iVar2 + 1;
    } while (iVar2 < param_2[1]);
  }
  return;
}

