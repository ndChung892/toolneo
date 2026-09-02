/* Address: 0052fa00 | Ghidra name: FUN_0052fa00 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_0052fa00(int param_1,int *param_2)

{
  undefined **ppuVar1;
  int iVar2;
  undefined1 auVar3 [16];
  
  FUN_00530210();
  iVar2 = (**(code **)(*param_2 + 0x20))();
  ppuVar1 = *(undefined ***)(iVar2 + 0x18);
  if (ppuVar1 != &PTR_DAT_01bb65e0) {
    if ((ppuVar1 != (undefined **)0x0) && (ppuVar1[1] == (undefined *)0xf)) {
      auVar3._0_4_ = -(uint)(ppuVar1[2] == _DAT_018d0330 &&
                            *(int *)((int)ppuVar1 + 0x16) == _DAT_018d0340);
      auVar3._4_4_ = -(uint)(ppuVar1[3] == _UNK_018d0334 &&
                            *(int *)((int)ppuVar1 + 0x1a) == _UNK_018d0344);
      auVar3._8_4_ = -(uint)(ppuVar1[4] == _UNK_018d0338 &&
                            *(int *)((int)ppuVar1 + 0x1e) == _UNK_018d0348);
      auVar3._12_4_ =
           -(uint)(ppuVar1[5] == _UNK_018d033c && *(int *)((int)ppuVar1 + 0x22) == _UNK_018d034c);
      if ((ushort)((ushort)(SUB161(auVar3 >> 7,0) & 1) | (ushort)(SUB161(auVar3 >> 0xf,0) & 1) << 1
                   | (ushort)(SUB161(auVar3 >> 0x17,0) & 1) << 2 |
                   (ushort)(SUB161(auVar3 >> 0x1f,0) & 1) << 3 |
                   (ushort)(SUB161(auVar3 >> 0x27,0) & 1) << 4 |
                   (ushort)(SUB161(auVar3 >> 0x2f,0) & 1) << 5 |
                   (ushort)(SUB161(auVar3 >> 0x37,0) & 1) << 6 |
                   (ushort)(SUB161(auVar3 >> 0x3f,0) & 1) << 7 |
                   (ushort)(SUB161(auVar3 >> 0x47,0) & 1) << 8 |
                   (ushort)(SUB161(auVar3 >> 0x4f,0) & 1) << 9 |
                   (ushort)(SUB161(auVar3 >> 0x57,0) & 1) << 10 |
                   (ushort)(SUB161(auVar3 >> 0x5f,0) & 1) << 0xb |
                   (ushort)((byte)(auVar3._12_4_ >> 7) & 1) << 0xc |
                   (ushort)((byte)(auVar3._12_4_ >> 0xf) & 1) << 0xd |
                   (ushort)((byte)(auVar3._12_4_ >> 0x17) & 1) << 0xe |
                  (ushort)(byte)(auVar3._12_4_ >> 0x1f) << 0xf) == 0xffff) goto LAB_0052fa74;
    }
    iVar2 = FUN_00905410();
    if (iVar2 == 0) {
      return;
    }
  }
LAB_0052fa74:
  if (*(int *)(param_1 + 0x70) != 0) {
    FUN_005016d0();
  }
  return;
}

