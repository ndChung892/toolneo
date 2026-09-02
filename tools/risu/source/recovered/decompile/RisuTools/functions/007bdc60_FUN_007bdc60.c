/* Address: 007bdc60 | Ghidra name: FUN_007bdc60 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_007bdc60(int *param_1)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  uint uVar4;
  undefined4 uVar5;
  int iVar6;
  int iVar7;
  char cVar8;
  undefined4 extraout_ECX;
  undefined4 extraout_ECX_00;
  undefined4 extraout_ECX_01;
  undefined4 extraout_ECX_02;
  int iVar9;
  int *piVar10;
  undefined4 *puVar11;
  uint *puVar12;
  int *piVar13;
  undefined4 *puVar14;
  uint *puVar15;
  float10 fVar16;
  undefined4 in_stack_fffffc34;
  undefined4 in_stack_fffffc38;
  int in_stack_fffffc3c;
  undefined4 in_stack_fffffc40;
  undefined4 in_stack_fffffc44;
  undefined1 local_2bc [4];
  undefined1 local_2b8 [4];
  undefined4 local_2b4;
  undefined1 local_2b0 [4];
  undefined1 local_2ac [4];
  undefined1 local_2a8 [4];
  undefined4 local_2a4;
  undefined4 local_2a0;
  undefined4 local_29c;
  uint local_298;
  undefined1 local_294 [4];
  undefined4 local_290;
  undefined4 local_28c;
  undefined4 local_288;
  double local_284;
  double local_27c;
  undefined4 local_274;
  undefined4 local_270;
  undefined4 local_26c;
  undefined4 local_268;
  int local_264;
  int iStack_260;
  undefined4 local_254 [10];
  double local_22c;
  double local_224;
  undefined4 local_21c;
  undefined4 local_218;
  undefined4 local_214;
  undefined4 local_210;
  undefined4 local_20c;
  undefined4 local_208;
  undefined4 local_204;
  undefined4 local_200;
  undefined4 local_1fc;
  undefined4 local_1f8;
  undefined4 local_1f4 [14];
  double local_1bc;
  double local_1b4;
  int local_1ac [15];
  int iStack_170;
  undefined4 local_164;
  undefined4 local_160;
  undefined4 local_15c;
  undefined4 local_158;
  int local_154;
  int iStack_150;
  undefined4 local_144;
  undefined4 local_140;
  undefined4 local_13c;
  undefined4 local_138;
  int local_134;
  int iStack_130;
  undefined4 local_124;
  undefined4 local_120;
  undefined4 local_11c;
  undefined4 local_118;
  undefined4 local_114;
  undefined4 local_110;
  uint local_10c [6];
  undefined4 local_f4 [6];
  undefined4 local_dc [6];
  undefined4 local_c4 [6];
  int local_ac [6];
  int local_94 [6];
  int local_7c;
  int local_78;
  int local_74;
  undefined4 local_70;
  int local_6c;
  int local_68;
  undefined1 local_64;
  int local_60;
  uint local_5c;
  int local_58;
  int local_54;
  int local_50;
  undefined4 local_4c;
  undefined4 local_48;
  int local_44;
  int local_40;
  int local_3c;
  int local_38;
  int local_34;
  int local_30;
  uint local_2c [3];
  char local_20;
  uint local_1c [3];
  
  uVar4 = 0xfffffd60;
  do {
    *(undefined4 *)((int)local_1c + uVar4) = 0;
    *(undefined4 *)((int)local_1c + uVar4 + 4) = 0;
    *(undefined4 *)((int)local_1c + uVar4 + 8) = 0;
    *(undefined4 *)(&stack0xfffffff0 + uVar4) = 0;
    *(undefined4 *)(&stack0xfffffff4 + uVar4) = 0;
    *(undefined4 *)(&stack0xfffffff8 + uVar4) = 0;
    *(undefined4 *)(&stack0xfffffffc + uVar4) = 0;
    *(undefined4 *)(&stack0x00000000 + uVar4) = 0;
    *(undefined4 *)(&stack0x00000004 + uVar4) = 0;
    *(undefined4 *)(&stack0x00000008 + uVar4) = 0;
    *(undefined4 *)(&stack0x0000000c + uVar4) = 0;
    *(undefined4 *)(&stack0x00000010 + uVar4) = 0;
    uVar4 = uVar4 + 0x30;
  } while (uVar4 != 0);
  local_1c[2] = param_1[0xb];
  iVar1 = *param_1;
  local_1c[0] = uVar4;
  local_1c[1] = uVar4;
  switch(local_1c[2]) {
  case 0:
    local_30 = param_1[0x15];
    param_1[0x15] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c3844;
  case 1:
    local_34 = param_1[0x16];
    param_1[0x16] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c37c6;
  case 2:
    local_30 = param_1[0x15];
    param_1[0x15] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c36f5;
  case 3:
    local_38 = param_1[0x17];
    param_1[0x17] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c3668;
  case 4:
    local_34 = param_1[0x16];
    param_1[0x16] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c3600;
  case 5:
    local_34 = param_1[0x16];
    param_1[0x16] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c063a;
  case 6:
  case 7:
  case 8:
    goto switchD_007bdcbc_caseD_6;
  case 9:
    local_30 = param_1[0x15];
    param_1[0x15] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c05f2;
  case 10:
    local_44 = param_1[0x1d];
    param_1[0x1d] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c050e;
  case 0xb:
    local_34 = param_1[0x16];
    param_1[0x16] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c29fe;
  case 0xc:
    local_34 = param_1[0x16];
    param_1[0x16] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c29c8;
  case 0xd:
    local_58 = param_1[0x1e];
    param_1[0x1e] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c2956;
  case 0xe:
    local_44 = param_1[0x1d];
    param_1[0x1d] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c2908;
  case 0xf:
    local_34 = param_1[0x16];
    param_1[0x16] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c2821;
  case 0x10:
    local_34 = param_1[0x16];
    param_1[0x16] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c279d;
  case 0x11:
    local_34 = param_1[0x16];
    param_1[0x16] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c2767;
  case 0x12:
    local_30 = param_1[0x15];
    param_1[0x15] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c271a;
  case 0x13:
    local_30 = param_1[0x15];
    param_1[0x15] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c265b;
  case 0x14:
    goto switchD_007bdcbc_caseD_14;
  case 0x15:
  case 0x16:
  case 0x17:
    goto switchD_007bdcbc_caseD_15;
  case 0x18:
    local_34 = param_1[0x16];
    param_1[0x16] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c25ab;
  case 0x19:
  case 0x1a:
    goto switchD_007bdcbc_caseD_19;
  case 0x1b:
    local_30 = param_1[0x15];
    param_1[0x15] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c2530;
  case 0x1c:
    local_34 = param_1[0x16];
    param_1[0x16] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c2459;
  case 0x1d:
    local_34 = param_1[0x16];
    param_1[0x16] = 0;
    goto LAB_007c23dc;
  case 0x1e:
    local_30 = param_1[0x15];
    param_1[0x15] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c2364;
  case 0x1f:
    local_7c = param_1[0x21];
    param_1[0x21] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c22a8;
  case 0x20:
    local_34 = param_1[0x16];
    param_1[0x16] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c2224;
  case 0x21:
    local_7c = param_1[0x21];
    param_1[0x21] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c2174;
  case 0x22:
    local_34 = param_1[0x16];
    param_1[0x16] = 0;
LAB_007c23dc:
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c23ea;
  case 0x23:
    local_34 = param_1[0x16];
    param_1[0x16] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c2131;
  case 0x24:
    local_44 = param_1[0x1d];
    param_1[0x1d] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c20fa;
  case 0x25:
    local_34 = param_1[0x16];
    param_1[0x16] = 0;
    goto LAB_007c207f;
  case 0x26:
    local_34 = param_1[0x16];
    param_1[0x16] = 0;
LAB_007c207f:
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c208d;
  case 0x27:
    local_34 = param_1[0x16];
    param_1[0x16] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c205a;
  case 0x28:
    local_30 = param_1[0x15];
    param_1[0x15] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c2025;
  case 0x29:
    local_34 = param_1[0x16];
    param_1[0x16] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c1fa6;
  case 0x2a:
    local_34 = param_1[0x16];
    param_1[0x16] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c1f79;
  case 0x2b:
    local_30 = param_1[0x15];
    param_1[0x15] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c1e9a;
  case 0x2c:
    local_34 = param_1[0x16];
    param_1[0x16] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c1e1b;
  case 0x2d:
    local_34 = param_1[0x16];
    param_1[0x16] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c1df5;
  case 0x2e:
    local_30 = param_1[0x15];
    param_1[0x15] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c1dbe;
  case 0x2f:
    local_30 = param_1[0x15];
    param_1[0x15] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c1d4a;
  case 0x30:
    local_30 = param_1[0x15];
    param_1[0x15] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c1d19;
  case 0x31:
    local_30 = param_1[0x15];
    param_1[0x15] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c1cf3;
  case 0x32:
    local_30 = param_1[0x15];
    param_1[0x15] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c1cbe;
  case 0x33:
    local_30 = param_1[0x15];
    param_1[0x15] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c1c4a;
  case 0x34:
    local_30 = param_1[0x15];
    param_1[0x15] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c1c13;
  case 0x35:
    local_30 = param_1[0x15];
    param_1[0x15] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c1b9f;
  case 0x36:
    local_30 = param_1[0x15];
    param_1[0x15] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c1b72;
  case 0x37:
    local_44 = param_1[0x1d];
    param_1[0x1d] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c1ad0;
  case 0x38:
    local_34 = param_1[0x16];
    param_1[0x16] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c1a51;
  case 0x39:
    local_34 = param_1[0x16];
    param_1[0x16] = 0;
    break;
  case 0x3a:
    local_34 = param_1[0x16];
    param_1[0x16] = 0;
    break;
  case 0x3b:
    local_34 = param_1[0x16];
    param_1[0x16] = 0;
    break;
  case 0x3c:
    local_34 = param_1[0x16];
    param_1[0x16] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c1970;
  case 0x3d:
    local_34 = param_1[0x16];
    param_1[0x16] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c18f5;
  case 0x3e:
    local_44 = param_1[0x1d];
    param_1[0x1d] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c1850;
  case 0x3f:
    local_34 = param_1[0x16];
    param_1[0x16] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c17d1;
  case 0x40:
    local_34 = param_1[0x16];
    param_1[0x16] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c179f;
  case 0x41:
    local_30 = param_1[0x15];
    param_1[0x15] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c16cc;
  case 0x42:
    local_34 = param_1[0x16];
    param_1[0x16] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c16a6;
  case 0x43:
    local_30 = param_1[0x15];
    param_1[0x15] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c1671;
  case 0x44:
    local_30 = param_1[0x15];
    param_1[0x15] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c15fd;
  case 0x45:
    local_30 = param_1[0x15];
    param_1[0x15] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c15c6;
  case 0x46:
    local_30 = param_1[0x15];
    param_1[0x15] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c1552;
  case 0x47:
    local_30 = param_1[0x15];
    param_1[0x15] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c151d;
  case 0x48:
    local_30 = param_1[0x15];
    param_1[0x15] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c14b6;
  case 0x49:
    goto switchD_007bdcbc_caseD_49;
  case 0x4a:
    local_34 = param_1[0x16];
    param_1[0x16] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c1447;
  case 0x4b:
    local_34 = param_1[0x16];
    param_1[0x16] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c141a;
  case 0x4c:
    local_30 = param_1[0x15];
    param_1[0x15] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c13f4;
  case 0x4d:
    local_30 = param_1[0x15];
    param_1[0x15] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c13bf;
  case 0x4e:
    local_34 = param_1[0x16];
    param_1[0x16] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c1340;
  case 0x4f:
    local_34 = param_1[0x16];
    param_1[0x16] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c1313;
  case 0x50:
    local_30 = param_1[0x15];
    param_1[0x15] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c1234;
  case 0x51:
    local_34 = param_1[0x16];
    param_1[0x16] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c11b5;
  case 0x52:
    local_34 = param_1[0x16];
    param_1[0x16] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c118f;
  case 0x53:
    local_30 = param_1[0x15];
    param_1[0x15] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c1158;
  case 0x54:
    local_30 = param_1[0x15];
    param_1[0x15] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c10e4;
  case 0x55:
    local_30 = param_1[0x15];
    param_1[0x15] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c10af;
  case 0x56:
    local_44 = param_1[0x1d];
    param_1[0x1d] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c1024;
  case 0x57:
    local_7c = param_1[0x21];
    param_1[0x21] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c0fbb;
  case 0x58:
    goto switchD_007bdcbc_caseD_58;
  case 0x59:
    local_34 = param_1[0x16];
    param_1[0x16] = 0;
    goto LAB_007c0f2b;
  case 0x5a:
    local_34 = param_1[0x16];
    param_1[0x16] = 0;
LAB_007c0f2b:
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c0f39;
  case 0x5b:
    local_34 = param_1[0x16];
    param_1[0x16] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c0ea4;
  case 0x5c:
    local_34 = param_1[0x16];
    param_1[0x16] = 0;
    goto LAB_007c0e6b;
  case 0x5d:
    local_34 = param_1[0x16];
    param_1[0x16] = 0;
LAB_007c0e6b:
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c0e79;
  case 0x5e:
    local_30 = param_1[0x15];
    param_1[0x15] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c0d8b;
  case 0x5f:
    local_34 = param_1[0x16];
    param_1[0x16] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c0d23;
  case 0x60:
    local_34 = param_1[0x16];
    param_1[0x16] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c0cf6;
  case 0x61:
    local_30 = param_1[0x15];
    param_1[0x15] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c0cd0;
  case 0x62:
    local_30 = param_1[0x15];
    param_1[0x15] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c0c9b;
  case 99:
    local_34 = param_1[0x16];
    param_1[0x16] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c0c1c;
  case 100:
    local_34 = param_1[0x16];
    param_1[0x16] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c0bef;
  case 0x65:
    local_30 = param_1[0x15];
    param_1[0x15] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c0b10;
  case 0x66:
    local_34 = param_1[0x16];
    param_1[0x16] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c0a91;
  case 0x67:
    local_34 = param_1[0x16];
    param_1[0x16] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c0a6b;
  case 0x68:
    local_30 = param_1[0x15];
    param_1[0x15] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c0a34;
  case 0x69:
    local_30 = param_1[0x15];
    param_1[0x15] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c09c0;
  case 0x6a:
    local_30 = param_1[0x15];
    param_1[0x15] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c098b;
  case 0x6b:
    local_30 = param_1[0x15];
    param_1[0x15] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007c0965;
  case 0x6c:
    local_30 = param_1[0x15];
    param_1[0x15] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007be209;
  case 0x6d:
    local_34 = param_1[0x16];
    param_1[0x16] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007be1ba;
  case 0x6e:
    goto switchD_007bdcbc_caseD_6e;
  case 0x6f:
    local_34 = param_1[0x16];
    param_1[0x16] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007be149;
  case 0x70:
    local_34 = param_1[0x16];
    param_1[0x16] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007be0e3;
  case 0x71:
    goto switchD_007bdcbc_caseD_71;
  case 0x72:
    local_34 = param_1[0x16];
    param_1[0x16] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007be016;
  case 0x73:
    local_34 = param_1[0x16];
    param_1[0x16] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007bdfa7;
  case 0x74:
    local_34 = param_1[0x16];
    param_1[0x16] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007bdf6e;
  case 0x75:
    local_30 = param_1[0x15];
    param_1[0x15] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007bde8f;
  case 0x76:
    local_34 = param_1[0x16];
    param_1[0x16] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007bddd8;
  case 0x77:
    local_34 = param_1[0x16];
    param_1[0x16] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007bddab;
  case 0x78:
    local_30 = param_1[0x15];
    param_1[0x15] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007bdd85;
  case 0x79:
    local_30 = param_1[0x15];
    param_1[0x15] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007bdcfd;
  case 0x7a:
    local_34 = param_1[0x16];
    param_1[0x16] = 0;
    local_1c[2] = -1;
    param_1[0xb] = -1;
    goto LAB_007bdcd7;
  default:
    FUN_00eae9a0();
    FUN_00eaeca8();
    FUN_00eaebef();
    FUN_00eaebef();
    FUN_00eae9a0();
    FUN_00e99c63(in_stack_fffffc34);
    FUN_00e4ee90(&PTR_DAT_01543690);
    FUN_00e4ee50();
    FUN_00eaeca8();
    FUN_00eae9a0();
    FUN_00e99c74(in_stack_fffffc38);
    iVar7 = FUN_00e4d760(&PTR_DAT_0154358c);
    if (iVar7 == 0) {
      iVar7 = param_1[5];
      *(int *)(iVar7 + 0xc) = *(int *)(iVar7 + 0xc) + 1;
      if (*(uint *)(iVar7 + 8) < *(uint *)(*(int *)(iVar7 + 4) + 4)) {
        *(uint *)(iVar7 + 8) = *(uint *)(iVar7 + 8) + 1;
        FUN_00eaec5e();
      }
      else {
        FUN_00ccd380();
      }
    }
    FUN_0099d430(2);
    uVar3 = _UNK_018d519c;
    uVar2 = _UNK_018d5198;
    uVar5 = _UNK_018d5194;
    puVar12 = local_10c;
    puVar15 = local_2c;
    for (iVar7 = 6; iVar7 != 0; iVar7 = iVar7 + -1) {
      *puVar15 = *puVar12;
      puVar12 = puVar12 + 1;
      puVar15 = puVar15 + 1;
    }
    if (local_1c[1] < local_2c[2]) goto LAB_007c3d79;
    puVar11 = (undefined4 *)(local_1c[0] + local_2c[2] * 2);
    if (local_1c[1] - local_2c[2] < 0x1c) {
      FUN_0099d6f0();
    }
    else {
      *puVar11 = _DAT_018d5190;
      puVar11[1] = uVar5;
      puVar11[2] = uVar2;
      puVar11[3] = uVar3;
      uVar3 = _UNK_018d51ac;
      uVar2 = _UNK_018d51a8;
      uVar5 = _UNK_018d51a4;
      puVar11[4] = _DAT_018d51a0;
      puVar11[5] = uVar5;
      puVar11[6] = uVar2;
      puVar11[7] = uVar3;
      uVar3 = _UNK_018d51bc;
      uVar2 = _UNK_018d51b8;
      uVar5 = _UNK_018d51b4;
      puVar11[8] = _DAT_018d51b0;
      puVar11[9] = uVar5;
      puVar11[10] = uVar2;
      puVar11[0xb] = uVar3;
      puVar11[0xc] = &DAT_00f30068;
      puVar11[0xd] = 0x20006d;
      local_2c[2] = local_2c[2] + 0x1c;
    }
    iVar7 = *(int *)(param_1[1] + 4);
    if ((local_20 == '\0') && (iVar7 != 0)) {
      if (local_1c[1] < local_2c[2]) goto LAB_007c3d79;
      if (local_1c[1] - local_2c[2] < *(uint *)(iVar7 + 4)) goto LAB_007c3a6d;
      FUN_00930280(*(int *)(iVar7 + 4) * 2);
      local_2c[2] = local_2c[2] + *(int *)(iVar7 + 4);
    }
    else {
LAB_007c3a6d:
      FUN_0099d670();
    }
    if (local_1c[1] < local_2c[2]) {
LAB_007c3d79:
                    /* WARNING: Subroutine does not return */
      FUN_009318f0();
    }
    puVar11 = (undefined4 *)(local_1c[0] + local_2c[2] * 2);
    if (local_1c[1] - local_2c[2] < 5) {
      FUN_0099d6f0();
    }
    else {
      *puVar11 = 0x670020;
      puVar11[1] = 0x6d1ed3;
      *(undefined2 *)(puVar11 + 2) = 0x20;
      local_2c[2] = local_2c[2] + 5;
    }
    FUN_00de77e0();
    uVar3 = _UNK_018d51cc;
    uVar2 = _UNK_018d51c8;
    uVar5 = _UNK_018d51c4;
    if (local_1c[1] < local_2c[2]) goto LAB_007c3d79;
    puVar11 = (undefined4 *)(local_1c[0] + local_2c[2] * 2);
    if (local_1c[1] - local_2c[2] < 0xe) {
      FUN_0099d6f0();
    }
    else {
      *puVar11 = _DAT_018d51c0;
      puVar11[1] = uVar5;
      puVar11[2] = uVar2;
      puVar11[3] = uVar3;
      puVar11[4] = 0xea0069;
      puVar11[5] = 0x2e006e;
      puVar11[6] = 0x2e002e;
      local_2c[2] = local_2c[2] + 0xe;
    }
    FUN_0099d560();
    FUN_007876b0();
    local_30 = FUN_0077af00();
    if ((*(uint *)(local_30 + 0x1c) & 0x1600000) == 0) {
      param_1[0xb] = 0;
      FUN_00eaecdd();
      FUN_00d9c5e0();
      FUN_00dfc9c0();
      return;
    }
