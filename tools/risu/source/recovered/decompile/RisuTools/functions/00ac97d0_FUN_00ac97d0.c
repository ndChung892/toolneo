/* Address: 00ac97d0 | Ghidra name: FUN_00ac97d0 */

/* WARNING: Removing unreachable block (ram,0x00ac9994) */
/* WARNING: Removing unreachable block (ram,0x00ac992b) */
/* WARNING: Removing unreachable block (ram,0x00ac99f1) */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_00ac97d0(undefined4 param_1,int *param_2)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  undefined4 uVar8;
  undefined4 uVar9;
  undefined4 uVar10;
  undefined4 uVar11;
  undefined4 uVar12;
  undefined4 uVar13;
  int iVar14;
  
  uVar2 = 0;
  uVar3 = 0;
  uVar4 = 0;
  uVar5 = 0;
  uVar6 = 0;
  uVar7 = 0;
  uVar8 = 0;
  uVar9 = 0;
  uVar10 = 0;
  uVar11 = 0;
  uVar12 = 0;
  uVar13 = 0;
  iVar14 = 0;
  iVar1 = param_2[1];
  if (iVar1 < 4) {
    FUN_00ac9a50(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
    switch(iVar1) {
    case 0:
      break;
    case 1:
      (**(code **)(*param_2 + 0x2c))(0);
      FUN_00ac96f0(uVar2,uVar3);
      break;
    case 2:
      iVar1 = *param_2;
      (**(code **)(iVar1 + 0x2c))(0);
      FUN_00ac96f0(uVar6,uVar7);
      (**(code **)(iVar1 + 0x2c))(1);
      FUN_00ac96f0(uVar4,uVar5);
      break;
    case 3:
      iVar1 = *param_2;
      (**(code **)(iVar1 + 0x2c))(0);
      FUN_00ac96f0(uVar12,uVar13);
      (**(code **)(iVar1 + 0x2c))(1);
      FUN_00ac96f0(uVar10,uVar11);
      (**(code **)(iVar1 + 0x2c))(2);
      FUN_00ac96f0(uVar8,uVar9);
      break;
    default:
      FUN_00eae9a0();
      FUN_00911790();
                    /* WARNING: Subroutine does not return */
      FUN_00eaeefb();
    }
    return;
  }
  FUN_0099d430(2);
  if (iVar14 == 0) {
    FUN_0099d6f0();
    FUN_00e52ce0(&PTR_DAT_01551230);
    if (iVar14 == 0) {
      FUN_0099d6f0();
      FUN_00903080();
      FUN_0099d620();
      if (iVar14 == 0) {
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

