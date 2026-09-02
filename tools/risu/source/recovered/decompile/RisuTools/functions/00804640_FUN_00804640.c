/* Address: 00804640 | Ghidra name: FUN_00804640 */

void __fastcall FUN_00804640(int param_1)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  undefined4 uVar4;
  int iVar5;
  int extraout_ECX;
  undefined4 extraout_ECX_00;
  int in_stack_ffffff88;
  undefined4 local_34;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 local_24;
  undefined4 uStack_20;
  int iStack_1c;
  int iStack_18;
  int local_14;
  
  local_34 = 0;
  uStack_30 = 0;
  uStack_2c = 0;
  uStack_28 = 0;
  local_24 = 0;
  uStack_20 = 0;
  iStack_1c = 0;
  iStack_18 = 0;
  local_14 = 0;
  iVar5 = *(int *)(param_1 + 4);
  switch(*(undefined4 *)(param_1 + 0x14)) {
  case 0:
    local_14 = *(int *)(param_1 + 0x20);
    *(undefined4 *)(param_1 + 0x20) = 0;
    *(undefined4 *)(param_1 + 0x14) = 0xffffffff;
    do {
      if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      iStack_18 = FUN_0077b060();
      if ((*(uint *)(iStack_18 + 0x1c) & 0x1600000) == 0) {
        *(undefined4 *)(param_1 + 0x14) = 1;
        FUN_00eaeca8();
        FUN_00da3460();
        FUN_00dfca00(&PTR_DAT_01569c5c);
        return;
      }
LAB_00804b95:
      if ((*(uint *)(iStack_18 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      if (*(int *)(DAT_01c28a54 + 8) == 0) {
        FUN_00eae9a0();
        FUN_00e9aa99(in_stack_ffffff88);
        in_stack_ffffff88 = 0x804beb;
        FUN_00eaec14();
      }
      iVar2 = FUN_00e4d760(&PTR_DAT_01549e90);
      if (*(int *)(DAT_01c28a54 + 0xc) == 0) {
        FUN_00eae9a0();
        FUN_00e9aaaa(in_stack_ffffff88);
        in_stack_ffffff88 = 0x804c35;
        FUN_00eaebef();
      }
      iVar3 = FUN_00e4d760(&PTR_DAT_01549e90);
      if (iVar2 != 0) {
        if (iVar3 != 0) {
          iStack_1c = FUN_0077b0a0(&PTR_DAT_01b91278);
          if ((*(uint *)(iStack_1c + 0x1c) & 0x1600000) == 0) {
            *(undefined4 *)(param_1 + 0x14) = 2;
            FUN_00eaecdd();
            FUN_00da3460();
            FUN_00dfca00(&PTR_DAT_01553b84);
            return;
          }
LAB_00804b53:
          if ((*(uint *)(iStack_1c + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          if (*(int *)(iStack_1c + 0x20) == 0) {
            iVar2 = 0;
          }
          else {
            if (*(int *)(DAT_01c28a54 + 0x10) == 0) {
              FUN_00eae9a0();
              FUN_00e9aabb(in_stack_ffffff88);
              in_stack_ffffff88 = 0x804f1a;
              FUN_00eaec14();
            }
            iVar2 = FUN_00e4e4a0(&PTR_DAT_01543d24,&local_24);
          }
          if (iVar2 == 0) {
            iVar2 = FUN_00eaeae1();
            *(undefined ***)(iVar2 + 8) = &PTR_DAT_01b91278;
            iVar2 = FUN_00eae9a0();
            *(undefined4 *)(iVar2 + 4) = 0;
            FUN_00eaebca();
            iVar2 = FUN_00eae9a0();
            *(undefined4 *)(iVar2 + 4) = 0;
            FUN_00eaebca();
            FUN_0077a610(extraout_ECX_00,&PTR_DAT_01befc64);
          }
          else {
            uVar1 = *(undefined4 *)(iVar2 + 8);
            uStack_28 = *(undefined4 *)(*(int *)(iVar5 + 0x14) + 8);
            iVar2 = FUN_00eaeae1();
            *(undefined ***)(iVar2 + 8) = &PTR_DAT_01b91278;
            iVar3 = FUN_00eae9a0();
            *(undefined4 *)(iVar3 + 4) = uVar1;
            FUN_00eaebca();
            iVar3 = FUN_00eae9a0();
            *(undefined4 *)(iVar3 + 4) = 0;
            FUN_00eaebca();
            FUN_0077a610(iVar2,&PTR_DAT_01befc64);
          }
          local_14 = FUN_00975000(*(undefined4 *)(iVar5 + 0x1c));
          if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
            *(undefined4 *)(param_1 + 0x14) = 3;
            FUN_00eaecdd();
            FUN_00da3460();
            FUN_00dfc9c0();
            return;
          }
LAB_00804b19:
          if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
        }
        do {
          iStack_1c = FUN_0077b0a0(&PTR_DAT_01b9125c);
          if ((*(uint *)(iStack_1c + 0x1c) & 0x1600000) == 0) {
            *(undefined4 *)(param_1 + 0x14) = 4;
            FUN_00eaeca8();
            FUN_00da3460();
            FUN_00dfca00(&PTR_DAT_01553b84);
            return;
          }
LAB_00804a73:
          if ((*(uint *)(iStack_1c + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          if (*(int *)(iStack_1c + 0x20) == 0) {
            iStack_1c = FUN_0077b0a0(&PTR_DAT_01ba04a8);
            if ((*(uint *)(iStack_1c + 0x1c) & 0x1600000) == 0) {
              *(undefined4 *)(param_1 + 0x14) = 5;
              FUN_00eaecdd();
              FUN_00da3460();
              FUN_00dfca00(&PTR_DAT_01553b84);
              return;
            }
LAB_008049d8:
            if ((*(uint *)(iStack_1c + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            if (*(int *)(iStack_1c + 0x20) == 0) break;
          }
          iStack_1c = FUN_0077b0a0(&PTR_DAT_01ba04a8);
          if ((*(uint *)(iStack_1c + 0x1c) & 0x1600000) == 0) {
            *(undefined4 *)(param_1 + 0x14) = 6;
            FUN_00eaecdd();
            FUN_00da3460();
            FUN_00dfca00(&PTR_DAT_01553b84);
            return;
          }
LAB_0080493b:
          if ((*(uint *)(iStack_1c + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          if (*(int *)(iStack_1c + 0x20) != 0) {
LAB_00804702:
            iStack_1c = FUN_0077b0a0(&PTR_DAT_01ba04a8);
            if ((*(uint *)(iStack_1c + 0x1c) & 0x1600000) == 0) {
              *(undefined4 *)(param_1 + 0x14) = 0xc;
              FUN_00eaecdd();
              FUN_00da3460();
              FUN_00dfca00(&PTR_DAT_01553b84);
              return;
            }
            goto LAB_00804690;
          }
          iStack_1c = FUN_0077b0a0(&PTR_DAT_01b9125c);
          if ((*(uint *)(iStack_1c + 0x1c) & 0x1600000) == 0) {
            *(undefined4 *)(param_1 + 0x14) = 7;
            FUN_00eaecdd();
            FUN_00da3460();
            FUN_00dfca00(&PTR_DAT_01553b84);
            return;
          }
LAB_008048e1:
          if ((*(uint *)(iStack_1c + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          iVar2 = *(int *)(iStack_1c + 0x20);
          *(undefined4 *)(param_1 + 0x10) = 0;
          in_stack_ffffff88 = *(int *)(param_1 + 0xc);
          if (*(int *)(in_stack_ffffff88 + 4) != 0) {
            if (iVar2 != 0) {
              if (*(int *)(in_stack_ffffff88 + 8) == 0) {
                FUN_00eae9a0();
                FUN_00e9ab32(in_stack_ffffff88);
                in_stack_ffffff88 = 0x805099;
                FUN_00eaebef();
              }
              FUN_00e4e4a0(&PTR_DAT_01543d24,&uStack_2c);
            }
            FUN_00eaeca8();
          }
          if (*(int *)(param_1 + 0x10) == 0) {
            if (iVar2 != 0) {
              if (*(int *)(DAT_01c28a54 + 0x14) == 0) {
                FUN_00eae9a0();
                FUN_00e9aacc(in_stack_ffffff88);
                in_stack_ffffff88 = 0x805109;
                FUN_00eaebef();
              }
              FUN_00e4e4a0(&PTR_DAT_01543d24,&uStack_30);
            }
            FUN_00eaeca8();
          }
          if (*(int *)(param_1 + 0x10) == 0) {
            if (iVar2 != 0) {
              if (*(int *)(DAT_01c28a54 + 0x18) == 0) {
                FUN_00eae9a0();
                FUN_00e9aadd(in_stack_ffffff88);
                in_stack_ffffff88 = 0x805171;
                FUN_00eaebef();
              }
              FUN_00e4e4a0(&PTR_DAT_01543d24,&local_34);
            }
            FUN_00eaeca8();
          }
          local_14 = FUN_00975000(*(undefined4 *)(iVar5 + 0x1c));
          if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
            *(undefined4 *)(param_1 + 0x14) = 8;
            FUN_00eaecdd();
            FUN_00da3460();
            FUN_00dfc9c0();
            return;
          }
LAB_008047e8:
          if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          if (*(int *)(param_1 + 0x10) == 0) {
            FUN_007876b0();
            local_14 = FUN_00975000(*(undefined4 *)(iVar5 + 0x1c));
            if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
              *(undefined4 *)(param_1 + 0x14) = 10;
              FUN_00eaecdd();
              FUN_00da3460();
              FUN_00dfc9c0();
              return;
            }
LAB_00804777:
            if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            FUN_00787780();
          }
          else {
            uVar1 = *(undefined4 *)(*(int *)(param_1 + 0x10) + 8);
            iVar2 = FUN_00eaeae1();
            *(undefined ***)(iVar2 + 8) = &PTR_DAT_01b9125c;
            iVar3 = FUN_00eae9a0();
            *(undefined4 *)(iVar3 + 4) = uVar1;
            FUN_00eaebca();
            iVar3 = FUN_00eae9a0();
            *(undefined4 *)(iVar3 + 4) = 0;
            FUN_00eaebca();
            FUN_0077a610(iVar2,&PTR_DAT_01befc64);
            local_14 = FUN_00975000(*(undefined4 *)(iVar5 + 0x1c));
            if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
              *(undefined4 *)(param_1 + 0x14) = 9;
              FUN_00eaecdd();
              FUN_00da3460();
              FUN_00dfc9c0();
              return;
            }
LAB_008047af:
            if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
          }
          *(undefined4 *)(param_1 + 0x10) = 0;
LAB_00804d60:
          iStack_1c = FUN_0077b0a0(&PTR_DAT_01ba04a8);
          if ((*(uint *)(iStack_1c + 0x1c) & 0x1600000) == 0) {
            *(undefined4 *)(param_1 + 0x14) = 0xb;
            FUN_00eaecdd();
            FUN_00da3460();
            FUN_00dfca00(&PTR_DAT_01553b84);
            return;
          }
LAB_008046cf:
          if ((*(uint *)(iStack_1c + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          if ((*(int *)(iStack_1c + 0x20) != 0) || (9 < *(int *)(param_1 + 0x18)))
          goto LAB_00804702;
          *(int *)(param_1 + 0x18) = *(int *)(param_1 + 0x18) + 1;
        } while( true );
      }
      uVar1 = *(undefined4 *)(*(int *)(param_1 + 8) + 0x28);
      uStack_20 = *(undefined4 *)(*(int *)(iVar5 + 0x14) + 8);
      uVar4 = FUN_00eaeae1();
      iVar2 = FUN_00eae9a0();
      *(undefined4 *)(iVar2 + 4) = uVar1;
      FUN_00eaebca();
      iVar2 = FUN_00eae9a0();
      *(undefined4 *)(iVar2 + 4) = 0;
      FUN_00eaebca();
      FUN_0077a610(uVar4,&PTR_DAT_01be3a98);
      local_14 = FUN_00975000(*(undefined4 *)(iVar5 + 0x1c));
    } while ((*(uint *)(local_14 + 0x1c) & 0x1600000) != 0);
    *(undefined4 *)(param_1 + 0x14) = 0;
    FUN_00eaecdd();
    FUN_00da3460();
    FUN_00dfc9c0();
    break;
  case 1:
    iStack_18 = *(int *)(param_1 + 0x24);
    *(undefined4 *)(param_1 + 0x24) = 0;
    *(undefined4 *)(param_1 + 0x14) = 0xffffffff;
    goto LAB_00804b95;
  case 2:
    iStack_1c = *(int *)(param_1 + 0x28);
    *(undefined4 *)(param_1 + 0x28) = 0;
    *(undefined4 *)(param_1 + 0x14) = 0xffffffff;
    goto LAB_00804b53;
  case 3:
    local_14 = *(int *)(param_1 + 0x20);
    *(undefined4 *)(param_1 + 0x20) = 0;
    *(undefined4 *)(param_1 + 0x14) = 0xffffffff;
    goto LAB_00804b19;
  case 4:
    iStack_1c = *(int *)(param_1 + 0x28);
    *(undefined4 *)(param_1 + 0x28) = 0;
    *(undefined4 *)(param_1 + 0x14) = 0xffffffff;
    goto LAB_00804a73;
  case 5:
    iStack_1c = *(int *)(param_1 + 0x28);
    *(undefined4 *)(param_1 + 0x28) = 0;
    *(undefined4 *)(param_1 + 0x14) = 0xffffffff;
    goto LAB_008049d8;
  case 6:
    iStack_1c = *(int *)(param_1 + 0x28);
    *(undefined4 *)(param_1 + 0x28) = 0;
    *(undefined4 *)(param_1 + 0x14) = 0xffffffff;
    goto LAB_0080493b;
  case 7:
    iStack_1c = *(int *)(param_1 + 0x28);
    *(undefined4 *)(param_1 + 0x28) = 0;
    *(undefined4 *)(param_1 + 0x14) = 0xffffffff;
    goto LAB_008048e1;
  case 8:
    local_14 = *(int *)(param_1 + 0x20);
    *(undefined4 *)(param_1 + 0x20) = 0;
    *(undefined4 *)(param_1 + 0x14) = 0xffffffff;
    goto LAB_008047e8;
  case 9:
    local_14 = *(int *)(param_1 + 0x20);
    *(undefined4 *)(param_1 + 0x20) = 0;
    *(undefined4 *)(param_1 + 0x14) = 0xffffffff;
    goto LAB_008047af;
  case 10:
    local_14 = *(int *)(param_1 + 0x20);
    *(undefined4 *)(param_1 + 0x20) = 0;
    *(undefined4 *)(param_1 + 0x14) = 0xffffffff;
    goto LAB_00804777;
  case 0xb:
    iStack_1c = *(int *)(param_1 + 0x28);
    *(undefined4 *)(param_1 + 0x28) = 0;
    *(undefined4 *)(param_1 + 0x14) = 0xffffffff;
    goto LAB_008046cf;
  case 0xc:
    iStack_1c = *(int *)(param_1 + 0x28);
    *(undefined4 *)(param_1 + 0x28) = 0;
    *(undefined4 *)(param_1 + 0x14) = 0xffffffff;
LAB_00804690:
    if ((*(uint *)(iStack_1c + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    iVar5 = *(int *)(iStack_1c + 0x20);
    *(undefined4 *)(param_1 + 0x14) = 0xfffffffe;
    *(undefined4 *)(param_1 + 0xc) = 0;
    if (*(int *)(param_1 + 0x1c) == 0) {
      if (iVar5 == 0) {
        if (PTR_FUN_01c2211c != (undefined *)0x0) {
          FUN_00e8eaff();
        }
      }
      else if (PTR_FUN_01c2211c != (undefined *)0x0) {
        FUN_00e8eaff();
      }
      FUN_00eaed47();
    }
    else {
      iVar5 = FUN_00b6e080();
      if (iVar5 == 0) {
                    /* WARNING: Subroutine does not return */
        FUN_00931e50();
      }
    }
    break;
  default:
    FUN_00eae9a0();
    FUN_00eaeca8();
    FUN_00eaebca();
    *(undefined4 *)(extraout_ECX + 0x18) = 0;
    goto LAB_00804d60;
  }
  return;
}

