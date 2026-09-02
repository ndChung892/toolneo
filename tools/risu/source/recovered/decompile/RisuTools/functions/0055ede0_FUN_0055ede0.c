/* Address: 0055ede0 | Ghidra name: FUN_0055ede0 */

void __fastcall FUN_0055ede0(int param_1,int param_2)

{
  byte bVar1;
  byte bVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  int iVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  bool bVar8;
  
  if (-1 < param_2) {
    iVar5 = FUN_0055d220();
    if (param_2 < iVar5) {
      if ((*(int *)(param_1 + 0x10) == 0) && (*(int *)(param_1 + 0x24) == 0)) {
        iVar5 = FUN_0055d1e0();
        if (iVar5 != 0) {
          FUN_00560d70();
          uVar6 = FUN_0055e8b0();
          if (*(int *)(param_1 + 0x6c) < 1) {
            bVar8 = false;
          }
          else {
            iVar5 = FUN_0055d940();
            bVar8 = iVar5 == 0;
          }
          *(uint *)(param_1 + 100) = *(uint *)(param_1 + 100) & 0xfffffffb;
          iVar5 = FUN_0099a9c0();
          if (iVar5 != 0) {
            (*(code *)PTR_FUN_01c55b90)();
          }
          *(uint *)(param_1 + 100) = *(uint *)(param_1 + 100) | 4;
          (*(code *)PTR_FUN_01c39ae0)();
          FUN_00eaebca();
          (*(code *)PTR_FUN_01c55b90)();
          if (*(char *)(param_1 + 0x74) != '\0') {
            if (0 < *(int *)(param_1 + 0x6c)) {
              FUN_00562700(0,*(undefined4 *)(param_1 + 0x30));
            }
            FUN_00562700(0,*(undefined4 *)(param_1 + 0x18));
          }
          FUN_00560d70();
          uVar3 = *(undefined4 *)(param_1 + 0xc);
          FUN_00560d70();
          uVar4 = *(undefined4 *)(param_1 + 0x5c);
          FUN_00560d70();
          bVar1 = *(byte *)(param_1 + 100);
          FUN_00560d70();
          bVar2 = *(byte *)(param_1 + 100);
          FUN_0055f210();
          uVar7 = FUN_00eae9a0();
          FUN_008fc460(param_2,uVar6);
          FUN_0055f720(uVar7);
          FUN_00560650((bVar1 & 0x10) != 0,(bVar2 & 8) != 0,uVar4,uVar3);
          iVar5 = FUN_0055d900();
          if (iVar5 == 0) {
            if (bVar8) {
              if (*(char *)(param_1 + 0x74) != '\0') {
                iVar5 = FUN_00561920();
                if (iVar5 != 0) {
                  FUN_005622a0(0,0,*(undefined4 *)(param_1 + 0x18));
                }
              }
              uVar6 = FUN_0055e8b0();
              FUN_00eae9a0();
              FUN_008fc460(*(int *)(param_1 + 0x6c) + -1,uVar6);
              FUN_0055f720();
            }
          }
          else {
            FUN_0055ebf0();
          }
          return;
        }
        FUN_00eae9a0();
        FUN_00928850();
                    /* WARNING: Subroutine does not return */
        FUN_00eaeefb();
      }
      FUN_00eae9a0();
      FUN_0055d370();
      FUN_00928850();
                    /* WARNING: Subroutine does not return */
      FUN_00eaeefb();
    }
  }
  FUN_00eae9a0();
  FUN_009117c0(&PTR_DAT_01b7d1e4);
                    /* WARNING: Subroutine does not return */
  FUN_00eaeefb();
}

