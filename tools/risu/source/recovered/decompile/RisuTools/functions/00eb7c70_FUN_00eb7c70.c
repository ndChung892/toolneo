/* Address: 00eb7c70 | Ghidra name: FUN_00eb7c70 */

void FUN_00eb7c70(undefined4 param_1,undefined4 param_2,undefined4 param_3,int *param_4)

{
  code *pcVar1;
  char cVar2;
  int iVar3;
  int iVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  int *piVar8;
  
  FUN_00eb1850();
  iVar3 = FUN_00eb1af0();
  while (iVar3 != 0) {
    cVar2 = FUN_00eb0f70();
    if (cVar2 == '\0') {
      pcVar1 = *(code **)(*DAT_01c81098 + 0xa0);
      (*(code *)PTR_guard_check_icall_00f075a0)(iVar3 + 4,param_4[1]);
      cVar2 = (*pcVar1)();
      if (cVar2 != '\0') {
        for (iVar4 = FUN_00eb0c00(); iVar4 != 0; iVar4 = *(int *)(iVar4 + 4)) {
          if (4 < DAT_01c831f4) {
            FUN_00eb8c10(9,2,"{ Scanning Thread\'s %p inline thread statics root %p. \n",iVar3,iVar4
                        );
          }
          FUN_00eb9d50(iVar4,1,param_1,param_4);
        }
        if (4 < DAT_01c831f4) {
          FUN_00eb8c10(9,1,"{ Scanning Thread\'s %p thread statics root. \n",iVar3);
        }
        uVar6 = 1;
        uVar7 = param_1;
        piVar8 = param_4;
        uVar5 = FUN_00eb0c20(1,param_1,param_4);
        FUN_00eb9d50(uVar5,uVar6,uVar7,piVar8);
        if (4 < DAT_01c831f4) {
          FUN_00eb8c10(9,1,"{ Starting scan of Thread %p\n",iVar3);
        }
        *param_4 = iVar3;
        param_4[7] = 0;
        FUN_00eb0920(param_1,param_4);
        param_4[7] = 3;
        if (4 < DAT_01c831f4) {
          FUN_00eb8c10(9,1,"Ending scan of Thread %p }\n",iVar3);
        }
      }
    }
    iVar3 = FUN_00eb1af0();
  }
  guard_check_icall();
  *param_4 = 0;
  return;
}