LAB_007c3844:
    if ((*(uint *)(local_30 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    if (*(char *)(local_30 + 0x20) == '\0') {
      FUN_0077ae40();
      local_34 = FUN_00975000(*(undefined4 *)(iVar1 + 0x1c));
      if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
        param_1[0xb] = 1;
        FUN_00eaecdd();
        FUN_00d9c5e0();
        FUN_00dfc9c0();
        return;
      }
LAB_007c37c6:
      if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
    }
    local_30 = FUN_007b6b00();
    if ((*(uint *)(local_30 + 0x1c) & 0x1600000) == 0) {
      param_1[0xb] = 2;
      FUN_00eaecdd();
      FUN_00d9c5e0();
      FUN_00dfc9c0();
      return;
    }
LAB_007c36f5:
    if ((*(uint *)(local_30 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    if (*(char *)(local_30 + 0x20) == '\0') {
      FUN_00eae9a0();
      FUN_00e99c85(in_stack_fffffc3c);
      FUN_00e44450(&PTR_DAT_01543838);
      FUN_00e4ee50();
      local_38 = FUN_00e52700();
      if ((*(uint *)(local_38 + 0x1c) & 0x1600000) == 0) {
        param_1[0xb] = 3;
        FUN_00eaecdd();
        FUN_00d9c5e0();
        FUN_00dfca00(&PTR_DAT_0156ed90);
        return;
      }
LAB_007c3668:
      if ((*(uint *)(local_38 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      iVar7 = *(int *)(local_38 + 0x20);
      FUN_00eae9a0();
      FUN_00e99c96(in_stack_fffffc40);
      iVar6 = FUN_00e4e4a0(&PTR_DAT_015536e0,local_294);
      if ((iVar6 == 0) || (*(char *)(iVar6 + 8) == '\0')) {
        FUN_007876b0();
LAB_007c3d85:
        param_1[0xb] = -2;
        param_1[1] = 0;
        param_1[5] = 0;
        FUN_0099cd70();
        return;
      }
      iVar6 = FUN_00eae9a0();
      *(undefined ***)(iVar6 + 4) = &PTR_DAT_01c1142c;
      iVar9 = 0;
      if (0 < *(int *)(iVar7 + 4)) {
        do {
          local_3c = iVar9;
          if (*(char *)(*(int *)(iVar7 + 8 + iVar9 * 4) + 8) == '\0') {
            FUN_00906aa0(&PTR_DAT_01b3b4a8);
            FUN_007876b0();
          }
          else {
            *(int *)(iVar6 + 0xc) = *(int *)(iVar6 + 0xc) + 1;
            local_298 = *(uint *)(iVar6 + 8);
            if (local_298 < *(uint *)(*(int *)(iVar6 + 4) + 4)) {
              *(uint *)(iVar6 + 8) = local_298 + 1;
              FUN_00eaebca();
            }
            else {
              FUN_00ccd380();
            }
          }
          iVar9 = local_3c + 1;
        } while (iVar9 < *(int *)(iVar7 + 4));
      }
      FUN_00eaed7c();
      if (*(int *)(param_1[5] + 8) == 0) {
        FUN_007876b0();
        goto LAB_007c3d85;
      }
      FUN_00eae9a0();
      FUN_00e99ca7(in_stack_fffffc44);
      FUN_00e44450(in_stack_fffffc44);
      FUN_00e4ee50();
      in_stack_fffffc3c = 0x7c3cda;
      local_34 = FUN_00975100();
      if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
        param_1[0xb] = 4;
        FUN_00eaecdd();
        FUN_00d9c5e0();
        FUN_00dfc9c0();
        return;
      }
LAB_007c3600:
      if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      FUN_007876b0();
      cVar8 = '\0';
      param_1[0xd] = 0;
      do {
        if (0xe < param_1[0xd]) break;
        local_34 = FUN_00975000(*(undefined4 *)(iVar1 + 0x1c));
        if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
          param_1[0xb] = 5;
          FUN_00eaecdd();
          FUN_00d9c5e0();
          FUN_00dfc9c0();
          return;
        }
LAB_007c063a:
        if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        param_1[0xd] = param_1[0xd] + 1;
        iVar7 = FUN_00eaecdd();
        param_1[0x19] = 0;
        param_1[0x1a] = iVar7;
        param_1[0x1b] = 0;
switchD_007bdcbc_caseD_6:
        switch(local_1c[2]) {
        case 6:
          local_30 = param_1[0x15];
          param_1[0x15] = 0;
          local_1c[2] = -1;
          param_1[0xb] = -1;
          break;
        case 7:
          local_34 = param_1[0x16];
          param_1[0x16] = 0;
          local_1c[2] = -1;
          param_1[0xb] = -1;
          goto LAB_007c339e;
        case 8:
          local_40 = param_1[0x1c];
          param_1[0x1c] = 0;
          local_1c[2] = -1;
          param_1[0xb] = -1;
          goto LAB_007c06ac;
        default:
          goto switchD_007c0691_default;
        }
        while( true ) {
          if ((*(uint *)(local_30 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          if (*(char *)(local_30 + 0x20) == '\0') {
            FUN_00906aa0(&PTR_DAT_01b3acb8);
            FUN_007876b0();
            uVar5 = FUN_00906a20();
            FUN_00782420(uVar5);
            local_29c = *(undefined4 *)(*(int *)(param_1[6] + 0x108) + 0x34);
            FUN_00eaeae1();
            iVar7 = FUN_00eae9a0();
            *(undefined4 *)(iVar7 + 4) = 0x3c9;
            FUN_00eaebca();
            iVar7 = FUN_00eae9a0();
            *(undefined4 *)(iVar7 + 4) = 0;
            FUN_00eaebca();
            FUN_0077a610(extraout_ECX_02,&PTR_DAT_01be3a98);
            local_34 = FUN_00975000(*(undefined4 *)(iVar1 + 0x1c));
            if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
              param_1[0xb] = 7;
              FUN_00eaecdd();
              FUN_00d9c5e0();
              FUN_00dfc9c0();
              return;
            }
LAB_007c339e:
            if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            local_40 = FUN_0077b0a0(&PTR_DAT_01b91278);
            if ((*(uint *)(local_40 + 0x1c) & 0x1600000) == 0) {
              param_1[0xb] = 8;
              FUN_00eaecdd();
              FUN_00d9c5e0();
              FUN_00dfca00(&PTR_DAT_01553b90);
              return;
            }
LAB_007c06ac:
            if ((*(uint *)(local_40 + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            if (*(int *)(local_40 + 0x20) != 0) {
              iVar7 = *(int *)(*(int *)(local_40 + 0x20) + 0x10);
              iVar6 = *(int *)(iVar7 + 8);
              if (0 < iVar6) {
                local_290 = *(undefined4 *)(*(int *)(param_1[6] + 0x108) + 0x34);
                if (iVar6 == 0) {
                    /* WARNING: Subroutine does not return */
                  FUN_009319a0();
                }
                iVar7 = *(int *)(iVar7 + 4);
                if (*(int *)(iVar7 + 4) == 0) {
                    /* WARNING: Subroutine does not return */
                  FUN_009c2bf0();
                }
                local_2a0 = *(undefined4 *)(*(int *)(iVar7 + 8) + 8);
                iVar7 = FUN_00eaeae1();
                *(undefined ***)(iVar7 + 8) = &PTR_DAT_01b91278;
                iVar7 = FUN_00eae9a0();
                *(undefined4 *)(iVar7 + 4) = local_2a0;
                FUN_00eaebca();
                iVar7 = FUN_00eae9a0();
                *(undefined4 *)(iVar7 + 4) = 0;
                FUN_00eaebca();
                FUN_0077a610(extraout_ECX_00,&PTR_DAT_01befc64);
              }
            }
          }
          param_1[6] = 0;
switchD_007c0691_default:
          iVar7 = FUN_00cd0850();
          if (iVar7 == 0) break;
          FUN_00eaecdd();
          local_30 = FUN_007b6ac0();
          if ((*(uint *)(local_30 + 0x1c) & 0x1600000) == 0) {
            param_1[0xb] = 6;
            FUN_00eaecdd();
            FUN_00d9c5e0();
            FUN_00dfc9c0();
            return;
          }
        }
        param_1[0x18] = 0;
        param_1[0x19] = 0;
        param_1[0x1a] = 0;
        param_1[0x1b] = 0;
        local_30 = FUN_007b6b00();
        if ((*(uint *)(local_30 + 0x1c) & 0x1600000) == 0) {
          param_1[0xb] = 9;
          FUN_00eaecdd();
          FUN_00d9c5e0();
          FUN_00dfc9c0();
          return;
        }
LAB_007c05f2:
        if ((*(uint *)(local_30 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        cVar8 = *(char *)(local_30 + 0x20);
      } while (cVar8 == '\0');
      if (cVar8 == '\0') {
        FUN_007876b0();
        goto LAB_007c3d85;
      }
    }
    local_44 = FUN_0077acc0();
    if ((*(uint *)(local_44 + 0x1c) & 0x1600000) == 0) {
      param_1[0xb] = 10;
      FUN_00eaecdd();
      FUN_00d9c5e0();
      FUN_00dfca00(&PTR_DAT_01568d68);
      return;
    }
LAB_007c050e:
    if ((*(uint *)(local_44 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    if (*(int *)(local_44 + 0x20) != 0) {
      if (*(int *)(DAT_01c289c4 + 8) == 0) {
        FUN_00eae9a0();
        FUN_00e99856(in_stack_fffffc3c);
        in_stack_fffffc3c = 0x7c0572;
        FUN_00eaebef();
      }
      iVar7 = FUN_00e4d760(&PTR_DAT_01544384);
      if (iVar7 != 0) {
        FUN_007876b0();
        local_54 = param_1[5];
        local_4c = *(undefined4 *)(local_54 + 0xc);
        local_50 = 0;
        local_48 = 0;
        iVar7 = FUN_00cd0850();
        while (iVar7 != 0) {
          local_2a4 = *(undefined4 *)(*(int *)(local_50 + 0x108) + 0x34);
          FUN_00eaeae1();
          iVar7 = FUN_00eae9a0();
          *(undefined4 *)(iVar7 + 4) = 0;
          FUN_00eaebca();
          FUN_0077a610(extraout_ECX_01,&PTR_DAT_01beaee0);
          iVar7 = FUN_00cd0850();
        }
        local_34 = FUN_00975000(*(undefined4 *)(iVar1 + 0x1c));
        if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
          param_1[0xb] = 0xc;
          FUN_00eaecdd();
          FUN_00d9c5e0();
          FUN_00dfc9c0();
          return;
        }
LAB_007c29c8:
        if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        goto LAB_007c2a19;
      }
    }
    local_34 = FUN_007b6660(*(undefined4 *)(param_1[1] + 4));
    if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
      param_1[0xb] = 0xb;
      FUN_00eaecdd();
      FUN_00d9c5e0();
      FUN_00dfc9c0();
      return;
    }
LAB_007c29fe:
    if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
LAB_007c2a19:
    param_1[0xc] = 0;
    iVar7 = param_1[1];
    *(undefined4 *)(iVar7 + 0x24) = 0;
    *(undefined4 *)(iVar7 + 0x28) = 0;
LAB_007c2a29:
    if (param_1[0xc] != 0x18) {
      if (param_1[0xc] == 0) {
        local_58 = FUN_007b6a20();
        if ((*(uint *)(local_58 + 0x1c) & 0x1600000) == 0) {
          param_1[0xb] = 0xd;
          FUN_00eaecdd();
          FUN_00d9c5e0();
          FUN_00dfc9c0();
          return;
        }
LAB_007c2956:
        if ((*(uint *)(local_58 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        param_1[0xc] = *(int *)(local_58 + 0x20);
        if (PTR_LAB_01c23e7c != (undefined *)0x0) {
          FUN_00e8f54a();
        }
        local_6c = FUN_00b848a0();
        if (local_6c == 0) {
          local_60 = 0;
          local_5c = 0;
        }
        else {
          local_60 = local_6c + 8;
          local_5c = *(uint *)(local_6c + 4);
        }
        local_70 = 0;
        local_68 = 0;
        local_64 = 0;
        if (local_5c < 0x22) {
          FUN_0099d6f0();
        }
        else {
          FUN_00930280(0x44);
          local_68 = local_68 + 0x22;
        }
        FUN_00d9d200();
        FUN_0099d560();
        FUN_007876b0();
      }
      FUN_00eae9a0();
      FUN_00eaeca8();
      FUN_00eaebef();
      switch(param_1[0xc]) {
      case 1:
        FUN_00eae9a0();
        FUN_00eaeca8();
        FUN_00eaebef();
        local_44 = FUN_0077acc0();
        if ((*(uint *)(local_44 + 0x1c) & 0x1600000) == 0) {
          param_1[0xb] = 0xe;
          FUN_00eaecdd();
          FUN_00d9c5e0();
          FUN_00dfca00(&PTR_DAT_01568d68);
          return;
        }
LAB_007c2908:
        if ((*(uint *)(local_44 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        if (*(int *)(local_44 + 0x20) != 0) {
          if (*(int *)(DAT_01c289c4 + 0xc) == 0) {
            FUN_00eae9a0();
            FUN_00e99867(in_stack_fffffc3c);
            in_stack_fffffc3c = 0x7c03e0;
            FUN_00eaebef();
          }
          FUN_00e4e4a0(&PTR_DAT_01544440,local_2a8);
        }
        FUN_00eaebca();
        if (*(int *)(param_1[2] + 4) == 0) {
          local_34 = FUN_00975000(*(undefined4 *)(iVar1 + 0x1c));
          if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
            param_1[0xb] = 0x11;
            FUN_00eaecdd();
            FUN_00d9c5e0();
            FUN_00dfc9c0();
            return;
          }
LAB_007c2767:
          if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
        }
        else {
          FUN_00eae9a0();
          FUN_00e99d2f(in_stack_fffffc3c);
          FUN_00e44450(&PTR_DAT_015437ec);
          in_stack_fffffc3c = 0x7c04a4;
          local_34 = FUN_00975100();
          if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
            param_1[0xb] = 0xf;
            FUN_00eaecdd();
            FUN_00d9c5e0();
            FUN_00dfc9c0();
            return;
          }
LAB_007c2821:
          if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          if (*(int *)(*(int *)(*(int *)(param_1[2] + 8) + 8) + 0xc) == 0) {
            FUN_00eae9a0();
            FUN_00e99cb8(in_stack_fffffc3c);
            in_stack_fffffc3c = 0x7c2899;
            FUN_00eaebef();
          }
          FUN_00e44450(&PTR_DAT_015437ec);
          local_34 = FUN_00975100();
          if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
            param_1[0xb] = 0x10;
            FUN_00eaecdd();
            FUN_00d9c5e0();
            FUN_00dfc9c0();
            return;
          }
LAB_007c279d:
          if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
        }
        local_30 = FUN_007b66b0(&PTR_DAT_01bfa00c);
        if ((*(uint *)(local_30 + 0x1c) & 0x1600000) == 0) {
          param_1[0xb] = 0x12;
          FUN_00eaecdd();
          FUN_00d9c5e0();
          FUN_00dfc9c0();
          return;
        }
LAB_007c271a:
        if ((*(uint *)(local_30 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        if (*(char *)(local_30 + 0x20) == '\0') goto LAB_007c2035;
        param_1[0xc] = 2;
        break;
      case 2:
        local_30 = FUN_007b69d0(param_1[5]);
        if ((*(uint *)(local_30 + 0x1c) & 0x1600000) == 0) {
          param_1[0xb] = 0x13;
          FUN_00eaecdd();
          FUN_00d9c5e0();
          FUN_00dfc9c0();
          return;
        }
LAB_007c265b:
        if ((*(uint *)(local_30 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        if (*(char *)(local_30 + 0x20) == '\0') {
          FUN_007876b0();
          *(undefined1 *)((int)param_1 + 0x4e) = 1;
          iVar7 = FUN_00eaecdd();
          param_1[0x19] = 0;
          param_1[0x1a] = iVar7;
          param_1[0x1b] = 0;
switchD_007bdcbc_caseD_14:
          if (local_1c[2] != 0x14) goto LAB_007bfd09;
          local_74 = param_1[0x1f];
          param_1[0x1f] = 0;
          local_1c[2] = -1;
          param_1[0xb] = -1;
          while( true ) {
            if ((*(uint *)(local_74 + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            if (*(int *)(local_74 + 0x20) == 0) {
              iVar7 = 0;
            }
            else {
              if (*(int *)(DAT_01c289c4 + 0x18) == 0) {
                FUN_00eae9a0();
                FUN_00e9989a(in_stack_fffffc3c);
                in_stack_fffffc3c = 0x7bfc87;
                FUN_00eaebef();
              }
              iVar7 = FUN_00e4e4a0(&PTR_DAT_01544bfc,local_2ac);
            }
            if (iVar7 == 0) break;
            if (*(int *)(DAT_01c289c4 + 0x1c) == 0) {
              FUN_00eae9a0();
              FUN_00e998ab(in_stack_fffffc3c);
              in_stack_fffffc3c = 0x7bfce7;
              FUN_00eaebef();
            }
            iVar7 = FUN_00e4e4a0(&PTR_DAT_01544e10,local_2b0);
            if ((iVar7 != 0) && (*(int *)(iVar7 + 0x14) < *(int *)(iVar7 + 0x10))) break;
LAB_007bfd09:
            iVar7 = FUN_00cd0850();
            if (iVar7 == 0) goto LAB_007bfd7c;
            local_74 = FUN_0077ad90();
            if ((*(uint *)(local_74 + 0x1c) & 0x1600000) == 0) {
              param_1[0xb] = 0x14;
              FUN_00eaecdd();
              FUN_00d9c5e0();
              FUN_00dfca00(&PTR_DAT_01568f14);
              return;
            }
          }
          *(undefined1 *)((int)param_1 + 0x4e) = 0;
LAB_007bfd7c:
          param_1[0x18] = 0;
          param_1[0x19] = 0;
          param_1[0x1a] = 0;
          param_1[0x1b] = 0;
          if (*(char *)((int)param_1 + 0x4e) == '\0') {
            FUN_007876b0();
            iVar7 = FUN_00eaecdd();
            param_1[0x19] = 0;
            param_1[0x1a] = iVar7;
            param_1[0x1b] = 0;
switchD_007bdcbc_caseD_15:
            switch(local_1c[2]) {
            case 0x15:
              local_34 = param_1[0x16];
              param_1[0x16] = 0;
              local_1c[2] = -1;
              param_1[0xb] = -1;
              break;
            case 0x16:
              local_30 = param_1[0x15];
              param_1[0x15] = 0;
              local_1c[2] = -1;
              param_1[0xb] = -1;
              goto LAB_007bfefb;
            case 0x17:
              local_34 = param_1[0x16];
              param_1[0x16] = 0;
              local_1c[2] = -1;
              param_1[0xb] = -1;
              goto LAB_007bfdf1;
            default:
              goto switchD_007bfdd6_default;
            }
            do {
              if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
                FUN_0099dbc0();
              }
LAB_007c0017:
              local_30 = FUN_0077af00();
              if ((*(uint *)(local_30 + 0x1c) & 0x1600000) == 0) {
                param_1[0xb] = 0x16;
                FUN_00eaecdd();
                FUN_00d9c5e0();
                FUN_00dfc9c0();
                return;
              }
LAB_007bfefb:
              if ((*(uint *)(local_30 + 0x1c) & 0x11000000) != 0x1000000) {
                FUN_0099dbc0();
              }
              if (*(char *)(local_30 + 0x20) == '\0') {
                local_34 = FUN_00975000(*(undefined4 *)(iVar1 + 0x1c));
                if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
                  param_1[0xb] = 0x17;
                  FUN_00eaecdd();
                  FUN_00d9c5e0();
                  FUN_00dfc9c0();
                  return;
                }
LAB_007bfdf1:
                if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
                  FUN_0099dbc0();
                }
                param_1[6] = 0;
switchD_007bfdd6_default:
                iVar7 = FUN_00cd0850();
                if (iVar7 != 0) goto LAB_007bffab;
                param_1[0x18] = 0;
                param_1[0x19] = 0;
                param_1[0x1a] = 0;
                param_1[0x1b] = 0;
                if (*(int *)(*(int *)(param_1[3] + 8) + 0x10) == 0) {
                  FUN_00eae9a0();
                  FUN_00e99cc9(in_stack_fffffc3c);
                  in_stack_fffffc3c = 0x7bfe8c;
                  FUN_00eaebef();
                }
                FUN_00e44450(&PTR_DAT_015437ec);
                local_34 = FUN_00975100();
                if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
                  param_1[0xb] = 0x18;
                  FUN_00eaecdd();
                  FUN_00d9c5e0();
                  FUN_00dfc9c0();
                  return;
                }
LAB_007c25ab:
                if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
                  FUN_0099dbc0();
                }
                *(undefined1 *)((int)param_1 + 0x4f) = 0;
                iVar7 = FUN_00eaecdd();
                param_1[0x19] = 0;
                param_1[0x1a] = iVar7;
                param_1[0x1b] = 0;
switchD_007bdcbc_caseD_19:
                if (local_1c[2] == 0x19) {
                  local_78 = param_1[0x20];
                  param_1[0x20] = 0;
                  local_1c[2] = -1;
                  param_1[0xb] = -1;
                  goto LAB_007c0117;
                }
                if (local_1c[2] != 0x1a) goto LAB_007c028b;
                local_74 = param_1[0x1f];
                param_1[0x1f] = 0;
                local_1c[2] = -1;
                param_1[0xb] = -1;
                do {
                  if ((*(uint *)(local_74 + 0x1c) & 0x11000000) != 0x1000000) {
                    FUN_0099dbc0();
                  }
                  if (*(int *)(local_74 + 0x20) == 0) {
                    iVar7 = 0;
                  }
                  else {
                    if (*(int *)(DAT_01c289c4 + 0x28) == 0) {
                      FUN_00eae9a0();
                      FUN_00e998de(in_stack_fffffc3c);
                      in_stack_fffffc3c = 0x7c01de;
                      FUN_00eaebef();
                    }
                    iVar7 = FUN_00e4e4a0(&PTR_DAT_01544bfc,local_2b8);
                  }
                  if (iVar7 != 0) {
                    if (*(int *)(DAT_01c289c4 + 0x2c) == 0) {
                      FUN_00eae9a0();
                      FUN_00e998ef(in_stack_fffffc3c);
                      in_stack_fffffc3c = 0x7c023e;
                      FUN_00eaebef();
                    }
                    iVar7 = FUN_00e4e4a0(&PTR_DAT_01544e10,local_2bc);
                    if ((iVar7 != 0) && (*(int *)(iVar7 + 0x14) < *(int *)(iVar7 + 0x10))) {
                      FUN_00906aa0(&PTR_DAT_01b3c268);
                      FUN_007876b0();
                      *(undefined1 *)((int)param_1 + 0x4f) = 1;
                    }
                  }
                  do {
                    param_1[6] = 0;
LAB_007c028b:
                    iVar7 = FUN_00cd0850();
                    if (iVar7 == 0) {
                      param_1[0x18] = 0;
                      param_1[0x19] = 0;
                      param_1[0x1a] = 0;
                      param_1[0x1b] = 0;
                      if (*(char *)((int)param_1 + 0x4f) != '\0') goto LAB_007c3d85;
                      goto LAB_007c0319;
                    }
                    FUN_00eaecdd();
                    local_78 = FUN_0077b240();
                    if ((*(uint *)(local_78 + 0x1c) & 0x1600000) == 0) {
                      param_1[0xb] = 0x19;
                      FUN_00eaecdd();
                      FUN_00d9c5e0();
                      FUN_00dfc9c0();
                      return;
                    }
LAB_007c0117:
                    if ((*(uint *)(local_78 + 0x1c) & 0x11000000) != 0x1000000) {
                      FUN_0099dbc0();
                    }
                  } while (*(int *)(local_78 + 0x20) < *(int *)(local_78 + 0x24));
                  local_74 = FUN_0077ad90();
                  if ((*(uint *)(local_74 + 0x1c) & 0x1600000) == 0) {
                    param_1[0xb] = 0x1a;
                    FUN_00eaecdd();
                    FUN_00d9c5e0();
                    FUN_00dfca00(&PTR_DAT_01568f14);
                    return;
                  }
                } while( true );
              }
              uVar5 = FUN_00906a20();
              FUN_00782420(uVar5);
              local_34 = FUN_00975000(*(undefined4 *)(iVar1 + 0x1c));
              if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
                param_1[0xb] = 0x15;
                FUN_00eaecdd();
                FUN_00d9c5e0();
                FUN_00dfc9c0();
                return;
              }
            } while( true );
          }
        }
LAB_007c0319:
        param_1[0xc] = 3;
        break;
      case 3:
        local_30 = FUN_007b69d0(param_1[5]);
        if ((*(uint *)(local_30 + 0x1c) & 0x1600000) == 0) {
          param_1[0xb] = 0x1b;
          FUN_00eaecdd();
          FUN_00d9c5e0();
          FUN_00dfc9c0();
          return;
        }
LAB_007c2530:
        iVar7 = FUN_00b6fc70();
        if (iVar7 == 0) {
          FUN_007b6660(*(undefined4 *)(*(int *)(param_1[3] + 8) + 4));
          local_34 = FUN_00973a50();
          iVar7 = FUN_0099db90();
          if (iVar7 == 0) {
            param_1[0xb] = 0x1c;
            FUN_00eaecdd();
            FUN_00dfcaa0(param_1);
            return;
          }
LAB_007c2459:
          FUN_0099dba0();
          FUN_007876b0();
          local_254[6] = 0;
          local_254[7] = 0;
          FUN_00787600();
          FUN_00775250();
          FUN_00bb49c0();
          FUN_00b5cdb0();
          FUN_007877c0(1,local_254[6],local_254[7],(int)DAT_018d5118,
                       (int)((ulonglong)DAT_018d5118 >> 0x20),(int)DAT_018d5110,
                       (int)((ulonglong)DAT_018d5110 >> 0x20));
          local_34 = FUN_00973a50();
          iVar7 = FUN_0099db90();
          if (iVar7 == 0) {
            param_1[0xb] = 0x1d;
            FUN_00eaecdd();
            FUN_00dfcaa0(param_1);
            return;
          }
LAB_007c23ea:
          while( true ) {
            FUN_0099dba0();
            FUN_007b69d0(param_1[5]);
            local_30 = FUN_00b6e1a0();
            iVar7 = FUN_00b6fc00();
            if (iVar7 == 0) {
              param_1[0xb] = 0x1e;
              FUN_00eaecdd();
              FUN_00e17910(param_1);
              return;
            }
LAB_007c2364:
            iVar7 = FUN_00b6fc70();
            if (iVar7 != 0) break;
            FUN_00787620();
            FUN_00792d90();
            local_7c = FUN_00cc8cb0();
            iVar7 = FUN_00b6fc00();
            if (iVar7 == 0) {
              param_1[0xb] = 0x1f;
              FUN_00eaecdd();
              FUN_00e394a0(&PTR_PTR_01554004,param_1);
              return;
            }
LAB_007c22a8:
            iVar7 = FUN_00cce6b0();
            if ((iVar7 != 0) && (iVar7 = FUN_00778e60(), iVar7 == 0)) {
              FUN_00787620();
              FUN_00792ce0((int)DAT_018d5128,(int)((ulonglong)DAT_018d5128 >> 0x20),
                           (int)DAT_018d5120,(int)((ulonglong)DAT_018d5120 >> 0x20));
              FUN_007876f0();
              local_34 = FUN_00973a50();
              iVar7 = FUN_0099db90();
              if (iVar7 == 0) {
                param_1[0xb] = 0x20;
                FUN_00eaecdd();
                FUN_00dfcaa0(param_1);
                return;
              }
LAB_007c2224:
              FUN_0099dba0();
              FUN_00787620();
              FUN_00792d90();
              local_7c = FUN_00cc8cb0();
              iVar7 = FUN_00b6fc00();
              if (iVar7 == 0) {
                param_1[0xb] = 0x21;
                FUN_00eaecdd();
                FUN_00e394a0(&PTR_PTR_01554004,param_1);
                return;
              }
LAB_007c2174:
              FUN_00cce6b0();
              iVar7 = FUN_00778e60();
              if (iVar7 == 0) {
                FUN_00787620();
                FUN_00792ce0((int)DAT_018d5118,(int)((ulonglong)DAT_018d5118 >> 0x20),
                             (int)DAT_018d5110,(int)((ulonglong)DAT_018d5110 >> 0x20));
              }
            }
            FUN_007876f0();
            local_34 = FUN_00973a50();
            iVar7 = FUN_0099db90();
            if (iVar7 == 0) {
              param_1[0xb] = 0x22;
              FUN_00eaecdd();
              FUN_00dfcaa0(param_1);
              return;
            }
          }
          FUN_007b6790();
          local_34 = FUN_00973a50();
          iVar7 = FUN_0099db90();
          if (iVar7 == 0) {
            param_1[0xb] = 0x23;
            FUN_00eaecdd();
            FUN_00dfcaa0(param_1);
            return;
          }
LAB_007c2131:
          FUN_0099dba0();
        }
        param_1[0xc] = 4;
        break;
      case 4:
        FUN_007876b0();
        while( true ) {
          FUN_007b6980(&PTR_DAT_01bfa00c);
          local_30 = FUN_00b6e1a0();
          iVar7 = FUN_00b6fc00();
          if (iVar7 == 0) {
            param_1[0xb] = 0x28;
            FUN_00eaecdd();
            FUN_00e17910(param_1);
            return;
          }
LAB_007c2025:
          iVar7 = FUN_00b6fc70();
          if (iVar7 == 0) break;
          FUN_00787620();
          FUN_00792dc0();
          local_44 = FUN_00cc8cb0();
          iVar7 = FUN_00b6fc00();
          if (iVar7 == 0) {
            param_1[0xb] = 0x24;
            FUN_00eaecdd();
            FUN_00e394a0(&PTR_PTR_01568d90,param_1);
            return;
          }
LAB_007c20fa:
          iVar7 = FUN_00cce6b0();
          if (iVar7 == 0) {
            iVar7 = 0;
          }
          else {
            if (*(int *)(DAT_01c289c4 + 0x30) == 0) {
              FUN_00eae9a0();
              FUN_00e99900(in_stack_fffffc3c);
              in_stack_fffffc3c = 0x7bf9a8;
              FUN_00eaebef();
            }
            iVar7 = FUN_00e4e370(&PTR_PTR_01544418);
          }
          if (iVar7 == 0) {
            local_21c = 0;
            local_218 = 0;
            FUN_00787600();
            FUN_00775250();
            FUN_00bb49c0();
            FUN_00b5cdb0();
            FUN_007877c0(1,local_21c,local_218,(int)DAT_018d50e0,
                         (int)((ulonglong)DAT_018d50e0 >> 0x20),(int)_DAT_018d50d8,
                         (int)((ulonglong)_DAT_018d50d8 >> 0x20));
            local_34 = FUN_00973a50();
            iVar7 = FUN_0099db90();
            if (iVar7 == 0) {
              param_1[0xb] = 0x26;
              FUN_00eaecdd();
              FUN_00dfcaa0(param_1);
              return;
            }
          }
          else {
            fVar16 = (float10)FUN_00777d40();
            local_224 = (double)fVar16 / _DAT_018d50b0;
            fVar16 = (float10)FUN_00777d60();
            local_22c = (double)fVar16 / _DAT_018d50b0;
            local_254[8] = 0;
            local_254[9] = 0;
            FUN_00787600();
            FUN_00775250();
            FUN_00bb49c0();
            FUN_00b5cdb0();
            FUN_007877c0(1,local_254[8],local_254[9],SUB84(local_22c,0),
                         (int)((ulonglong)local_22c >> 0x20),SUB84(local_224,0),
                         (int)((ulonglong)local_224 >> 0x20));
            local_34 = FUN_00973a50();
            iVar7 = FUN_0099db90();
            if (iVar7 == 0) {
              param_1[0xb] = 0x25;
              FUN_00eaecdd();
              FUN_00dfcaa0(param_1);
              return;
            }
          }
LAB_007c208d:
          FUN_0099dba0();
          FUN_007b6700(0,0x3c6);
          local_34 = FUN_00973a50();
          iVar7 = FUN_0099db90();
          if (iVar7 == 0) {
            param_1[0xb] = 0x27;
            FUN_00eaecdd();
            FUN_00dfcaa0(param_1);
            return;
          }
LAB_007c205a:
          FUN_0099dba0();
        }
LAB_007c2035:
        param_1[0xc] = 5;
        break;
      case 5:
        FUN_007876b0();
        local_214 = 0;
        local_210 = 0;
        FUN_00787600();
        FUN_00775250();
        FUN_00bb49c0();
        FUN_00b5cdb0();
        FUN_007877c0(1,local_214,local_210,(int)DAT_018d50d0,(int)((ulonglong)DAT_018d50d0 >> 0x20),
                     (int)DAT_018d50c8,(int)((ulonglong)DAT_018d50c8 >> 0x20));
        local_34 = FUN_00973a50();
        iVar7 = FUN_0099db90();
        if (iVar7 == 0) {
          param_1[0xb] = 0x29;
          FUN_00eaecdd();
          FUN_00dfcaa0(param_1);
          return;
        }
LAB_007c1fa6:
        FUN_0099dba0();
        FUN_00787620();
        FUN_00792c80(0);
        FUN_007876f0();
        local_34 = FUN_00973a50();
        iVar7 = FUN_0099db90();
        if (iVar7 == 0) {
          param_1[0xb] = 0x2a;
          FUN_00eaecdd();
          FUN_00dfcaa0(param_1);
          return;
        }
LAB_007c1f79:
        FUN_0099dba0();
        param_1[0xc] = 6;
        break;
      case 6:
switchD_007c2b41_caseD_6:
        param_1[0xd] = 0;
LAB_007bf710:
        while( true ) {
          FUN_007b66b0(&PTR_DAT_01bf8bac);
          local_30 = FUN_00b6e1a0();
          iVar7 = FUN_00b6fc00();
          if (iVar7 == 0) {
            param_1[0xb] = 0x2f;
            FUN_00eaecdd();
            FUN_00e17910(param_1);
            return;
          }
LAB_007c1d4a:
          iVar7 = FUN_00b6fc70();
          if (iVar7 != 0) goto LAB_007c1d5a;
          FUN_007b6930(param_1[5],1);
          local_30 = FUN_00b6e1a0();
          iVar7 = FUN_00b6fc00();
          if (iVar7 == 0) {
            param_1[0xb] = 0x2b;
            FUN_00eaecdd();
            FUN_00e17910(param_1);
            return;
          }
LAB_007c1e9a:
          iVar7 = FUN_00b6fc70();
          if (iVar7 != 0) break;
          FUN_007876b0();
          local_20c = 0;
          local_208 = 0;
          FUN_00787600();
          FUN_00775250();
          FUN_00bb49c0();
          FUN_00b5cdb0();
          FUN_007877c0(1,local_20c,local_208,(int)DAT_018d50d0,
                       (int)((ulonglong)DAT_018d50d0 >> 0x20),(int)DAT_018d50c8,
                       (int)((ulonglong)DAT_018d50c8 >> 0x20));
          local_34 = FUN_00973a50();
          iVar7 = FUN_0099db90();
          if (iVar7 == 0) {
            param_1[0xb] = 0x2c;
            FUN_00eaecdd();
            FUN_00dfcaa0(param_1);
            return;
          }
LAB_007c1e1b:
          FUN_0099dba0();
          FUN_00787620();
          FUN_00792c80(0);
          FUN_007876f0();
          local_34 = FUN_00973a50();
          iVar7 = FUN_0099db90();
          if (iVar7 == 0) {
            param_1[0xb] = 0x2d;
            FUN_00eaecdd();
            FUN_00dfcaa0(param_1);
            return;
          }
LAB_007c1df5:
          FUN_0099dba0();
        }
        FUN_007b6980(&PTR_DAT_01bf8bac);
        local_30 = FUN_00b6e1a0();
        iVar7 = FUN_00b6fc00();
        if (iVar7 == 0) {
          param_1[0xb] = 0x2e;
          FUN_00eaecdd();
          FUN_00e17910(param_1);
          return;
        }
LAB_007c1dbe:
        iVar7 = FUN_00b6fc70();
        if (iVar7 == 0) goto code_r0x007c1dce;
        goto switchD_007c2b41_caseD_6;
      case 7:
        FUN_007876b0();
        while( true ) {
          FUN_007b6980(&PTR_DAT_01bf8bac);
          local_30 = FUN_00b6e1a0();
          iVar7 = FUN_00b6fc00();
          if (iVar7 == 0) {
            param_1[0xb] = 0x32;
            FUN_00eaecdd();
            FUN_00e17910(param_1);
            return;
          }
LAB_007c1cbe:
          iVar7 = FUN_00b6fc70();
          if (iVar7 == 0) break;
          FUN_007b6930(param_1[5],0);
          local_30 = FUN_00b6e1a0();
          iVar7 = FUN_00b6fc00();
          if (iVar7 == 0) {
            param_1[0xb] = 0x31;
            FUN_00eaecdd();
            FUN_00e17910(param_1);
            return;
          }
LAB_007c1cf3:
          FUN_00b6fc70();
        }
        goto LAB_007c1cce;
      case 8:
switchD_007c2b41_caseD_8:
        param_1[0xe] = 0;
LAB_007bf5c1:
        FUN_007b66b0(&PTR_DAT_01bf8bc8);
        local_30 = FUN_00b6e1a0();
        iVar7 = FUN_00b6fc00();
        if (iVar7 == 0) {
          param_1[0xb] = 0x35;
          FUN_00eaecdd();
          FUN_00e17910(param_1);
          return;
        }
LAB_007c1b9f:
        iVar7 = FUN_00b6fc70();
        if (iVar7 == 0) goto LAB_007bf610;
        goto LAB_007c1baf;
      case 9:
        FUN_007876b0();
        FUN_00eae9a0();
        FUN_00bb8d90();
        FUN_00eaec5e();
        *(undefined1 *)(param_1 + 0x13) = 0;
        while ((char)param_1[0x13] == '\0') {
          FUN_00787620();
          FUN_00792dc0();
          local_44 = FUN_00cc8cb0();
          iVar7 = FUN_00b6fc00();
          if (iVar7 == 0) {
            param_1[0xb] = 0x37;
            FUN_00eaecdd();
            FUN_00e394a0(&PTR_PTR_01568d90,param_1);
            return;
          }
LAB_007c1ad0:
          iVar7 = FUN_00cce6b0();
          if (iVar7 == 0) {
            iVar7 = 0;
LAB_007befc5:
            if ((iVar7 == 0) || (iVar7 = FUN_00a7ff10(), iVar7 == 0)) {
              iVar7 = FUN_00a7ff10();
              if (iVar7 < 1) {
                FUN_007876f0();
                local_34 = FUN_00973a50();
                iVar7 = FUN_0099db90();
                if (iVar7 == 0) {
                  param_1[0xb] = 0x3b;
                  FUN_00eaecdd();
                  FUN_00dfcaa0(param_1);
                  return;
                }
              }
              else {
                local_1ac[6] = 0;
                local_1ac[7] = 0;
                local_1ac[8] = 0;
                local_1ac[9] = 0;
                local_1ac[10] = 0;
                local_1ac[0xb] = 0;
                FUN_0099d430(1);
                piVar10 = local_1ac + 6;
                piVar13 = local_94;
                for (iVar7 = 6; iVar7 != 0; iVar7 = iVar7 + -1) {
                  *piVar13 = *piVar10;
                  piVar10 = piVar10 + 1;
                  piVar13 = piVar13 + 1;
                }
                FUN_0099d5d0();
                FUN_00a7ff10();
                FUN_00de77e0();
                FUN_0099d5d0();
                FUN_0099d560();
                FUN_007876b0();
                FUN_00a80200();
                FUN_007876f0();
                local_34 = FUN_00973a50();
                iVar7 = FUN_0099db90();
                if (iVar7 == 0) {
                  param_1[0xb] = 0x3a;
                  FUN_00eaecdd();
                  FUN_00dfcaa0(param_1);
                  return;
                }
              }
              goto LAB_007c1a2b;
            }
            FUN_00e4e350();
            FUN_00eaeca8();
            if (param_1[7] != 0) {
              local_1ac[0] = 0;
              local_1ac[1] = 0;
              local_1ac[2] = 0;
              local_1ac[3] = 0;
              local_1ac[4] = 0;
              local_1ac[5] = 0;
              FUN_0099d430(1);
              piVar10 = local_1ac;
              piVar13 = local_ac;
              for (iVar7 = 6; iVar7 != 0; iVar7 = iVar7 + -1) {
                *piVar13 = *piVar10;
                piVar10 = piVar10 + 1;
                piVar13 = piVar13 + 1;
              }
              FUN_0099d5d0();
              FUN_00777d20();
              FUN_00de77e0();
              FUN_0099d5d0();
              FUN_0099d560();
              FUN_007876b0();
              fVar16 = (float10)FUN_00777d40();
              local_1b4 = (double)fVar16 / _DAT_018d50b0;
              fVar16 = (float10)FUN_00777d60();
              local_1bc = (double)fVar16 / _DAT_018d50b0;
              local_1f4[0xc] = 0;
              local_1f4[0xd] = 0;
              FUN_00787600();
              FUN_00775250();
              FUN_00bb49c0();
              FUN_00b5cdb0();
              FUN_007877c0(1,local_1f4[0xc],local_1f4[0xd],SUB84(local_1bc,0),
                           (int)((ulonglong)local_1bc >> 0x20),SUB84(local_1b4,0),
                           (int)((ulonglong)local_1b4 >> 0x20));
              local_34 = FUN_00973a50();
              iVar7 = FUN_0099db90();
              if (iVar7 == 0) {
                param_1[0xb] = 0x3c;
                FUN_00eaecdd();
                FUN_00dfcaa0(param_1);
                return;
              }
LAB_007c1970:
              FUN_0099dba0();
              FUN_00787620();
              FUN_00777d20();
              FUN_00792c80(0);
              *(undefined2 *)((int)param_1 + 0x4e) = 0;
              param_1[0x12] = 0;
              while (param_1[0x12] < 8) {
                FUN_007876f0();
                local_34 = FUN_00973a50();
                iVar7 = FUN_0099db90();
                if (iVar7 == 0) {
                  param_1[0xb] = 0x3d;
                  FUN_00eaecdd();
                  FUN_00dfcaa0(param_1);
                  return;
                }
LAB_007c18f5:
                FUN_0099dba0();
                FUN_00787620();
                FUN_00792dc0();
                local_44 = FUN_00cc8cb0();
                iVar7 = FUN_00b6fc00();
                if (iVar7 == 0) {
                  param_1[0xb] = 0x3e;
                  FUN_00eaecdd();
                  FUN_00e394a0(&PTR_PTR_01568d90,param_1);
                  return;
                }
LAB_007c1850:
                iVar7 = FUN_00cce6b0();
                if (iVar7 != 0) {
                  if (*(int *)(DAT_01c289c4 + 0x3c) == 0) {
                    FUN_00eae9a0();
                    FUN_00e99933(in_stack_fffffc3c);
                    in_stack_fffffc3c = 0x7c18a6;
                    FUN_00eaebef();
                  }
                  iVar7 = FUN_00e4d760(&PTR_DAT_01544384);
                  if (iVar7 != 0) {
                    *(undefined1 *)((int)param_1 + 0x4e) = 1;
                    break;
                  }
                  if (*(int *)(DAT_01c289c4 + 0x40) == 0) {
                    FUN_00eae9a0();
                    FUN_00e99944(in_stack_fffffc3c);
                    in_stack_fffffc3c = 0x7bf1bc;
                    FUN_00eaebef();
                  }
                  iVar7 = FUN_00e4d760(&PTR_DAT_01544384);
                  if (iVar7 != 0) {
                    *(undefined1 *)((int)param_1 + 0x4f) = 1;
                    break;
                  }
                }
                param_1[0x12] = param_1[0x12] + 1;
              }
              if (*(char *)((int)param_1 + 0x4f) != '\0') {
                FUN_007876b0();
                goto LAB_007c1b49;
              }
              if (*(char *)((int)param_1 + 0x4e) == '\0') {
                local_1f4[6] = 0;
                local_1f4[7] = 0;
                local_1f4[8] = 0;
                local_1f4[9] = 0;
                local_1f4[10] = 0;
                local_1f4[0xb] = 0;
                FUN_0099d430(1);
                puVar11 = local_1f4 + 6;
                puVar14 = local_dc;
                for (iVar7 = 6; iVar7 != 0; iVar7 = iVar7 + -1) {
                  *puVar14 = *puVar11;
                  puVar11 = puVar11 + 1;
                  puVar14 = puVar14 + 1;
                }
                FUN_0099d5d0();
                FUN_00777d20();
                FUN_00de77e0();
                FUN_0099d5d0();
                FUN_0099d560();
                FUN_007876b0();
              }
              else {
                FUN_00777d20();
                FUN_00bb9030();
                local_1f4[0] = 0;
                local_1f4[1] = 0;
                local_1f4[2] = 0;
                local_1f4[3] = 0;
                local_1f4[4] = 0;
                local_1f4[5] = 0;
                FUN_0099d430(1);
                puVar11 = local_1f4;
                puVar14 = local_c4;
                for (iVar7 = 6; iVar7 != 0; iVar7 = iVar7 + -1) {
                  *puVar14 = *puVar11;
                  puVar11 = puVar11 + 1;
                  puVar14 = puVar14 + 1;
                }
                FUN_0099d5d0();
                FUN_00777d20();
                FUN_00de77e0();
                FUN_0099d5d0();
                FUN_0099d560();
                FUN_007876b0();
                local_1fc = 0;
                local_1f8 = 0;
                FUN_00787600();
                FUN_00775250();
                FUN_00bb49c0();
                FUN_00b5cdb0();
                FUN_007877c0(1,local_1fc,local_1f8,(int)DAT_018d50d0,
                             (int)((ulonglong)DAT_018d50d0 >> 0x20),(int)DAT_018d50c8,
                             (int)((ulonglong)DAT_018d50c8 >> 0x20));
                local_34 = FUN_00973a50();
                iVar7 = FUN_0099db90();
                if (iVar7 == 0) {
                  param_1[0xb] = 0x3f;
                  FUN_00eaecdd();
                  FUN_00dfcaa0(param_1);
                  return;
                }
LAB_007c17d1:
                FUN_0099dba0();
                FUN_00787620();
                FUN_00792c80(0);
                FUN_007876f0();
                local_34 = FUN_00973a50();
                iVar7 = FUN_0099db90();
                if (iVar7 == 0) {
                  param_1[0xb] = 0x40;
                  FUN_00eaecdd();
                  FUN_00dfcaa0(param_1);
                  return;
                }
LAB_007c179f:
                FUN_0099dba0();
              }
            }
            param_1[7] = 0;
          }
          else {
            if (*(int *)(DAT_01c289c4 + 0x34) == 0) {
              FUN_00eae9a0();
              FUN_00e99911(in_stack_fffffc3c);
              in_stack_fffffc3c = 0x7c1b26;
              FUN_00eaebef();
            }
            iVar7 = FUN_00e4d760(&PTR_DAT_01544384);
            if (iVar7 != 0) {
              FUN_007876b0();
LAB_007c1b49:
              *(undefined1 *)(param_1 + 0x13) = 1;
              break;
            }
            if (*(int *)(DAT_01c289c4 + 0x38) == 0) {
              FUN_00eae9a0();
              FUN_00e99922(in_stack_fffffc3c);
              in_stack_fffffc3c = 0x7bef44;
              FUN_00eaebef();
            }
            iVar7 = FUN_00e4d760(&PTR_DAT_01544384);
            if (iVar7 == 0) {
              in_stack_fffffc3c = param_1[3];
              if (*(int *)(in_stack_fffffc3c + 0xc) == 0) {
                FUN_00eae9a0();
                FUN_00e99d1e(in_stack_fffffc3c);
                in_stack_fffffc3c = 0x7befa8;
                FUN_00eaebef();
              }
              FUN_00e4ee90(&PTR_DAT_01544498);
              iVar7 = FUN_00e4ee50();
              goto LAB_007befc5;
            }
            FUN_007876b0();
            local_204 = 0;
            local_200 = 0;
            FUN_00787600();
            FUN_00775250();
            FUN_00bb49c0();
            FUN_00b5cdb0();
            FUN_007877c0(1,local_204,local_200,(int)DAT_018d50d0,
                         (int)((ulonglong)DAT_018d50d0 >> 0x20),(int)DAT_018d50c8,
                         (int)((ulonglong)DAT_018d50c8 >> 0x20));
            local_34 = FUN_00973a50();
            iVar7 = FUN_0099db90();
            if (iVar7 == 0) {
              param_1[0xb] = 0x38;
              FUN_00eaecdd();
              FUN_00dfcaa0(param_1);
              return;
            }
LAB_007c1a51:
            FUN_0099dba0();
            FUN_00787620();
            FUN_00792c80(0);
            FUN_007876f0();
            local_34 = FUN_00973a50();
            iVar7 = FUN_0099db90();
            if (iVar7 == 0) {
              param_1[0xb] = 0x39;
              FUN_00eaecdd();
              FUN_00dfcaa0(param_1);
              return;
            }
LAB_007c1a2b:
            FUN_0099dba0();
          }
        }
        param_1[0xc] = 10;
        break;
      case 10:
        FUN_007876b0();
        while( true ) {
          FUN_007b6980(&PTR_DAT_01bf8bc8);
          local_30 = FUN_00b6e1a0();
          iVar7 = FUN_00b6fc00();
          if (iVar7 == 0) {
            param_1[0xb] = 0x43;
            FUN_00eaecdd();
            FUN_00e17910(param_1);
            return;
          }
LAB_007c1671:
          iVar7 = FUN_00b6fc70();
          if (iVar7 == 0) break;
          FUN_007b6930(param_1[5],0);
          local_30 = FUN_00b6e1a0();
          iVar7 = FUN_00b6fc00();
          if (iVar7 == 0) {
            param_1[0xb] = 0x41;
            FUN_00eaecdd();
            FUN_00e17910(param_1);
            return;
          }
LAB_007c16cc:
          iVar7 = FUN_00b6fc70();
          if (iVar7 == 0) {
            local_1ac[0xc] = 0;
            local_1ac[0xd] = 0;
            FUN_00787600();
            FUN_00775250();
            FUN_00bb49c0();
            FUN_00b5cdb0();
            FUN_007877c0(1,local_1ac[0xc],local_1ac[0xd],(int)DAT_018d5108,
                         (int)((ulonglong)DAT_018d5108 >> 0x20),(int)DAT_018d5100,
                         (int)((ulonglong)DAT_018d5100 >> 0x20));
            local_34 = FUN_00973a50();
            iVar7 = FUN_0099db90();
            if (iVar7 == 0) {
              param_1[0xb] = 0x42;
              FUN_00eaecdd();
              FUN_00dfcaa0(param_1);
              return;
            }
LAB_007c16a6:
            FUN_0099dba0();
          }
        }
        param_1[0xc] = 0xb;
        break;
      case 0xb:
switchD_007c2b41_caseD_b:
        param_1[0xf] = 0;
LAB_007bed16:
        FUN_007b66b0(&PTR_DAT_01bf9d40);
        local_30 = FUN_00b6e1a0();
        iVar7 = FUN_00b6fc00();
        if (iVar7 == 0) {
          param_1[0xb] = 0x46;
          FUN_00eaecdd();
          FUN_00e17910(param_1);
          return;
        }
LAB_007c1552:
        iVar7 = FUN_00b6fc70();
        if (iVar7 == 0) goto LAB_007bed65;
        goto LAB_007c1562;
      case 0xc:
        FUN_007b69d0(param_1[5]);
        local_30 = FUN_00b6e1a0();
        iVar7 = FUN_00b6fc00();
        if (iVar7 == 0) {
          param_1[0xb] = 0x48;
          FUN_00eaecdd();
          FUN_00e17910(param_1);
          return;
        }
LAB_007c14b6:
        iVar7 = FUN_00b6fc70();
        if (iVar7 == 0) {
          FUN_007876b0();
          FUN_007876b0();
          FUN_00ccd7a0();
          FUN_00eaee5e();
          FUN_00eaee5e();
          param_1[0x18] = local_1ac[0xe];
          param_1[0x19] = iStack_170;
switchD_007bdcbc_caseD_49:
          if (local_1c[2] != 0x49) goto LAB_007beb94;
          local_34 = param_1[0x16];
          param_1[0x16] = 0;
          local_1c[2] = -1;
          param_1[0xb] = -1;
          while( true ) {
            FUN_0099dba0();
LAB_007beb94:
            iVar7 = FUN_00cd0850();
            if (iVar7 == 0) break;
            FUN_00cd08b0();
            FUN_00787610();
            FUN_00775250();
            FUN_00bb49c0();
            FUN_0077aa80(0);
            FUN_007876f0();
            local_34 = FUN_00973a50();
            iVar7 = FUN_0099db90();
            if (iVar7 == 0) {
              local_1c[2] = 0x49;
              param_1[0xb] = 0x49;
              FUN_00eaecdd();
              FUN_00dfcaa0(param_1);
              FUN_007c3da4();
              return;
            }
          }
          if ((int)local_1c[2] < 0) {
            FUN_00a806b0();
          }
          param_1[0x18] = 0;
          param_1[0x19] = 0;
          param_1[0x1a] = 0;
          param_1[0x1b] = 0;
          if (*(int *)(*(int *)(param_1[3] + 8) + 0x14) == 0) {
            FUN_00eae9a0();
            FUN_00e99cda(in_stack_fffffc3c);
            in_stack_fffffc3c = 0x7becbc;
            FUN_00eaebef();
          }
          FUN_00e44450(&PTR_DAT_015437ec);
          FUN_00975100();
          local_34 = FUN_00973a50();
          iVar7 = FUN_0099db90();
          if (iVar7 == 0) {
            param_1[0xb] = 0x4a;
            FUN_00eaecdd();
            FUN_00dfcaa0(param_1);
            return;
          }
LAB_007c1447:
          FUN_0099dba0();
        }
        FUN_007b6660(*(undefined4 *)(*(int *)(param_1[3] + 8) + 4));
        local_34 = FUN_00973a50();
        iVar7 = FUN_0099db90();
        if (iVar7 == 0) {
          param_1[0xb] = 0x4b;
          FUN_00eaecdd();
          FUN_00dfcaa0(param_1);
          return;
        }
LAB_007c141a:
        FUN_0099dba0();
        param_1[0xc] = 0xd;
        break;
      case 0xd:
        FUN_007876b0();
        while( true ) {
          FUN_007b6980(&PTR_DAT_01bf9d40);
          local_30 = FUN_00b6e1a0();
          iVar7 = FUN_00b6fc00();
          if (iVar7 == 0) {
            param_1[0xb] = 0x4d;
            FUN_00eaecdd();
            FUN_00e17910(param_1);
            return;
          }
LAB_007c13bf:
          iVar7 = FUN_00b6fc70();
          if (iVar7 == 0) break;
          FUN_007b6930(param_1[5],0);
          local_30 = FUN_00b6e1a0();
          iVar7 = FUN_00b6fc00();
          if (iVar7 == 0) {
            param_1[0xb] = 0x4c;
            FUN_00eaecdd();
            FUN_00e17910(param_1);
            return;
          }
LAB_007c13f4:
          FUN_00b6fc70();
        }
        goto LAB_007c13cf;
      case 0xe:
        FUN_007876b0();
        local_164 = 0;
        local_160 = 0;
        FUN_00787600();
        FUN_00775250();
        FUN_00bb49c0();
        FUN_00b5cdb0();
        FUN_007877c0(1,local_164,local_160,(int)DAT_018d50c0,(int)((ulonglong)DAT_018d50c0 >> 0x20),
                     (int)DAT_018d50b8,(int)((ulonglong)DAT_018d50b8 >> 0x20));
        local_34 = FUN_00973a50();
        iVar7 = FUN_0099db90();
        if (iVar7 == 0) {
          param_1[0xb] = 0x4e;
          FUN_00eaecdd();
          FUN_00dfcaa0(param_1);
          return;
        }
LAB_007c1340:
        FUN_0099dba0();
        FUN_00787620();
        FUN_00792c80(0);
        FUN_007876f0();
        local_34 = FUN_00973a50();
        iVar7 = FUN_0099db90();
        if (iVar7 == 0) {
          param_1[0xb] = 0x4f;
          FUN_00eaecdd();
          FUN_00dfcaa0(param_1);
          return;
        }
LAB_007c1313:
        FUN_0099dba0();
        param_1[0xc] = 0xf;
        break;
      case 0xf:
switchD_007c2b41_caseD_f:
        param_1[0x10] = 0;
LAB_007be8c9:
        while( true ) {
          FUN_007b66b0(&PTR_DAT_01bf985c);
          local_30 = FUN_00b6e1a0();
          iVar7 = FUN_00b6fc00();
          if (iVar7 == 0) {
            param_1[0xb] = 0x54;
            FUN_00eaecdd();
            FUN_00e17910(param_1);
            return;
          }
LAB_007c10e4:
          iVar7 = FUN_00b6fc70();
          if (iVar7 != 0) goto LAB_007c10f4;
          FUN_007b6930(param_1[5],1);
          local_30 = FUN_00b6e1a0();
          iVar7 = FUN_00b6fc00();
          if (iVar7 == 0) {
            param_1[0xb] = 0x50;
            FUN_00eaecdd();
            FUN_00e17910(param_1);
            return;
          }
LAB_007c1234:
          iVar7 = FUN_00b6fc70();
          if (iVar7 != 0) break;
          FUN_007876b0();
          local_15c = 0;
          local_158 = 0;
          FUN_00787600();
          FUN_00775250();
          FUN_00bb49c0();
          FUN_00b5cdb0();
          FUN_007877c0(1,local_15c,local_158,(int)DAT_018d50c0,
                       (int)((ulonglong)DAT_018d50c0 >> 0x20),(int)DAT_018d50b8,
                       (int)((ulonglong)DAT_018d50b8 >> 0x20));
          local_34 = FUN_00973a50();
          iVar7 = FUN_0099db90();
          if (iVar7 == 0) {
            param_1[0xb] = 0x51;
            FUN_00eaecdd();
            FUN_00dfcaa0(param_1);
            return;
          }
LAB_007c11b5:
          FUN_0099dba0();
          FUN_00787620();
          FUN_00792c80(0);
          FUN_007876f0();
          local_34 = FUN_00973a50();
          iVar7 = FUN_0099db90();
          if (iVar7 == 0) {
            param_1[0xb] = 0x52;
            FUN_00eaecdd();
            FUN_00dfcaa0(param_1);
            return;
          }
LAB_007c118f:
          FUN_0099dba0();
        }
        FUN_007b6980(&PTR_DAT_01bf985c);
        local_30 = FUN_00b6e1a0();
        iVar7 = FUN_00b6fc00();
        if (iVar7 == 0) {
          param_1[0xb] = 0x53;
          FUN_00eaecdd();
          FUN_00e17910(param_1);
          return;
        }
LAB_007c1158:
        iVar7 = FUN_00b6fc70();
        if (iVar7 == 0) goto code_r0x007c1168;
        goto switchD_007c2b41_caseD_f;
      case 0x10:
        while( true ) {
          FUN_007b69d0(param_1[5]);
          local_30 = FUN_00b6e1a0();
          iVar7 = FUN_00b6fc00();
          if (iVar7 == 0) {
            param_1[0xb] = 0x5e;
            FUN_00eaecdd();
            FUN_00e17910(param_1);
            return;
          }
LAB_007c0d8b:
          iVar7 = FUN_00b6fc70();
          if (iVar7 != 0) break;
          FUN_00eae9a0();
          FUN_007ba080();
          FUN_00eaed7c();
          FUN_00787620();
          FUN_00792dc0();
          local_44 = FUN_00cc8cb0();
          iVar7 = FUN_00b6fc00();
          if (iVar7 == 0) {
            param_1[0xb] = 0x56;
            FUN_00eaecdd();
            FUN_00e394a0(&PTR_PTR_01568d90,param_1);
            return;
          }
LAB_007c1024:
          FUN_00cce6b0();
          FUN_00eaeca8();
          FUN_00787620();
          FUN_00792d90();
          local_7c = FUN_00cc8cb0();
          iVar7 = FUN_00b6fc00();
          if (iVar7 == 0) {
            param_1[0xb] = 0x57;
            FUN_00eaecdd();
            FUN_00e394a0(&PTR_PTR_01554004,param_1);
            return;
          }
LAB_007c0fbb:
          FUN_00cce6b0();
          FUN_00eaebca();
          if ((param_1[8] != 0) && (*(int *)(param_1[4] + 4) != 0)) {
            iVar7 = FUN_00a9f880();
            if (iVar7 != 0) {
              if (*(int *)(*(int *)(param_1[3] + 8) + 0x18) == 0) {
                FUN_00eae9a0();
                FUN_00e99ceb(in_stack_fffffc3c);
                in_stack_fffffc3c = 0x7be462;
                FUN_00eaebef();
              }
              FUN_00e4e370(&PTR_PTR_01544418);
            }
            FUN_00eaeca8();
            *(undefined1 *)((int)param_1 + 0x4f) = 0;
            FUN_00ccd7a0();
            FUN_00eaee5e();
            FUN_00eaee5e();
            param_1[0x18] = local_154;
            param_1[0x19] = iStack_150;
switchD_007bdcbc_caseD_58:
            if (local_1c[2] != 0x58) goto LAB_007be4e7;
            local_30 = param_1[0x15];
            param_1[0x15] = 0;
            local_1c[2] = -1;
            param_1[0xb] = -1;
            while (iVar7 = FUN_00b6fc70(), iVar7 == 0) {
LAB_007be4e7:
              iVar7 = FUN_00cd0850();
              if (iVar7 == 0) goto LAB_007be599;
              FUN_00cd08b0();
              FUN_00787610();
              FUN_00775250();
              FUN_00bb49c0();
              FUN_0077ac80();
              local_30 = FUN_00b6e1a0();
              iVar7 = FUN_00b6fc00();
              if (iVar7 == 0) {
                local_1c[2] = 0x58;
                param_1[0xb] = 0x58;
                FUN_00eaecdd();
                FUN_00e17910(param_1);
                FUN_007c3dc1();
                return;
              }
            }
            *(undefined1 *)((int)param_1 + 0x4f) = 1;
LAB_007be599:
            if ((int)local_1c[2] < 0) {
              FUN_00a806b0();
            }
            param_1[0x18] = 0;
            param_1[0x19] = 0;
            param_1[0x1a] = 0;
            param_1[0x1b] = 0;
            if (param_1[7] == 0) {
              if (*(int *)(DAT_01c289c4 + 0x4c) == 0) {
                FUN_00eae9a0();
                FUN_00e99977(in_stack_fffffc3c);
                in_stack_fffffc3c = 0x7be614;
                FUN_00eaebca();
              }
              FUN_00eae9a0();
              FUN_00e4ee90(&PTR_DAT_01544498);
              FUN_00e99d62(in_stack_fffffc3c);
              FUN_00e682d0(&PTR_DAT_015445b0);
              FUN_00e4e350();
              FUN_00eaeca8();
              if (param_1[9] == 0) {
                FUN_007876f0();
                local_34 = FUN_00973a50();
                in_stack_fffffc3c = 0x7be6a6;
                iVar7 = FUN_0099db90();
                if (iVar7 == 0) {
                  param_1[0xb] = 0x5d;
                  FUN_00eaecdd();
                  FUN_00dfcaa0(param_1);
                  return;
                }
              }
              else {
                iVar7 = *(int *)(param_1[3] + 8);
                local_274 = 0;
                local_270 = 0;
                FUN_00777d20();
                FUN_00b5cdb0();
                *(undefined4 *)(iVar7 + 0x24) = local_274;
                *(undefined4 *)(iVar7 + 0x28) = local_270;
                fVar16 = (float10)FUN_00777d40();
                local_27c = (double)fVar16 / _DAT_018d50b0;
                fVar16 = (float10)FUN_00777d60();
                local_284 = (double)fVar16 / _DAT_018d50b0;
                local_28c = 0;
                local_288 = 0;
                FUN_00787600();
                FUN_00775250();
                FUN_00bb49c0();
                FUN_00b5cdb0();
                FUN_007877c0(1,local_28c,local_288,SUB84(local_284,0),
                             (int)((ulonglong)local_284 >> 0x20),SUB84(local_27c,0),
                             (int)((ulonglong)local_27c >> 0x20));
                local_34 = FUN_00973a50();
                in_stack_fffffc3c = 0x7be7dd;
                iVar7 = FUN_0099db90();
                if (iVar7 == 0) {
                  param_1[0xb] = 0x5b;
                  FUN_00eaecdd();
                  FUN_00dfcaa0(param_1);
                  return;
                }
LAB_007c0ea4:
                FUN_0099dba0();
                FUN_00787620();
                FUN_00777d20();
                FUN_00792c80(0);
                FUN_007876f0();
                local_34 = FUN_00973a50();
                iVar7 = FUN_0099db90();
                if (iVar7 == 0) {
                  param_1[0xb] = 0x5c;
                  FUN_00eaecdd();
                  FUN_00dfcaa0(param_1);
                  return;
                }
              }
LAB_007c0e79:
              FUN_0099dba0();
              param_1[9] = 0;
            }
            else {
              if (*(char *)((int)param_1 + 0x4f) == '\0') {
                FUN_00787620();
                FUN_00777d20();
                FUN_00792c80(0);
                FUN_007876f0();
                local_34 = FUN_00973a50();
                iVar7 = FUN_0099db90();
                if (iVar7 == 0) {
                  param_1[0xb] = 0x5a;
                  FUN_00eaecdd();
                  FUN_00dfcaa0(param_1);
                  return;
                }
              }
              else {
                FUN_007876f0();
                local_34 = FUN_00973a50();
                iVar7 = FUN_0099db90();
                if (iVar7 == 0) {
                  param_1[0xb] = 0x59;
                  FUN_00eaecdd();
                  FUN_00dfcaa0(param_1);
                  return;
                }
              }
LAB_007c0f39:
              FUN_0099dba0();
            }
            param_1[7] = 0;
          }
          param_1[4] = 0;
          param_1[8] = 0;
        }
        FUN_007876b0();
        if (*(int *)(*(int *)(param_1[3] + 8) + 0x1c) == 0) {
          FUN_00eae9a0();
          FUN_00e99cfc(in_stack_fffffc3c);
          in_stack_fffffc3c = 0x7c0dfe;
          FUN_00eaebef();
        }
        FUN_00e44450(&PTR_DAT_015437ec);
        FUN_00975100();
        local_34 = FUN_00973a50();
        iVar7 = FUN_0099db90();
        if (iVar7 == 0) {
          param_1[0xb] = 0x5f;
          FUN_00eaecdd();
          FUN_00dfcaa0(param_1);
          return;
        }
LAB_007c0d23:
        FUN_0099dba0();
        FUN_007876f0();
        local_34 = FUN_00973a50();
        iVar7 = FUN_0099db90();
        if (iVar7 == 0) {
          param_1[0xb] = 0x60;
          FUN_00eaecdd();
          FUN_00dfcaa0(param_1);
          return;
        }
LAB_007c0cf6:
        FUN_0099dba0();
        param_1[0xc] = 0x11;
        break;
      case 0x11:
        FUN_007876b0();
        while( true ) {
          FUN_007b6980(&PTR_DAT_01bf985c);
          local_30 = FUN_00b6e1a0();
          iVar7 = FUN_00b6fc00();
          if (iVar7 == 0) {
            param_1[0xb] = 0x62;
            FUN_00eaecdd();
            FUN_00e17910(param_1);
            return;
          }
LAB_007c0c9b:
          iVar7 = FUN_00b6fc70();
          if (iVar7 == 0) break;
          FUN_007b6930(param_1[5],0);
          local_30 = FUN_00b6e1a0();
          iVar7 = FUN_00b6fc00();
          if (iVar7 == 0) {
            param_1[0xb] = 0x61;
            FUN_00eaecdd();
            FUN_00e17910(param_1);
            return;
          }
LAB_007c0cd0:
          FUN_00b6fc70();
        }
        goto LAB_007c0cab;
      case 0x12:
        FUN_007876b0();
        local_144 = 0;
        local_140 = 0;
        FUN_00787600();
        FUN_00775250();
        FUN_00bb49c0();
        FUN_00b5cdb0();
        FUN_007877c0(1,local_144,local_140,(int)DAT_018d50a8,(int)((ulonglong)DAT_018d50a8 >> 0x20),
                     (int)DAT_018d50a0,(int)((ulonglong)DAT_018d50a0 >> 0x20));
        local_34 = FUN_00973a50();
        iVar7 = FUN_0099db90();
        if (iVar7 == 0) {
          param_1[0xb] = 99;
          FUN_00eaecdd();
          FUN_00dfcaa0(param_1);
          return;
        }
LAB_007c0c1c:
        FUN_0099dba0();
        FUN_00787620();
        FUN_00792c80(0);
        FUN_007876f0();
        local_34 = FUN_00973a50();
        iVar7 = FUN_0099db90();
        if (iVar7 == 0) {
          param_1[0xb] = 100;
          FUN_00eaecdd();
          FUN_00dfcaa0(param_1);
          return;
        }
LAB_007c0bef:
        FUN_0099dba0();
        param_1[0xc] = 0x13;
        break;
      case 0x13:
switchD_007c2b41_caseD_13:
        param_1[0x11] = 0;
LAB_007c3297:
        while( true ) {
          FUN_007b66b0(&PTR_DAT_01bf86a4);
          local_30 = FUN_00b6e1a0();
          iVar7 = FUN_00b6fc00();
          if (iVar7 == 0) {
            param_1[0xb] = 0x69;
            FUN_00eaecdd();
            FUN_00e17910(param_1);
            return;
          }
LAB_007c09c0:
          iVar7 = FUN_00b6fc70();
          if (iVar7 != 0) goto LAB_007c09d0;
          FUN_007b6930(param_1[5],1);
          local_30 = FUN_00b6e1a0();
          iVar7 = FUN_00b6fc00();
          if (iVar7 == 0) {
            param_1[0xb] = 0x65;
            FUN_00eaecdd();
            FUN_00e17910(param_1);
            return;
          }
LAB_007c0b10:
          iVar7 = FUN_00b6fc70();
          if (iVar7 != 0) break;
          FUN_007876b0();
          local_13c = 0;
          local_138 = 0;
          FUN_00787600();
          FUN_00775250();
          FUN_00bb49c0();
          FUN_00b5cdb0();
          FUN_007877c0(1,local_13c,local_138,(int)DAT_018d50a8,
                       (int)((ulonglong)DAT_018d50a8 >> 0x20),(int)DAT_018d50a0,
                       (int)((ulonglong)DAT_018d50a0 >> 0x20));
          local_34 = FUN_00973a50();
          iVar7 = FUN_0099db90();
          if (iVar7 == 0) {
            param_1[0xb] = 0x66;
            FUN_00eaecdd();
            FUN_00dfcaa0(param_1);
            return;
          }
LAB_007c0a91:
          FUN_0099dba0();
          FUN_00787620();
          FUN_00792c80(0);
          FUN_007876f0();
          local_34 = FUN_00973a50();
          iVar7 = FUN_0099db90();
          if (iVar7 == 0) {
            param_1[0xb] = 0x67;
            FUN_00eaecdd();
            FUN_00dfcaa0(param_1);
            return;
          }
LAB_007c0a6b:
          FUN_0099dba0();
        }
        FUN_007b6980(&PTR_DAT_01bf86a4);
        local_30 = FUN_00b6e1a0();
        iVar7 = FUN_00b6fc00();
        if (iVar7 == 0) {
          param_1[0xb] = 0x68;
          FUN_00eaecdd();
          FUN_00e17910(param_1);
          return;
        }
LAB_007c0a34:
        iVar7 = FUN_00b6fc70();
        if (iVar7 == 0) goto code_r0x007c0a44;
        goto switchD_007c2b41_caseD_13;
      case 0x14:
        FUN_007876b0();
        while( true ) {
          FUN_007b6980(&PTR_DAT_01bf86a4);
          local_30 = FUN_00b6e1a0();
          iVar7 = FUN_00b6fc00();
          if (iVar7 == 0) {
            param_1[0xb] = 0x6c;
            FUN_00eaecdd();
            FUN_00e17910(param_1);
            return;
          }
LAB_007be209:
          iVar7 = FUN_00b6fc70();
          if (iVar7 == 0) break;
          FUN_007b6930(param_1[5],0);
          local_30 = FUN_00b6e1a0();
          iVar7 = FUN_00b6fc00();
          if (iVar7 == 0) {
            param_1[0xb] = 0x6b;
            FUN_00eaecdd();
            FUN_00e17910(param_1);
            return;
          }
LAB_007c0965:
          FUN_00b6fc70();
        }
        goto LAB_007be219;
      case 0x15:
        FUN_007876b0();
        local_124 = 0;
        local_120 = 0;
        FUN_00787600();
        FUN_00775250();
        FUN_00bb49c0();
        FUN_00b5cdb0();
        FUN_007877c0(1,local_124,local_120,(int)DAT_018d5098,(int)((ulonglong)DAT_018d5098 >> 0x20),
                     (int)_DAT_018d5090,(int)((ulonglong)_DAT_018d5090 >> 0x20));
        local_34 = FUN_00973a50();
        iVar7 = FUN_0099db90();
        if (iVar7 == 0) {
          param_1[0xb] = 0x6d;
          FUN_00eaecdd();
          FUN_00dfcaa0(param_1);
          return;
        }
LAB_007be1ba:
        FUN_0099dba0();
        *(undefined1 *)((int)param_1 + 0x4d) = 1;
        FUN_00ccd7a0();
        FUN_00eaee5e();
        FUN_00eaee5e();
        param_1[0x18] = local_134;
        param_1[0x19] = iStack_130;
switchD_007bdcbc_caseD_6e:
        if (local_1c[2] != 0x6e) goto LAB_007c2d88;
        local_74 = param_1[0x1f];
        param_1[0x1f] = 0;
        local_1c[2] = -1;
        param_1[0xb] = -1;
        while (iVar7 = FUN_00cce6b0(), iVar7 != 0) {
          if (*(int *)(DAT_01c289c4 + 0x50) == 0) {
            FUN_00eae9a0();
            FUN_00e99988(in_stack_fffffc3c);
            in_stack_fffffc3c = 0x7c2d71;
            FUN_00eaebef();
          }
          iVar7 = FUN_00e4d760(&PTR_DAT_01544bc8);
          if (iVar7 == 0) break;
LAB_007c2d88:
          iVar7 = FUN_00cd0850();
          if (iVar7 == 0) goto LAB_007c2e3f;
          FUN_00cd08b0();
          FUN_00787610();
          FUN_00775250();
          FUN_00bb49c0();
          FUN_0077ad90();
          local_74 = FUN_00cc8cb0();
          iVar7 = FUN_00b6fc00();
          if (iVar7 == 0) {
            local_1c[2] = 0x6e;
            param_1[0xb] = 0x6e;
            FUN_00eaecdd();
            FUN_00e394a0(&PTR_PTR_01568f2c,param_1);
            FUN_007c3dde();
            return;
          }
        }
        *(undefined1 *)((int)param_1 + 0x4d) = 0;
LAB_007c2e3f:
        if ((int)local_1c[2] < 0) {
          FUN_00a806b0();
        }
        param_1[0x18] = 0;
        param_1[0x19] = 0;
        param_1[0x1a] = 0;
        param_1[0x1b] = 0;
        if (*(char *)((int)param_1 + 0x4d) == '\0') {
          FUN_007876b0();
          local_26c = 0;
          local_268 = 0;
          FUN_00787600();
          FUN_00775250();
          FUN_00bb49c0();
          FUN_00b5cdb0();
          FUN_007877c0(1,local_26c,local_268,(int)DAT_018d5098,
                       (int)((ulonglong)DAT_018d5098 >> 0x20),(int)_DAT_018d5090,
                       (int)((ulonglong)_DAT_018d5090 >> 0x20));
          local_34 = FUN_00973a50();
          iVar7 = FUN_0099db90();
          if (iVar7 == 0) {
            param_1[0xb] = 0x6f;
            FUN_00eaecdd();
            FUN_00dfcaa0(param_1);
            return;
          }
LAB_007be149:
          FUN_0099dba0();
          FUN_007b6700(1,0x3d8);
          local_34 = FUN_00973a50();
          iVar7 = FUN_0099db90();
          if (iVar7 == 0) {
            param_1[0xb] = 0x70;
            FUN_00eaecdd();
            FUN_00dfcaa0(param_1);
            return;
          }
LAB_007be0e3:
          FUN_0099dba0();
          FUN_00eae9a0();
          FUN_00ccd050();
          FUN_00eaed7c();
          FUN_00ccd7a0();
          FUN_00eaee5e();
          FUN_00eaee5e();
          param_1[0x18] = local_264;
          param_1[0x19] = iStack_260;
switchD_007bdcbc_caseD_71:
          if (local_1c[2] != 0x71) goto LAB_007c2fc4;
          local_74 = param_1[0x1f];
          param_1[0x1f] = 0;
          local_1c[2] = -1;
          param_1[0xb] = -1;
          do {
            iVar7 = FUN_00cce6b0();
            if (iVar7 == 0) {
LAB_007c2fb2:
              FUN_00ccd350();
            }
            else {
              if (*(int *)(DAT_01c289c4 + 0x54) == 0) {
                FUN_00eae9a0();
                FUN_00e99999(in_stack_fffffc3c);
                in_stack_fffffc3c = 0x7c2f9f;
                FUN_00eaebef();
              }
              iVar7 = FUN_00e4d760(&PTR_DAT_01544bc8);
              if (iVar7 == 0) goto LAB_007c2fb2;
            }
            param_1[6] = 0;
LAB_007c2fc4:
            iVar7 = FUN_00cd0850();
            if (iVar7 == 0) goto LAB_007c3072;
            FUN_00cd08b0();
            FUN_00eaeca8();
            FUN_00787610();
            FUN_00775250();
            FUN_00bb49c0();
            FUN_0077ad90();
            local_74 = FUN_00cc8cb0();
            iVar7 = FUN_00b6fc00();
            if (iVar7 == 0) {
              local_1c[2] = 0x71;
              param_1[0xb] = 0x71;
              FUN_00eaecdd();
              FUN_00e394a0(&PTR_PTR_01568f2c,param_1);
              FUN_007c3dfb();
              return;
            }
          } while( true );
        }
        goto LAB_007bdf82;
      case 0x16:
        FUN_007b69d0(param_1[5]);
        local_30 = FUN_00b6e1a0();
        iVar7 = FUN_00b6fc00();
        if (iVar7 == 0) {
          param_1[0xb] = 0x75;
          FUN_00eaecdd();
          FUN_00e17910(param_1);
          return;
        }
LAB_007bde8f:
        iVar7 = FUN_00b6fc70();
        if (iVar7 == 0) {
          FUN_007876b0();
          local_114 = 0;
          local_110 = 0;
          FUN_00787600();
          FUN_00775250();
          FUN_00bb49c0();
          FUN_00b5cdb0();
          FUN_007877c0(1,local_114,local_110,(int)DAT_018d5098,
                       (int)((ulonglong)DAT_018d5098 >> 0x20),(int)_DAT_018d5090,
                       (int)((ulonglong)_DAT_018d5090 >> 0x20));
          local_34 = FUN_00973a50();
          iVar7 = FUN_0099db90();
          if (iVar7 == 0) {
            param_1[0xb] = 0x76;
            FUN_00eaecdd();
            FUN_00dfcaa0(param_1);
            return;
          }
LAB_007bddd8:
          FUN_0099dba0();
          local_11c = 0;
          local_118 = 0;
          FUN_00787600();
          FUN_00775250();
          FUN_00bb49c0();
          FUN_00b5cdb0();
          FUN_007b67e0(local_11c,local_118,&PTR_DAT_01bf9424,0x3d8);
          local_34 = FUN_00973a50();
          iVar7 = FUN_0099db90();
          if (iVar7 == 0) {
            param_1[0xb] = 0x77;
            FUN_00eaecdd();
            FUN_00dfcaa0(param_1);
            return;
          }
LAB_007bddab:
          FUN_0099dba0();
        }
        param_1[0xc] = 0x17;
        break;
      case 0x17:
        FUN_007876b0();
        while( true ) {
          FUN_007b6980(&PTR_DAT_01bf9d88);
          local_30 = FUN_00b6e1a0();
          iVar7 = FUN_00b6fc00();
          if (iVar7 == 0) {
            param_1[0xb] = 0x79;
            FUN_00eaecdd();
            FUN_00e17910(param_1);
            return;
          }
LAB_007bdcfd:
          iVar7 = FUN_00b6fc70();
          if (iVar7 == 0) break;
          FUN_007b6930(param_1[5],0);
          local_30 = FUN_00b6e1a0();
          iVar7 = FUN_00b6fc00();
          if (iVar7 == 0) {
            param_1[0xb] = 0x78;
            FUN_00eaecdd();
            FUN_00e17910(param_1);
            return;
          }
LAB_007bdd85:
          FUN_00b6fc70();
        }
        FUN_007876b0();
        param_1[0xc] = 0x18;
      }
      goto switchD_007c2b41_default;
    }
    goto LAB_007c3d85;
  }
  local_1c[2] = -1;
  param_1[0xb] = -1;
  goto LAB_007c1a2b;
LAB_007c3072:
  if ((int)local_1c[2] < 0) {
    FUN_00a806b0();
  }
  param_1[0x18] = 0;
  param_1[0x19] = 0;
  param_1[0x1a] = 0;
  param_1[0x1b] = 0;
  iVar7 = FUN_00a7ff10();
  if (0 < iVar7) {
    local_254[0] = 0;
    local_254[1] = 0;
    local_254[2] = 0;
    local_254[3] = 0;
    local_254[4] = 0;
    local_254[5] = 0;
    FUN_0099d430(1);
    puVar11 = local_254;
    puVar14 = local_f4;
    for (iVar7 = 6; iVar7 != 0; iVar7 = iVar7 + -1) {
      *puVar14 = *puVar11;
      puVar11 = puVar11 + 1;
      puVar14 = puVar14 + 1;
    }
    FUN_0099d5d0();
    FUN_00a7ff10();
    FUN_00de77e0();
    FUN_0099d5d0();
    FUN_0099d560();
    FUN_007876b0();
    FUN_00ccd7a0();
    while (iVar7 = FUN_00cd0850(), iVar7 != 0) {
      FUN_00cd08b0();
      FUN_00787610();
      FUN_00775250();
      FUN_00bb49c0();
      FUN_0077aa80(0);
    }
    if ((int)local_1c[2] < 0) {
      FUN_00a806b0();
    }
    FUN_007876f0();
    local_34 = FUN_00973a50();
    iVar7 = FUN_0099db90();
    if (iVar7 == 0) {
      param_1[0xb] = 0x72;
      FUN_00eaecdd();
      FUN_00dfcaa0(param_1);
      return;
    }
LAB_007be016:
    FUN_0099dba0();
    if (*(int *)(*(int *)(param_1[3] + 8) + 0x20) == 0) {
      FUN_00eae9a0();
      FUN_00e99d0d(in_stack_fffffc3c);
      in_stack_fffffc3c = 0x7be075;
      FUN_00eaebef();
    }
    FUN_00e44450(&PTR_DAT_015437ec);
    FUN_00975100();
    local_34 = FUN_00973a50();
    iVar7 = FUN_0099db90();
    if (iVar7 == 0) {
      param_1[0xb] = 0x73;
      FUN_00eaecdd();
      FUN_00dfcaa0(param_1);
      return;
    }
LAB_007bdfa7:
    FUN_0099dba0();
    FUN_007b6660(*(undefined4 *)(*(int *)(param_1[3] + 8) + 4));
    local_34 = FUN_00973a50();
    iVar7 = FUN_0099db90();
    if (iVar7 == 0) {
      param_1[0xb] = 0x74;
      FUN_00eaecdd();
      FUN_00dfcaa0(param_1);
      return;
    }
LAB_007bdf6e:
    FUN_0099dba0();
  }
  param_1[10] = 0;
LAB_007bdf82:
  param_1[0xc] = 0x16;
  goto switchD_007c2b41_default;
code_r0x007c0a44:
  param_1[0x11] = param_1[0x11] + 1;
  if (param_1[0x11] < 3) goto LAB_007c3297;
LAB_007c09d0:
  FUN_007b66b0(&PTR_DAT_01bf86a4);
  local_30 = FUN_00b6e1a0();
  iVar7 = FUN_00b6fc00();
  if (iVar7 == 0) {
    param_1[0xb] = 0x6a;
    FUN_00eaecdd();
    FUN_00e17910(param_1);
    return;
  }
LAB_007c098b:
  iVar7 = FUN_00b6fc70();
  if (iVar7 == 0) {
LAB_007be219:
    param_1[0xc] = 0x15;
  }
  else {
    param_1[0xc] = 0x14;
  }
  goto switchD_007c2b41_default;
code_r0x007c1168:
  param_1[0x10] = param_1[0x10] + 1;
  if (param_1[0x10] < 3) goto LAB_007be8c9;
LAB_007c10f4:
  FUN_007b66b0(&PTR_DAT_01bf985c);
  local_30 = FUN_00b6e1a0();
  iVar7 = FUN_00b6fc00();
  if (iVar7 == 0) {
    param_1[0xb] = 0x55;
    FUN_00eaecdd();
    FUN_00e17910(param_1);
    return;
  }
LAB_007c10af:
  iVar7 = FUN_00b6fc70();
  if (iVar7 == 0) {
LAB_007c0cab:
    param_1[0xc] = 0x12;
  }
  else {
    param_1[0xc] = 0x10;
  }
  goto switchD_007c2b41_default;
LAB_007bed65:
  FUN_007b6930(param_1[5],1);
  local_30 = FUN_00b6e1a0();
  iVar7 = FUN_00b6fc00();
  if (iVar7 == 0) {
    param_1[0xb] = 0x44;
    FUN_00eaecdd();
    FUN_00e17910(param_1);
    return;
  }
LAB_007c15fd:
  iVar7 = FUN_00b6fc70();
  if (iVar7 == 0) goto LAB_007bed16;
  FUN_007b6980(&PTR_DAT_01bf9d40);
  local_30 = FUN_00b6e1a0();
  iVar7 = FUN_00b6fc00();
  if (iVar7 == 0) {
    param_1[0xb] = 0x45;
    FUN_00eaecdd();
    FUN_00e17910(param_1);
    return;
  }
LAB_007c15c6:
  iVar7 = FUN_00b6fc70();
  if (iVar7 != 0) goto switchD_007c2b41_caseD_b;
  param_1[0xf] = param_1[0xf] + 1;
  if (param_1[0xf] < 3) goto LAB_007bed16;
LAB_007c1562:
  FUN_007b66b0(&PTR_DAT_01bf9d40);
  local_30 = FUN_00b6e1a0();
  iVar7 = FUN_00b6fc00();
  if (iVar7 == 0) {
    param_1[0xb] = 0x47;
    FUN_00eaecdd();
    FUN_00e17910(param_1);
    return;
  }
LAB_007c151d:
  iVar7 = FUN_00b6fc70();
  if (iVar7 == 0) {
LAB_007c13cf:
    param_1[0xc] = 0xe;
  }
  else {
    param_1[0xc] = 0xc;
  }
  goto switchD_007c2b41_default;
LAB_007bf610:
  FUN_007b6930(param_1[5],1);
  local_30 = FUN_00b6e1a0();
  iVar7 = FUN_00b6fc00();
  if (iVar7 == 0) {
    param_1[0xb] = 0x33;
    FUN_00eaecdd();
    FUN_00e17910(param_1);
    return;
  }
LAB_007c1c4a:
  iVar7 = FUN_00b6fc70();
  if (iVar7 == 0) goto LAB_007bf5c1;
  FUN_007b6980(&PTR_DAT_01bf8bc8);
  local_30 = FUN_00b6e1a0();
  iVar7 = FUN_00b6fc00();
  if (iVar7 == 0) {
    param_1[0xb] = 0x34;
    FUN_00eaecdd();
    FUN_00e17910(param_1);
    return;
  }
LAB_007c1c13:
  iVar7 = FUN_00b6fc70();
  if (iVar7 != 0) goto switchD_007c2b41_caseD_8;
  param_1[0xe] = param_1[0xe] + 1;
  if (param_1[0xe] < 3) goto LAB_007bf5c1;
LAB_007c1baf:
  FUN_007b66b0(&PTR_DAT_01bf8bc8);
  local_30 = FUN_00b6e1a0();
  iVar7 = FUN_00b6fc00();
  if (iVar7 == 0) {
    param_1[0xb] = 0x36;
    FUN_00eaecdd();
    FUN_00e17910(param_1);
    return;
  }
LAB_007c1b72:
  FUN_00b6fc70();
  param_1[0xc] = 9;
  goto switchD_007c2b41_default;
code_r0x007c1dce:
  param_1[0xd] = param_1[0xd] + 1;
  if (param_1[0xd] < 3) goto LAB_007bf710;
LAB_007c1d5a:
  FUN_007b66b0(&PTR_DAT_01bf8bac);
  local_30 = FUN_00b6e1a0();
  iVar7 = FUN_00b6fc00();
  if (iVar7 == 0) {
    param_1[0xb] = 0x30;
    FUN_00eaecdd();
    FUN_00e17910(param_1);
    return;
  }
LAB_007c1d19:
  iVar7 = FUN_00b6fc70();
  if (iVar7 == 0) {
LAB_007c1cce:
    param_1[0xc] = 8;
  }
  else {
    param_1[0xc] = 7;
  }
switchD_007c2b41_default:
  param_1[3] = 0;
  FUN_007876f0();
  local_34 = FUN_00973a50();
  iVar7 = FUN_0099db90();
  if (iVar7 == 0) {
    param_1[0xb] = 0x7a;
    FUN_00eaecdd();
    FUN_00dfcaa0(param_1);
    return;
  }
LAB_007bdcd7:
  FUN_0099dba0();
  goto LAB_007c2a29;
LAB_007bffab:
  FUN_00eaecdd();
  local_2b4 = *(undefined4 *)(*(int *)(param_1[6] + 0x108) + 0x34);
  FUN_00eaeae1();
  iVar7 = FUN_00eae9a0();
  *(undefined4 *)(iVar7 + 4) = 0;
  FUN_00eaebca();
  FUN_0077a610(extraout_ECX,&PTR_DAT_01beaee0);
  goto LAB_007c0017;
}

