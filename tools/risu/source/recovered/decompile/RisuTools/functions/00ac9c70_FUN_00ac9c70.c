/* Address: 00ac9c70 | Ghidra name: FUN_00ac9c70 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_00ac9c70(undefined4 param_1,int *param_2)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  int iVar5;
  undefined4 local_d0;
  undefined4 local_cc;
  undefined4 local_c8;
  undefined4 local_c4;
  undefined4 local_c0;
  undefined4 local_bc;
  undefined4 local_b8;
  undefined4 local_b4;
  undefined4 local_b0;
  undefined4 local_ac;
  undefined4 local_a8;
  undefined4 local_a4;
  undefined4 local_a0;
  undefined4 local_9c;
  undefined4 local_98;
  undefined4 local_94;
  undefined4 local_90;
  undefined4 local_8c;
  undefined4 local_88;
  undefined4 local_84;
  undefined4 local_80;
  undefined4 local_7c;
  undefined4 local_78;
  undefined4 local_74;
  undefined4 local_70;
  undefined4 local_6c;
  undefined4 local_68;
  undefined4 local_64;
  undefined4 local_60;
  undefined4 local_5c;
  undefined4 local_58;
  undefined4 local_54;
  undefined4 local_50;
  undefined4 local_4c;
  undefined4 local_48;
  undefined4 local_44;
  undefined4 local_40;
  undefined4 local_3c;
  undefined4 local_38;
  undefined4 local_34;
  undefined4 local_30;
  undefined4 local_2c;
  uint local_20;
  int local_18;
  uint local_14;
  
  iVar5 = -0xc0;
  do {
    *(undefined4 *)(&stack0xfffffff0 + iVar5) = 0;
    *(undefined4 *)(&stack0xfffffff4 + iVar5) = 0;
    *(undefined4 *)(&stack0xfffffff8 + iVar5) = 0;
    *(undefined4 *)(&stack0xfffffffc + iVar5) = 0;
    puVar1 = (undefined4 *)(&stack0x00000000 + iVar5);
    *puVar1 = 0;
    puVar1[1] = 0;
    puVar1[2] = 0;
    puVar1[3] = 0;
    *(undefined4 *)(&stack0x00000010 + iVar5) = 0;
    *(undefined4 *)(&stack0x00000014 + iVar5) = 0;
    *(undefined4 *)(&stack0x00000018 + iVar5) = 0;
    *(undefined4 *)(&stack0x0000001c + iVar5) = 0;
    iVar5 = iVar5 + 0x30;
  } while (iVar5 != 0);
  iVar5 = param_2[1];
  if (iVar5 < 7) {
    FUN_00aca100();
    switch(iVar5) {
    case 0:
      break;
    case 1:
      (**(code **)(*param_2 + 0x2c))(0);
      FUN_00ac9b40(local_d0,local_cc);
      break;
    case 2:
      iVar5 = *param_2;
      (**(code **)(iVar5 + 0x2c))(0);
      FUN_00ac9b40(local_c0,local_bc);
      (**(code **)(iVar5 + 0x2c))(1);
      FUN_00ac9b40(local_c8,local_c4);
      break;
    case 3:
      iVar5 = *param_2;
      (**(code **)(iVar5 + 0x2c))(0);
      FUN_00ac9b40(local_a8,local_a4);
      (**(code **)(iVar5 + 0x2c))(1);
      FUN_00ac9b40(local_b0,local_ac);
      (**(code **)(iVar5 + 0x2c))(2);
      FUN_00ac9b40(local_b8,local_b4);
      break;
    case 4:
      iVar5 = *param_2;
      (**(code **)(iVar5 + 0x2c))(0);
      FUN_00ac9b40(local_88,local_84);
      (**(code **)(iVar5 + 0x2c))(1);
      FUN_00ac9b40(local_90,local_8c);
      (**(code **)(iVar5 + 0x2c))(2);
      FUN_00ac9b40(local_98,local_94);
      (**(code **)(iVar5 + 0x2c))(3);
      FUN_00ac9b40(local_a0,local_9c);
      break;
    case 5:
      iVar5 = *param_2;
      (**(code **)(iVar5 + 0x2c))(0);
      FUN_00ac9b40(local_60,local_5c);
      (**(code **)(iVar5 + 0x2c))(1);
      FUN_00ac9b40(local_68,local_64);
      (**(code **)(iVar5 + 0x2c))(2);
      FUN_00ac9b40(local_70,local_6c);
      (**(code **)(iVar5 + 0x2c))(3);
      FUN_00ac9b40(local_78,local_74);
      (**(code **)(iVar5 + 0x2c))(4);
      FUN_00ac9b40(local_80,local_7c);
      break;
    case 6:
      iVar5 = *param_2;
      (**(code **)(iVar5 + 0x2c))(0);
      FUN_00ac9b40(local_30,local_2c);
      (**(code **)(iVar5 + 0x2c))(1);
      FUN_00ac9b40(local_38,local_34);
      (**(code **)(iVar5 + 0x2c))(2);
      FUN_00ac9b40(local_40,local_3c);
      (**(code **)(iVar5 + 0x2c))(3);
      FUN_00ac9b40(local_48,local_44);
      (**(code **)(iVar5 + 0x2c))(4);
      FUN_00ac9b40(local_50,local_4c);
      (**(code **)(iVar5 + 0x2c))(5);
      FUN_00ac9b40(local_58,local_54);
      break;
    default:
      FUN_00eae9a0();
      FUN_00911790();
                    /* WARNING: Subroutine does not return */
      FUN_00eaeefb();
    }
    return;
  }
  FUN_0099d430(2);
  uVar4 = _UNK_018df47c;
  uVar3 = _UNK_018df478;
  uVar2 = _UNK_018df474;
  if (local_20 <= local_14) {
    puVar1 = (undefined4 *)(local_18 + local_20 * 2);
    if (local_14 - local_20 < 0x15) {
      FUN_0099d6f0();
    }
    else {
      *puVar1 = _DAT_018df470;
      puVar1[1] = uVar2;
      puVar1[2] = uVar3;
      puVar1[3] = uVar4;
      uVar4 = _UNK_018df48c;
      uVar3 = _UNK_018df488;
      uVar2 = _UNK_018df484;
      puVar1[4] = _DAT_018df480;
      puVar1[5] = uVar2;
      puVar1[6] = uVar3;
      puVar1[7] = uVar4;
      puVar1[8] = 0x6f0072;
      puVar1[9] = 0x20006d;
      *(undefined2 *)(puVar1 + 10) = 0x27;
      local_20 = local_20 + 0x15;
    }
    FUN_00e52ce0(&PTR_DAT_01551230);
    if (local_20 <= local_14) {
      puVar1 = (undefined4 *)(local_18 + local_20 * 2);
      if (local_14 - local_20 < 6) {
        FUN_0099d6f0();
      }
      else {
        *puVar1 = 0x200027;
        puVar1[1] = 0x6f0074;
        puVar1[2] = 0x270020;
        local_20 = local_20 + 6;
      }
      FUN_00903080();
      FUN_0099d620();
      if (local_20 <= local_14) {
        if (local_14 - local_20 < 0x26) {
          FUN_0099d6f0();
        }
        else {
          FUN_00930280(0x4c);
        }
        FUN_00eae9a0();
        FUN_0099d560();
        FUN_009115d0(&PTR_DAT_01bed988);
                    /* WARNING: Subroutine does not return */
        FUN_00eaeefb();
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  FUN_009318f0();
}

