/* Address: 008ccc90 | Ghidra name: FUN_008ccc90 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined4 __fastcall FUN_008ccc90(int param_1)

{
  int iVar1;
  undefined4 *puVar2;
  int iVar3;
  undefined4 uVar4;
  float10 fVar5;
  double dVar6;
  double dVar7;
  
  iVar1 = FUN_00890cf0();
  if ((*(byte *)(param_1 + 0x10) & 0x20) != 0) {
    FUN_008cdb90();
  }
  if ((*(byte *)(param_1 + 0x10) & 0x80) != 0) {
    FUN_008cdb90();
  }
  if ((*(uint *)(param_1 + 0x10) & 0x100) != 0) {
    FUN_008cdb90();
  }
  if ((*(uint *)(param_1 + 0x10) & 0x200) != 0) {
    FUN_008cdb90();
  }
  if ((*(uint *)(param_1 + 0x10) & 0x800) != 0) {
    FUN_008cdb90();
  }
  if ((*(uint *)(param_1 + 0x10) & 0x1000) != 0) {
    FUN_008cdb90();
  }
  if ((*(byte *)(param_1 + 0x10) & 0x10) != 0) {
    FUN_008cdb90();
    if ((*(int *)(param_1 + 4) != 0) && (0 < *(int *)(*(int *)(param_1 + 4) + 8))) {
      FUN_00978480(2);
      FUN_008cdbe0();
      FUN_009779b0();
    }
  }
  if ((*(byte *)(param_1 + 0x10) & 1) != 0) {
    FUN_008cdb90();
    FUN_009779b0();
    fVar5 = (float10)FUN_00eb6270(*(undefined4 *)(param_1 + 0x14),*(undefined4 *)(param_1 + 0x18));
    dVar7 = (double)fVar5;
    dVar6 = dVar7 / _DAT_018d9798;
    iVar3 = 0x7fffffff;
    if (dVar6 < _DAT_018d97a0) {
      iVar3 = (int)(double)(-(ulonglong)(!NAN(dVar6) && !NAN(dVar6)) & (ulonglong)dVar6);
    }
    if (iVar3 < 0) {
      puVar2 = (undefined4 *)FUN_00958e30();
      if ((puVar2 != (undefined4 *)0x0) && ((undefined *)*puVar2 != &DAT_01613474)) {
        (*(code *)PTR_FUN_01c39038)(dVar7,iVar1,puVar2);
      }
      FUN_00de7ad0();
    }
    else {
      FUN_00de7720();
    }
  }
  if ((*(byte *)(param_1 + 0x10) & 2) != 0) {
    FUN_008cdb90();
    FUN_009779b0();
    fVar5 = (float10)FUN_00eb6270(*(undefined4 *)(param_1 + 0x1c),*(undefined4 *)(param_1 + 0x20));
    dVar7 = (double)fVar5;
    dVar6 = dVar7 / _DAT_018d9798;
    iVar3 = 0x7fffffff;
    if (dVar6 < _DAT_018d97a0) {
      iVar3 = (int)(double)(-(ulonglong)(!NAN(dVar6) && !NAN(dVar6)) & (ulonglong)dVar6);
    }
    if (iVar3 < 0) {
      puVar2 = (undefined4 *)FUN_00958e30();
      if ((puVar2 != (undefined4 *)0x0) && ((undefined *)*puVar2 != &DAT_01613474)) {
        (*(code *)PTR_FUN_01c39038)(dVar7,iVar1,puVar2);
      }
      FUN_00de7ad0();
    }
    else {
      FUN_00de7720();
    }
  }
  if (((*(byte *)(param_1 + 0x10) & 0x40) != 0) &&
     (FUN_008cdb90(), (*(byte *)(param_1 + 0x10) & 4) != 0)) {
    FUN_009779b0();
    fVar5 = (float10)FUN_00eb6270(*(undefined4 *)(param_1 + 0x24),*(undefined4 *)(param_1 + 0x28));
    dVar7 = (double)fVar5;
    dVar6 = dVar7 / _DAT_018d9798;
    iVar3 = 0x7fffffff;
    if (dVar6 < _DAT_018d97a0) {
      iVar3 = (int)(double)(-(ulonglong)(!NAN(dVar6) && !NAN(dVar6)) & (ulonglong)dVar6);
    }
    if (iVar3 < 0) {
      puVar2 = (undefined4 *)FUN_00958e30();
      if ((puVar2 != (undefined4 *)0x0) && ((undefined *)*puVar2 != &DAT_01613474)) {
        (*(code *)PTR_FUN_01c39038)(dVar7,iVar1,puVar2);
      }
      FUN_00de7ad0();
    }
    else {
      FUN_00de7720();
    }
  }
  if ((*(byte *)(param_1 + 0x10) & 8) != 0) {
    FUN_008cdb90();
    FUN_009779b0();
    fVar5 = (float10)FUN_00eb6270(*(undefined4 *)(param_1 + 0x2c),*(undefined4 *)(param_1 + 0x30));
    dVar7 = (double)fVar5;
    dVar6 = dVar7 / _DAT_018d9798;
    iVar3 = 0x7fffffff;
    if (dVar6 < _DAT_018d97a0) {
      iVar3 = (int)(double)(-(ulonglong)(!NAN(dVar6) && !NAN(dVar6)) & (ulonglong)dVar6);
    }
    if (iVar3 < 0) {
      puVar2 = (undefined4 *)FUN_00958e30();
      if ((puVar2 != (undefined4 *)0x0) && ((undefined *)*puVar2 != &DAT_01613474)) {
        (*(code *)PTR_FUN_01c39038)(dVar7,iVar1,puVar2);
      }
      FUN_00de7ad0();
    }
    else {
      FUN_00de7720();
    }
  }
  if ((*(uint *)(param_1 + 0x10) & 0x400) != 0) {
    FUN_008cdb90();
    if ((*(int *)(param_1 + 8) != 0) && (0 < *(int *)(*(int *)(param_1 + 8) + 8))) {
      FUN_00978480(2);
      FUN_008cdbe0();
      FUN_009779b0();
    }
  }
  FUN_008d4080(iVar1,0);
  uVar4 = FUN_00977000();
  if (*(int *)(*(int *)(iVar1 + 4) + 4) + *(int *)(iVar1 + 0x10) < 0x169) {
    FUN_00e8fb7e();
    FUN_00eaec14();
  }
  return uVar4;
}

