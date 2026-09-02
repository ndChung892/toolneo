/* Address: 0077fec0 | Ghidra name: FUN_0077fec0 */

undefined4 FUN_0077fec0(void)

{
  int *piVar1;
  undefined4 uVar2;
  int iVar3;
  undefined8 uVar4;
  undefined4 uVar5;
  undefined4 extraout_var;
  
  uVar5 = 0;
  (**(code **)(PTR_DAT_01bfe38c + 0x58))(0);
  uVar2 = extraout_var;
  piVar1 = (int *)FUN_009b3fd0();
  if (piVar1 == (int *)0x0) {
    uVar2 = FUN_00eaea6e(uVar5,0,uVar2);
    FUN_0077ff61();
  }
  else {
    uVar4 = (**(code **)(*piVar1 + 0x2c))();
    iVar3 = (int)((ulonglong)uVar4 >> 0x20);
    if ((int)uVar4 < 0) {
      if (iVar3 != -1) goto LAB_0077ff3b;
    }
    else if (iVar3 != 0) {
LAB_0077ff3b:
                    /* WARNING: Subroutine does not return */
      FUN_009c2c10();
    }
    uVar2 = FUN_00eaea6e(uVar5,piVar1,uVar2);
    (**(code **)(*piVar1 + 0x78))((int)uVar4,0);
    (*(code *)PTR_FUN_01c371b0)();
  }
  return uVar2;
}

