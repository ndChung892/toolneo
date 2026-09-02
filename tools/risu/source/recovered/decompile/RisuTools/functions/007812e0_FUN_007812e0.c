/* Address: 007812e0 | Ghidra name: FUN_007812e0 */

void __fastcall FUN_007812e0(int *param_1)

{
  uint uVar1;
  undefined4 *puVar2;
  undefined **ppuVar3;
  int iVar4;
  int *piVar5;
  int iVar6;
  int iVar7;
  int iVar8;
  undefined4 uVar9;
  uint *puVar10;
  int *piVar11;
  int local_74 [4];
  undefined4 local_64;
  undefined4 local_60;
  undefined4 local_5c;
  undefined4 local_58;
  undefined4 local_54;
  int local_50;
  int local_48;
  uint local_44;
  int local_40 [8];
  int local_20;
  int local_1c [3];
  
  iVar4 = -0x60;
  do {
    *(undefined4 *)((int)&local_20 + iVar4) = 0;
    *(undefined4 *)((int)local_1c + iVar4) = 0;
    *(undefined4 *)((int)local_1c + iVar4 + 4) = 0;
    *(undefined4 *)((int)local_1c + iVar4 + 8) = 0;
    *(undefined4 *)(&stack0xfffffff0 + iVar4) = 0;
    *(undefined4 *)(&stack0xfffffff4 + iVar4) = 0;
    *(undefined4 *)(&stack0xfffffff8 + iVar4) = 0;
    *(undefined4 *)(&stack0xfffffffc + iVar4) = 0;
    puVar2 = (undefined4 *)(&stack0x00000000 + iVar4);
    *puVar2 = 0;
    puVar2[1] = 0;
    puVar2[2] = 0;
    puVar2[3] = 0;
    iVar4 = iVar4 + 0x30;
  } while (iVar4 != 0);
  local_1c[2] = param_1[5];
  iVar4 = *param_1;
  local_1c[0] = 0;
  local_20 = local_1c[0];
  local_1c[1] = local_1c[0];
  if ((uint)local_1c[2] < 8) goto LAB_00781396;
  if (local_1c[2] != 8) {
    param_1[1] = (int)&PTR_DAT_01ba44e0;
    goto LAB_0078137a;
  }
  local_20 = param_1[9];
  param_1[9] = 0;
  local_1c[2] = 0xffffffff;
  param_1[5] = -1;
LAB_0078134d:
  if ((*(uint *)(local_20 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
LAB_00781368:
  param_1[2] = 0;
LAB_0078137a:
  do {
    if ((param_1[8] != 0) && (*(int *)(param_1[8] + 0x10) != 0)) {
      param_1[5] = -2;
      if (param_1[7] == 0) {
        if (PTR_FUN_01c22110 != (undefined *)0x0) {
          FUN_00e8eaee();
        }
        FUN_00eaeca8();
        return;
      }
      iVar4 = FUN_00c0a790(0);
      if (iVar4 != 0) {
        return;
      }
                    /* WARNING: Subroutine does not return */
      FUN_00931e50();
    }
    param_1[6] = 0;
LAB_00781396:
    piVar5 = param_1;
    if (7 < (uint)local_1c[2]) {
      FUN_00eae9ce();
      FUN_0085e5d0(0,0);
      FUN_0085dd10(0,0,0,0x40000000,0,0xffffffff,2);
      FUN_0085dfa0(0,0,0,0,0,0x40000000,0,0xffffffff,2);
      piVar5 = (int *)FUN_00eaed7c();
    }
    switch(local_1c[2]) {
    case 0:
      local_20 = piVar5[9];
      piVar5[9] = 0;
      local_1c[2] = 0xffffffff;
      piVar5[5] = -1;
      break;
    case 1:
      local_20 = piVar5[9];
      piVar5[9] = 0;
      local_1c[2] = 0xffffffff;
      piVar5[5] = -1;
      goto LAB_00781705;
    case 2:
      local_20 = piVar5[9];
      piVar5[9] = 0;
      local_1c[2] = 0xffffffff;
      piVar5[5] = -1;
      goto LAB_0078166f;
    case 3:
      local_20 = piVar5[9];
      piVar5[9] = 0;
      local_1c[2] = 0xffffffff;
      piVar5[5] = -1;
      goto LAB_0078162f;
    case 4:
      goto switchD_0078141c_caseD_4;
    case 5:
      local_20 = piVar5[9];
      piVar5[9] = 0;
      local_1c[2] = 0xffffffff;
      piVar5[5] = -1;
      goto LAB_0078150b;
    case 6:
      local_20 = piVar5[9];
      piVar5[9] = 0;
      local_1c[2] = 0xffffffff;
      piVar5[5] = -1;
      goto LAB_00781478;
    case 7:
      local_20 = piVar5[9];
      piVar5[9] = 0;
      local_1c[2] = 0xffffffff;
      piVar5[5] = -1;
      goto LAB_00781437;
    default:
      local_20 = FUN_0085e2f0(piVar5[8]);
      if ((*(uint *)(local_20 + 0x1c) & 0x1600000) == 0) {
        local_1c[2] = 0;
        param_1[5] = 0;
        FUN_00eaeca8();
        FUN_00d94ac0();
        FUN_00dfc9c0();
        FUN_00782023();
        return;
      }
    }
    if ((*(uint *)(local_20 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    local_1c[1] = 0;
    if (PTR_LAB_01c22250 != (undefined *)0x0) {
      FUN_00e8ec86();
    }
    ppuVar3 = *(undefined ***)(DAT_01c28f88 + 0x10);
    if (ppuVar3 == (undefined **)0x0) {
                    /* WARNING: Subroutine does not return */
      FUN_00911740();
    }
    if ((ppuVar3 == &PTR_DAT_01bd64fc) ||
       ((ppuVar3[1] == (undefined *)0x7 &&
        ((*(ushort *)(ppuVar3 + 5) | 0x20) == 0x73 &&
         ((((uint)ppuVar3[2] | 0x200020) == 0x690077 && ((uint)ppuVar3[3] | 0x200020) == 0x64006e)
         && ((uint)ppuVar3[4] | 0x200020) == 0x77006f))))) {
      FUN_0085e7f0();
      FUN_0077fd90();
    }
    if (((local_1c[1] == 0) || (iVar6 = FUN_00bc1420(local_1c), iVar6 == 0)) ||
       ((char)local_1c[0] != '\0')) {
      FUN_007862a0();
      FUN_00eaeca8();
      iVar6 = *(int *)(iVar4 + 0x10);
      if (((iVar6 == 0) || (iVar6 = (**(code **)(iVar6 + 0x10))(), iVar6 == 0)) ||
         (iVar6 = FUN_0098b370(), iVar6 == 0)) goto LAB_00781d27;
      if (PTR_LAB_01c22148 != (undefined *)0x0) {
        FUN_00e8eba9();
      }
      iVar6 = FUN_0098b420(DAT_01c28f38);
      local_58 = 0;
      local_54 = 0;
      if (iVar6 == 0) {
                    /* WARNING: Subroutine does not return */
        FUN_00911740();
      }
      FUN_00928e40();
      iVar6 = FUN_00a38180(local_58,local_54,local_64,local_60,local_5c);
      iVar7 = FUN_00eae9a0();
      *(undefined4 *)(iVar7 + 0x14) = 0x7fffffff;
      FUN_00eaea6e();
      FUN_00eaebca();
      if (*(int *)(iVar6 + 0x18) == 0) {
                    /* WARNING: Subroutine does not return */
        FUN_00a349e0();
      }
      iVar7 = *(int *)(iVar6 + 0x1c);
      if ((iVar7 == 0) || (iVar8 = *(int *)(iVar7 + 4), iVar8 < 8)) {
                    /* WARNING: Subroutine does not return */
        FUN_009318f0();
      }
      if (iVar8 + -8 < 4) {
LAB_00781cf7:
                    /* WARNING: Subroutine does not return */
        FUN_00931d90();
      }
      if (*(uint *)(iVar7 + 0x10) >> 0x1c != 1) {
                    /* WARNING: Subroutine does not return */
        FUN_00a33cf0();
      }
      if (iVar8 < 0xc) goto LAB_00781cf7;
      if (*(uint *)(iVar7 + 0x10) >> 0x1c < 5) {
        local_40[1] = (*(uint *)(iVar7 + 0x10) & 0xfffffff) * 0xc;
      }
      else {
        local_40[1] = 0xc;
      }
      local_40[0] = -1;
      local_40[2] = iVar6;
      local_40[3] = 0;
      piVar5 = local_40;
      piVar11 = local_74;
      for (iVar6 = 4; iVar6 != 0; iVar6 = iVar6 + -1) {
        *piVar11 = *piVar5;
        piVar5 = piVar5 + 1;
        piVar11 = piVar11 + 1;
      }
      piVar5 = local_74;
      piVar11 = local_40 + 4;
      for (iVar6 = 4; iVar6 != 0; iVar6 = iVar6 + -1) {
        *piVar11 = *piVar5;
        piVar5 = piVar5 + 1;
        piVar11 = piVar11 + 1;
      }
      local_40[4] = 0xffffffff;
      goto LAB_007819da;
    }
    iVar6 = FUN_00911b90();
    local_20 = FUN_0085f090(param_1[8],*(undefined4 *)(iVar6 + 4),0);
    if ((*(uint *)(local_20 + 0x1c) & 0x1600000) == 0) {
      local_1c[2] = 1;
      param_1[5] = 1;
      FUN_00eaeca8();
      FUN_00d94ac0();
      FUN_00dfc9c0();
      FUN_00782023();
      return;
    }
LAB_00781705:
    if ((*(uint *)(local_20 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    local_20 = FUN_0085e750(param_1[8]);
    piVar5 = param_1;
    if ((*(uint *)(local_20 + 0x1c) & 0x1600000) == 0) {
      local_1c[2] = 2;
      param_1[5] = 2;
      FUN_00eaecdd();
      FUN_00d94ac0();
      FUN_00dfc9c0();
      FUN_00782023();
      return;
    }
LAB_0078166f:
    if ((*(uint *)(local_20 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
      piVar5 = param_1;
    }
    local_20 = FUN_00975000(piVar5[8]);
    if ((*(uint *)(local_20 + 0x1c) & 0x1600000) == 0) {
      local_1c[2] = 3;
      param_1[5] = 3;
      FUN_00eaecdd();
      FUN_00d94ac0();
      FUN_00dfc9c0();
      FUN_00782023();
      return;
    }
LAB_0078162f:
    if ((*(uint *)(local_20 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    FUN_00782023();
  } while( true );
switchD_0078141c_caseD_4:
  local_20 = piVar5[9];
  piVar5[9] = 0;
  local_1c[2] = 0xffffffff;
  piVar5[5] = -1;
LAB_00781599:
  if ((*(uint *)(local_20 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  local_20 = FUN_0085f090(param_1[8],*(undefined4 *)(param_1[4] + 4),0);
  piVar5 = param_1;
  if ((*(uint *)(local_20 + 0x1c) & 0x1600000) == 0) {
    local_1c[2] = 5;
    param_1[5] = 5;
    FUN_00eaecdd();
    FUN_00d94ac0();
    FUN_00dfc9c0();
    FUN_00782023();
    return;
  }
LAB_0078150b:
  if ((*(uint *)(local_20 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
    piVar5 = param_1;
  }
  local_20 = FUN_0085e750(piVar5[8]);
  piVar5 = param_1;
  if ((*(uint *)(local_20 + 0x1c) & 0x1600000) == 0) {
    local_1c[2] = 6;
    param_1[5] = 6;
    FUN_00eaecdd();
    FUN_00d94ac0();
    FUN_00dfc9c0();
    FUN_00782023();
    return;
  }
LAB_00781478:
  if ((*(uint *)(local_20 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
    piVar5 = param_1;
  }
  local_20 = FUN_00975000(piVar5[8]);
  piVar5 = param_1;
  if ((*(uint *)(local_20 + 0x1c) & 0x1600000) == 0) {
    local_1c[2] = 7;
    param_1[5] = 7;
    FUN_00eaecdd();
    FUN_00d94ac0();
    FUN_00dfc9c0();
    FUN_00782023();
    return;
  }
LAB_00781437:
  if ((*(uint *)(local_20 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
    piVar5 = param_1;
  }
  piVar5[4] = 0;
  FUN_00782023();
  param_1[3] = 0;
  if (param_1[6] == 1) goto code_r0x00781ed2;
  goto LAB_00781368;
LAB_007819da:
  iVar6 = FUN_00a38ed0();
  if (iVar6 == 0) {
    if (local_1c[2] < 0) {
      local_40[4] = local_40[5];
    }
    iVar6 = FUN_00977000();
    if ((iVar6 == 0) || (0x20 < *(int *)(iVar6 + 4))) {
      iVar6 = FUN_0097d6e0();
    }
    else {
      iVar6 = FUN_009d5000();
    }
    iVar8 = FUN_009d5000();
    iVar7 = param_1[4];
    uVar9 = FUN_00eaea6e();
    FUN_008fefa0(*(undefined4 *)(iVar7 + 4),0,uVar9);
    FUN_008fefa0(*(undefined4 *)(iVar8 + 4),*(undefined4 *)(param_1[4] + 4),uVar9);
    FUN_008fefa0(*(undefined4 *)(iVar6 + 4),*(int *)(param_1[4] + 4) + *(int *)(iVar8 + 4),uVar9);
    FUN_00eaed12();
    FUN_00911be0();
    FUN_008fefa0(4,4,param_1[4]);
    if (local_1c[2] < 0) {
      FUN_00a36c70();
    }
LAB_00781d27:
    iVar6 = FUN_00911b90();
    local_20 = FUN_0085f090(param_1[8],*(undefined4 *)(iVar6 + 4),0);
    if ((*(uint *)(local_20 + 0x1c) & 0x1600000) == 0) {
      local_1c[2] = 4;
      param_1[5] = 4;
      FUN_00eaeca8();
      FUN_00d94ac0();
      FUN_00dfc9c0();
      FUN_00782023();
      return;
    }
    goto LAB_00781599;
  }
  FUN_00a38eb0();
  if (local_48 == 0) {
    FUN_00eae9a0();
    FUN_00928830();
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  if (*(int *)(local_48 + 0x18) == 0) {
                    /* WARNING: Subroutine does not return */
    FUN_00a349e0();
  }
  iVar6 = *(int *)(local_48 + 0x1c);
  uVar1 = local_44 + 8;
  if (iVar6 == 0) {
    if (uVar1 != 0) goto LAB_00781be5;
    puVar10 = (uint *)0x0;
    iVar7 = 0;
  }
  else {
    if (*(uint *)(iVar6 + 4) < uVar1) goto LAB_00781be5;
    puVar10 = (uint *)(iVar6 + 8 + uVar1);
    iVar7 = *(int *)(iVar6 + 4) - uVar1;
  }
  if (iVar7 < 4) {
LAB_00781beb:
                    /* WARNING: Subroutine does not return */
    FUN_00931d90();
  }
  if (*puVar10 >> 0x1c != 1) {
                    /* WARNING: Subroutine does not return */
    FUN_00a33cf0();
  }
  if (iVar6 == 0) {
    if (local_44 != 0) goto LAB_00781be5;
    iVar7 = 0;
    iVar6 = 0;
  }
  else {
    if (*(uint *)(iVar6 + 4) < local_44) {
LAB_00781be5:
                    /* WARNING: Subroutine does not return */
      FUN_009318f0();
    }
    iVar7 = iVar6 + 8 + local_44;
    iVar6 = *(int *)(iVar6 + 4) - local_44;
  }
  if (iVar6 < 0xc) goto LAB_00781beb;
  if (*(uint *)(iVar7 + 8) >> 0x1c < 5) {
    local_40[1] = local_44 + (*(uint *)(iVar7 + 8) & 0xfffffff) * 0xc;
  }
  else {
    local_40[1] = local_44 + 0xc;
  }
  local_40[0] = -1;
  local_40[2] = local_48;
  local_40[3] = local_44;
  while (iVar6 = FUN_00a38ed0(), iVar6 != 0) {
    FUN_00a38eb0();
    iVar6 = local_50;
    iVar7 = FUN_00a36fb0(5);
    if (iVar7 != 0) {
      FUN_00978480(*(undefined4 *)(iVar7 + 4));
    }
    FUN_00978480(1);
    if (iVar6 == 0) {
      FUN_00eae9a0();
      FUN_00928830();
                    /* WARNING: Subroutine does not return */
      FUN_00eaeefb();
    }
    iVar6 = FUN_00a36fb0(5);
    if (iVar6 != 0) {
      FUN_00978480(*(undefined4 *)(iVar6 + 4));
    }
    FUN_00978480(4);
    iVar6 = FUN_00a36fb0(7);
    if (iVar6 != 0) {
      FUN_00978480(*(undefined4 *)(iVar6 + 4));
    }
    FUN_00978480(4);
  }
  if (local_1c[2] < 0) {
    local_40[0] = local_40[1];
  }
  goto LAB_007819da;
code_r0x00781ed2:
  piVar5 = (int *)param_1[2];
  if ((piVar5 != (int *)0x0) && ((undefined *)*piVar5 != &DAT_01610610)) {
    piVar5 = (int *)FUN_0099ad00();
  }
  iVar6 = *(int *)(iVar4 + 4);
  (**(code **)(*piVar5 + 0x20))();
  FUN_00906a20();
  (**(code **)(iVar6 + 0x10))();
  local_20 = FUN_00975000(param_1[8]);
  if ((*(uint *)(local_20 + 0x1c) & 0x1600000) == 0) {
    param_1[5] = 8;
    FUN_00eaecdd();
    FUN_00d94ac0();
    FUN_00dfc9c0();
    return;
  }
  goto LAB_0078134d;
}

