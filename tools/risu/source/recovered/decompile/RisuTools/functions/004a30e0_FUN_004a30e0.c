/* Address: 004a30e0 | Ghidra name: FUN_004a30e0 */

int __fastcall FUN_004a30e0(int param_1,int param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  float10 fVar4;
  float10 fVar5;
  float10 fVar6;
  float10 fVar7;
  
  if ((param_2 == 0) && (PTR_FUN_01c21f8c != (undefined *)0x0)) {
    FUN_00e8e9de();
  }
  uVar1 = FUN_00906aa0(&PTR_DAT_01b3c96c);
  if (param_1 == 0) {
    iVar3 = 0;
    uVar2 = 0;
  }
  else {
    iVar3 = param_1 + 8;
    uVar2 = *(undefined4 *)(param_1 + 4);
  }
  FUN_004150e0(iVar3,uVar2);
  FUN_00414c80(uVar1,iVar3,uVar2);
  iVar3 = (uint)((uint3)((uint)uVar2 >> 8) & 0xff) << 8;
  fVar4 = (float10)FUN_00414d90(iVar3);
  iVar3 = (uint)((uint3)((uint)iVar3 >> 8) & 0xff) << 8;
  fVar5 = (float10)FUN_00414d90(iVar3);
  fVar6 = (float10)FUN_00414d90((uint)((uint3)((uint)iVar3 >> 8) & 0xff) << 8);
  uVar1 = 0x4a31ca;
  iVar3 = FUN_00eae9a0();
  fVar7 = (float10)FUN_00414d90((uint)((uint3)((uint)uVar1 >> 8) & 0xff) << 8);
  FUN_004098c0();
  *(double *)(iVar3 + 0x1c) = (double)fVar4;
  *(double *)(iVar3 + 0x24) = (double)fVar5;
  *(double *)(iVar3 + 0x2c) = (double)fVar6;
  *(double *)(iVar3 + 0x34) = (double)fVar7;
  *(undefined1 *)(iVar3 + 0x75) = 1;
  FUN_00414d70();
  return iVar3;
}

