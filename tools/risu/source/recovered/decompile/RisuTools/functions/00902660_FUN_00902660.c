/* Address: 00902660 | Ghidra name: FUN_00902660 */

void FUN_00902660(uint param_1,int param_2)

{
  int iVar1;
  uint uVar2;
  uint uVar3;
  uint uVar4;
  uint uVar5;
  uint uVar6;
  int iVar7;
  int iVar8;
  int iVar9;
  uint uVar10;
  int iVar11;
  undefined8 uVar12;
  undefined8 uVar13;
  longlong lVar14;
  longlong lVar15;
  int local_3c;
  uint local_38;
  
  FUN_00ded360(param_1,param_2);
  if (((int)(uint)(param_1 < 0x7fffffff) <= param_2) &&
     ((int)(uint)(param_1 < 0x80000000) <= param_2)) {
                    /* WARNING: Subroutine does not return */
    FUN_00ded240(0x7fffffff,0,param_1,param_2);
  }
  FUN_00902580();
  uVar10 = DAT_01c21f24 & 3;
  uVar12 = FUN_00902600(param_1,param_2);
  iVar7 = (int)((ulonglong)uVar12 >> 0x20);
  uVar2 = (uint)uVar12;
  if ((int)(uint)(uVar2 < 0x300000) <= iVar7) {
    uVar3 = DAT_01c15840 + DAT_01c15838 + DAT_01c15848;
    uVar4 = uVar3 + DAT_01c15850;
    uVar5 = uVar4 - (&DAT_01c15838)[uVar10 * 2];
    iVar8 = ((DAT_01c1583c + DAT_01c15844 + (uint)CARRY4(DAT_01c15840,DAT_01c15838) + DAT_01c1584c +
              (uint)CARRY4(DAT_01c15840 + DAT_01c15838,DAT_01c15848) + DAT_01c15854 +
             (uint)CARRY4(uVar3,DAT_01c15850)) - (&DAT_01c1583c)[uVar10 * 2]) -
            (uint)(uVar4 < (&DAT_01c15838)[uVar10 * 2]);
    uVar3 = DAT_01c15864 + DAT_01c1586c + DAT_01c15874;
    uVar4 = uVar3 + DAT_01c1587c;
    uVar6 = uVar4 - (&DAT_01c15864)[uVar10 * 2];
    iVar11 = ((DAT_01c15868 + DAT_01c15870 + (uint)CARRY4(DAT_01c15864,DAT_01c1586c) + DAT_01c15878
               + (uint)CARRY4(DAT_01c15864 + DAT_01c1586c,DAT_01c15874) + DAT_01c15880 +
              (uint)CARRY4(uVar3,DAT_01c1587c)) - (&DAT_01c15868)[uVar10 * 2]) -
             (uint)(uVar4 < (&DAT_01c15864)[uVar10 * 2]);
    uVar12 = 0x300000;
    if (3 < DAT_01c21f24) {
      uVar12 = __allmul(10,0,uVar6,iVar11);
      iVar9 = (int)((ulonglong)uVar12 >> 0x20);
      uVar10 = (uint)(uVar5 < (uint)uVar12);
      iVar1 = iVar8 - iVar9;
      if ((SBORROW4(iVar8,iVar9) != SBORROW4(iVar1,uVar10)) == (int)(iVar1 - uVar10) < 0) {
        uVar12 = 0x1e00000;
      }
      else {
        uVar12 = 0x300000;
        if ((SBORROW4(iVar11,iVar8) != SBORROW4(iVar11 - iVar8,(uint)(uVar6 < uVar5))) !=
            (int)((iVar11 - iVar8) - (uint)(uVar6 < uVar5)) < 0) {
          uVar12 = __allmul(0x400,0,uVar5,iVar8);
          uVar12 = FUN_00902d50(uVar6,iVar11,uVar12);
          uVar12 = __allmul(0x300000,0,uVar12);
          uVar12 = FUN_00902d50(0x400,0,uVar12);
        }
      }
    }
    local_3c = (int)((ulonglong)uVar12 >> 0x20);
    local_38 = (uint)uVar12;
    if ((SBORROW4(iVar7,local_3c) != SBORROW4(iVar7 - local_3c,(uint)(uVar2 < local_38))) ==
        (int)((iVar7 - local_3c) - (uint)(uVar2 < local_38)) < 0) {
      uVar13 = FUN_00eb00b0();
      uVar13 = FUN_00902d50(3,0,uVar13);
      iVar11 = (int)((ulonglong)uVar13 >> 0x20);
      uVar10 = (uint)(local_38 < (uint)uVar13);
      iVar8 = local_3c - iVar11;
      if ((SBORROW4(local_3c,iVar11) != SBORROW4(iVar8,uVar10)) != (int)(iVar8 - uVar10) < 0) {
        uVar12 = uVar13;
      }
      iVar11 = (int)((ulonglong)uVar12 >> 0x20);
      uVar2 = (uint)(uVar2 < (uint)uVar12);
      iVar8 = iVar7 - iVar11;
      if ((SBORROW4(iVar7,iVar11) != SBORROW4(iVar8,uVar2)) == (int)(iVar8 - uVar2) < 0) {
        lVar14 = FUN_00eb0110();
        lVar15 = FUN_00eb01c0();
        iVar11 = (int)((ulonglong)(lVar14 - lVar15) >> 0x20);
        uVar12 = FUN_00eb0190();
        uVar12 = __allmul(5,0,uVar12);
        iVar8 = (int)((ulonglong)uVar12 >> 0x20);
        uVar2 = (uint)((uint)uVar12 < (uint)(lVar14 - lVar15));
        iVar7 = iVar8 - iVar11;
        if ((SBORROW4(iVar8,iVar11) != SBORROW4(iVar7,uVar2)) != (int)(iVar7 - uVar2) < 0) {
          FUN_0099a250(0);
          FUN_00902580();
        }
      }
    }
  }
  return;
}

