/* Address: 004937a0 | Ghidra name: FUN_004937a0 */

undefined4 __fastcall FUN_004937a0(uint *param_1)

{
  int iVar1;
  int iVar2;
  uint uVar3;
  uint uVar4;
  uint uVar5;
  undefined4 uVar6;
  
  FUN_00978480(8);
  FUN_0092b1d0();
  FUN_009775b0();
  FUN_00978480(0x14);
  uVar5 = *param_1;
  if (uVar5 < 0xdc00) {
    if (0xd7ff < uVar5) goto LAB_004937fd;
LAB_0049400e:
    if (0x6d3b < uVar5 >> 5) goto LAB_00494031;
    iVar1 = *(int *)(&DAT_0159a9ec + (uVar5 >> 5) * 4);
LAB_00493875:
    uVar5 = *(uint *)(&DAT_0159a9ec + ((uVar5 & 0x1f) + iVar1 * 4) * 4);
  }
  else {
    if (uVar5 < 0x10000) goto LAB_0049400e;
LAB_004937fd:
    if (uVar5 < 0x10000) {
      uVar4 = (uVar5 - 0xd800 >> 5) + 0x800;
      if (0x6d3b < uVar4) goto LAB_00494031;
      iVar1 = *(int *)(&DAT_0159a9ec + uVar4 * 4);
      goto LAB_00493875;
    }
    if (uVar5 < 0x100000) {
      uVar4 = (uVar5 >> 0xb) + 0x820;
      if ((0x6d3b < uVar4) ||
         (uVar4 = (uVar5 >> 5 & 0x3f) + *(int *)(&DAT_0159a9ec + uVar4 * 4), 0x6d3b < uVar4))
      goto LAB_00494031;
      iVar1 = *(int *)(&DAT_0159a9ec + uVar4 * 4);
      goto LAB_00493875;
    }
    if (uVar5 < 0x110000) {
      uVar5 = 0;
    }
    else {
      uVar5 = 0;
    }
  }
  iVar1 = FUN_00eae9a0();
  *(uint *)(iVar1 + 4) = uVar5 & 0x3f;
  FUN_009007a0();
  FUN_009775b0();
  FUN_00978480(0xb);
  uVar5 = *param_1;
  if (uVar5 < 0xdc00) {
    if (0xd7ff < uVar5) goto LAB_004938ce;
LAB_00493fe9:
    if (0x6d3b < uVar5 >> 5) goto LAB_00494031;
    iVar1 = *(int *)(&DAT_0159a9ec + (uVar5 >> 5) * 4);
LAB_00493946:
    uVar5 = *(uint *)(&DAT_0159a9ec + ((uVar5 & 0x1f) + iVar1 * 4) * 4);
  }
  else {
    if (uVar5 < 0x10000) goto LAB_00493fe9;
LAB_004938ce:
    if (uVar5 < 0x10000) {
      uVar4 = (uVar5 - 0xd800 >> 5) + 0x800;
      if (0x6d3b < uVar4) goto LAB_00494031;
      iVar1 = *(int *)(&DAT_0159a9ec + uVar4 * 4);
      goto LAB_00493946;
    }
    if (uVar5 < 0x100000) {
      uVar4 = (uVar5 >> 0xb) + 0x820;
      if ((0x6d3b < uVar4) ||
         (uVar4 = (uVar5 >> 5 & 0x3f) + *(int *)(&DAT_0159a9ec + uVar4 * 4), 0x6d3b < uVar4))
      goto LAB_00494031;
      iVar1 = *(int *)(&DAT_0159a9ec + uVar4 * 4);
      goto LAB_00493946;
    }
    if (uVar5 < 0x110000) {
      uVar5 = 0;
    }
    else {
      uVar5 = 0;
    }
  }
  iVar1 = FUN_00eae9a0();
  *(uint *)(iVar1 + 4) = uVar5 >> 6 & 0xff;
  FUN_009007a0();
  FUN_009775b0();
  FUN_00978480(0xe);
  uVar5 = *param_1;
  if (uVar5 < 0xdc00) {
    if (0xd7ff < uVar5) goto LAB_004939a2;
LAB_00493fc4:
    if (0x32cb < uVar5 >> 5) goto LAB_00494031;
    iVar1 = *(int *)(&DAT_0158debc + (uVar5 >> 5) * 4);
LAB_00493a1a:
    uVar5 = *(uint *)(&DAT_0158debc + ((uVar5 & 0x1f) + iVar1 * 4) * 4);
  }
  else {
    if (uVar5 < 0x10000) goto LAB_00493fc4;
LAB_004939a2:
    if (uVar5 < 0x10000) {
      uVar4 = (uVar5 - 0xd800 >> 5) + 0x800;
      if (0x32cb < uVar4) goto LAB_00494031;
      iVar1 = *(int *)(&DAT_0158debc + uVar4 * 4);
      goto LAB_00493a1a;
    }
    if (uVar5 < 0x100000) {
      uVar4 = (uVar5 >> 0xb) + 0x820;
      if ((0x32cb < uVar4) ||
         (uVar4 = (uVar5 >> 5 & 0x3f) + *(int *)(&DAT_0158debc + uVar4 * 4), 0x32cb < uVar4))
      goto LAB_00494031;
      iVar1 = *(int *)(&DAT_0158debc + uVar4 * 4);
      goto LAB_00493a1a;
    }
    if (uVar5 < 0x110000) {
      uVar5 = 0;
    }
    else {
      uVar5 = 0;
    }
  }
  iVar1 = FUN_00eae9a0();
  *(uint *)(iVar1 + 4) = uVar5 >> 0x12 & 0x1f;
  FUN_009007a0();
  FUN_009775b0();
  FUN_00978480(0x16);
  uVar5 = *param_1;
  if (uVar5 < 0xdc00) {
    if (0xd7ff < uVar5) goto LAB_00493a76;
LAB_00493f9b:
    if (0x32cb < uVar5 >> 5) goto LAB_00494031;
    iVar1 = *(int *)(&DAT_0158debc + (uVar5 >> 5) * 4);
LAB_00493aee:
    uVar5 = *(uint *)(&DAT_0158debc + ((uVar5 & 0x1f) + iVar1 * 4) * 4);
  }
  else {
    if (uVar5 < 0x10000) goto LAB_00493f9b;
LAB_00493a76:
    if (uVar5 < 0x10000) {
      uVar4 = (uVar5 - 0xd800 >> 5) + 0x800;
      if (0x32cb < uVar4) goto LAB_00494031;
      iVar1 = *(int *)(&DAT_0158debc + uVar4 * 4);
      goto LAB_00493aee;
    }
    if (uVar5 < 0x100000) {
      uVar4 = (uVar5 >> 0xb) + 0x820;
      if ((0x32cb < uVar4) ||
         (uVar4 = (uVar5 >> 5 & 0x3f) + *(int *)(&DAT_0158debc + uVar4 * 4), 0x32cb < uVar4))
      goto LAB_00494031;
      iVar1 = *(int *)(&DAT_0158debc + uVar4 * 4);
      goto LAB_00493aee;
    }
    if (uVar5 < 0x110000) {
      uVar5 = 0;
    }
    else {
      uVar5 = 0;
    }
  }
  iVar1 = FUN_00eae9a0();
  *(uint *)(iVar1 + 4) = uVar5 >> 0x10 & 3;
  FUN_009007a0();
  FUN_009775b0();
  FUN_00978480(0x13);
  uVar5 = *param_1;
  if (uVar5 < 0xdc00) {
    if (0xd7ff < uVar5) goto LAB_00493b4a;
LAB_00493f72:
    if (0x6d3b < uVar5 >> 5) goto LAB_00494031;
    iVar1 = *(int *)(&DAT_0159a9ec + (uVar5 >> 5) * 4);
LAB_00493bc2:
    uVar5 = *(uint *)(&DAT_0159a9ec + ((uVar5 & 0x1f) + iVar1 * 4) * 4);
  }
  else {
    if (uVar5 < 0x10000) goto LAB_00493f72;
LAB_00493b4a:
    if (uVar5 < 0x10000) {
      uVar4 = (uVar5 - 0xd800 >> 5) + 0x800;
      if (0x6d3b < uVar4) goto LAB_00494031;
      iVar1 = *(int *)(&DAT_0159a9ec + uVar4 * 4);
      goto LAB_00493bc2;
    }
    if (uVar5 < 0x100000) {
      uVar4 = (uVar5 >> 0xb) + 0x820;
      if ((0x6d3b < uVar4) ||
         (uVar4 = (uVar5 >> 5 & 0x3f) + *(int *)(&DAT_0159a9ec + uVar4 * 4), 0x6d3b < uVar4))
      goto LAB_00494031;
      iVar1 = *(int *)(&DAT_0159a9ec + uVar4 * 4);
      goto LAB_00493bc2;
    }
    if (uVar5 < 0x110000) {
      uVar5 = 0;
    }
    else {
      uVar5 = 0;
    }
  }
  iVar1 = FUN_00eae9a0();
  *(uint *)(iVar1 + 4) = uVar5 >> 0xe & 0x3f;
  FUN_009007a0();
  FUN_009775b0();
  FUN_00978480(0x17);
  uVar5 = *param_1;
  if (PTR_FUN_01c2119c != (undefined *)0x0) {
    FUN_00e8d5f2();
  }
  iVar1 = *(int *)(DAT_01c28030 + 4);
  if (iVar1 == 0) {
    iVar2 = 0;
    uVar4 = 0;
  }
  else {
    iVar2 = iVar1 + 8;
    uVar4 = *(uint *)(iVar1 + 4);
  }
  if (uVar5 < 0xdc00) {
    if (0xd7ff < uVar5) goto LAB_00493c46;
LAB_00493f51:
    if (uVar4 <= uVar5 >> 5) goto LAB_00494031;
    iVar1 = *(int *)(iVar2 + (uVar5 >> 5) * 4);
LAB_00493cbd:
    uVar6 = *(undefined4 *)(iVar2 + ((uVar5 & 0x1f) + iVar1 * 4) * 4);
  }
  else {
    if (uVar5 < 0x10000) goto LAB_00493f51;
LAB_00493c46:
    if (uVar5 < 0x10000) {
      uVar3 = (uVar5 - 0xd800 >> 5) + 0x800;
      if (uVar4 <= uVar3) goto LAB_00494031;
      iVar1 = *(int *)(iVar2 + uVar3 * 4);
      goto LAB_00493cbd;
    }
    if (uVar5 < 0xe1000) {
      uVar3 = (uVar5 >> 0xb) + 0x820;
      if ((uVar4 <= uVar3) ||
         (uVar3 = (uVar5 >> 5 & 0x3f) + *(int *)(iVar2 + uVar3 * 4), uVar4 <= uVar3))
      goto LAB_00494031;
      iVar1 = *(int *)(iVar2 + uVar3 * 4);
      goto LAB_00493cbd;
    }
    if (uVar5 < 0x110000) {
      if (uVar4 <= uVar4 - 4) goto LAB_00494031;
      uVar6 = *(undefined4 *)(iVar2 + (uVar4 - 4) * 4);
    }
    else {
      uVar6 = 0;
    }
  }
  iVar1 = FUN_00eae9a0();
  *(undefined4 *)(iVar1 + 4) = uVar6;
  FUN_009007a0();
  FUN_009775b0();
  FUN_00978480(0x18);
  uVar5 = *param_1;
  if (uVar5 < 0xdc00) {
    if (0xd7ff < uVar5) goto LAB_00493d16;
LAB_00493f2c:
    if (0x1e3b < uVar5 >> 5) goto LAB_00494031;
    iVar1 = *(int *)(&DAT_01c176c0 + (uVar5 >> 5) * 4);
LAB_00493d8d:
    uVar6 = *(undefined4 *)(&DAT_01c176c0 + ((uVar5 & 0x1f) + iVar1 * 4) * 4);
  }
  else {
    if (uVar5 < 0x10000) goto LAB_00493f2c;
LAB_00493d16:
    if (uVar5 < 0x10000) {
      uVar4 = (uVar5 - 0xd800 >> 5) + 0x800;
      if (0x1e3b < uVar4) goto LAB_00494031;
      iVar1 = *(int *)(&DAT_01c176c0 + uVar4 * 4);
      goto LAB_00493d8d;
    }
    if (uVar5 < 0x110000) {
      uVar4 = (uVar5 >> 0xb) + 0x820;
      if ((0x1e3b < uVar4) ||
         (uVar4 = (uVar5 >> 5 & 0x3f) + *(int *)(&DAT_01c176c0 + uVar4 * 4), 0x1e3b < uVar4))
      goto LAB_00494031;
      iVar1 = *(int *)(&DAT_01c176c0 + uVar4 * 4);
      goto LAB_00493d8d;
    }
    uVar6 = DAT_01c1efa0;
    if (0x10ffff < uVar5) {
      uVar6 = 0;
    }
  }
  iVar1 = FUN_00eae9a0();
  *(undefined4 *)(iVar1 + 4) = uVar6;
  FUN_009007a0();
  FUN_009775b0();
  FUN_00978480(0x10);
  FUN_00493600();
  FUN_009775b0();
  FUN_00978480(0x10);
  FUN_004936e0();
  FUN_009775b0();
  FUN_00978480(0x11);
  uVar5 = *param_1;
  if (uVar5 < 0xdc00) {
    if (uVar5 < 0xd800) goto LAB_00493f05;
LAB_00493e38:
    if (uVar5 < 0x10000) {
      uVar5 = (uVar5 - 0xd800 >> 5) + 0x800;
    }
    else {
      if (0xfffff < uVar5) goto LAB_00493ec0;
      uVar4 = (uVar5 >> 0xb) + 0x820;
      if (0x6d3b < uVar4) goto LAB_00494031;
      uVar5 = (uVar5 >> 5 & 0x3f) + *(int *)(&DAT_0159a9ec + uVar4 * 4);
    }
  }
  else {
    if (0xffff < uVar5) goto LAB_00493e38;
LAB_00493f05:
    uVar5 = uVar5 >> 5;
  }
  if (0x6d3b < uVar5) {
LAB_00494031:
                    /* WARNING: Subroutine does not return */
    FUN_009c2bf0();
  }
LAB_00493ec0:
  FUN_00eaf97a();
  FUN_009775b0();
  return 1;
}

