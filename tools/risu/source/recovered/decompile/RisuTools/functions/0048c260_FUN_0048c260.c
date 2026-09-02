/* Address: 0048c260 | Ghidra name: FUN_0048c260 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

float10 __fastcall FUN_0048c260(int param_1,int param_2)

{
  double dVar1;
  int iVar2;
  undefined4 uVar3;
  float10 fVar4;
  double dVar5;
  double local_2c;
  double local_24;
  
  fVar4 = (float10)FUN_00485e60();
  dVar1 = (double)fVar4;
  iVar2 = *(int *)(param_2 + 0xc);
  if (iVar2 == 0) {
    uVar3 = 0;
  }
  else {
    uVar3 = *(undefined4 *)(iVar2 + 0x28);
  }
  local_24 = (double)CONCAT44((uint)((ulonglong)dVar1 >> 0x20) ^ _UNK_018cdb34,
                              SUB84(dVar1,0) ^ _DAT_018cdb30);
  if (iVar2 == 0) {
switchD_0048c2d6_default:
    FUN_00eae9a0();
    uVar3 = FUN_0099a3d0();
    FUN_00911800(0,uVar3);
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  switch(uVar3) {
  case 0:
  case 4:
    dVar1 = *(double *)(param_1 + 0x34);
    dVar5 = *(double *)(param_1 + 0x6c);
    FUN_00485e90();
    local_24 = local_2c * _DAT_018cdb60 + (dVar1 - dVar5) + local_24;
    break;
  case 1:
    dVar5 = *(double *)(param_1 + 0x34) * _DAT_018cdb60;
    FUN_00485e90();
    local_24 = ((dVar5 + dVar1) - local_2c * _DAT_018cdb60) + local_24;
    break;
  case 2:
  case 5:
  case 6:
    dVar5 = *(double *)(param_1 + 0x34);
    FUN_00485e90();
    local_24 = (dVar5 - local_2c) + dVar1 + local_24;
    break;
  case 3:
    local_24 = local_24 + *(double *)(param_1 + 0x4c);
    break;
  case 7:
    local_24 = local_24 + dVar1;
    break;
  default:
    goto switchD_0048c2d6_default;
  }
  return (float10)local_24;
}

