/* Address: 00ee8980 | Ghidra name: FUN_00ee8980 */

/* WARNING: Function: __security_check_cookie replaced with injection: security_check_cookie */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void FUN_00ee8980(HMODULE param_1,HMODULE param_2,char *param_3,char *param_4)

{
  char cVar1;
  HMODULE hModule;
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  FARPROC pFVar5;
  FILE *pFVar6;
  char *pcVar7;
  char *in_stack_fffffeac;
  DWORD DVar8;
  undefined4 local_12c;
  int local_128;
  int local_124;
  char local_120 [40];
  char local_f8;
  undefined1 local_f7 [71];
  char local_b0 [168];
  uint local_8;
  
  local_8 = DAT_01c56b40 ^ (uint)&stack0xfffffffc;
  DAT_01c87100 = param_1;
  DAT_01c87104 = param_2;
  local_12c = 0xffffffff;
  local_128 = -1;
  local_124 = -1;
  local_f8 = '\0';
  _memset(local_f7,0,0x46);
  local_120[0] = '\0';
  local_120[0x21] = '\0';
  local_120[0x22] = '\0';
  local_120[0x23] = '\0';
  local_120[0x24] = '\0';
  local_120[1] = '\0';
  local_120[2] = '\0';
  local_120[3] = '\0';
  local_120[4] = '\0';
  local_120[5] = '\0';
  local_120[6] = '\0';
  local_120[7] = '\0';
  local_120[8] = '\0';
  local_120[9] = '\0';
  local_120[10] = '\0';
  local_120[0xb] = '\0';
  local_120[0xc] = '\0';
  local_120[0xd] = '\0';
  local_120[0xe] = '\0';
  local_120[0xf] = '\0';
  local_120[0x10] = '\0';
  local_120[0x11] = '\0';
  local_120[0x12] = '\0';
  local_120[0x13] = '\0';
  local_120[0x14] = '\0';
  local_120[0x15] = '\0';
  local_120[0x16] = '\0';
  local_120[0x17] = '\0';
  local_120[0x18] = '\0';
  local_120[0x19] = '\0';
  local_120[0x1a] = '\0';
  local_120[0x1b] = '\0';
  local_120[0x1c] = '\0';
  local_120[0x1d] = '\0';
  local_120[0x1e] = '\0';
  local_120[0x1f] = '\0';
  local_120[0x20] = '\0';
  pcVar7 = param_3;
  do {
    cVar1 = *pcVar7;
    pcVar7 = pcVar7 + 1;
  } while (cVar1 != '\0');
  if ((uint)((int)pcVar7 - (int)(param_3 + 1)) < 0x22) {
    in_stack_fffffeac = (char *)0xee8a42;
    FUN_00eece30(param_3,"%d.%d.%d",&local_12c,&local_128,&local_124);
    if (param_4 != (char *)0x0) {
      pcVar7 = param_4;
      do {
        cVar1 = *pcVar7;
        pcVar7 = pcVar7 + 1;
      } while (cVar1 != '\0');
      if (0x23 < (uint)((int)pcVar7 - (int)(param_4 + 1))) {
        DVar8 = 0x23;
        pcVar7 = 
        "The resolved suffix \"%s\" from System.Globalization.AppLocalIcu switch has to be < %zu chars long.\n"
        ;
        goto LAB_00eeaf00;
      }
      _sprintf_s(local_120,0x25,"_%s",param_4);
    }
    iVar4 = local_124;
    iVar3 = local_128;
    uVar2 = local_12c;
    hModule = DAT_01c87100;
    pFVar5 = GetProcAddress(DAT_01c87100,"u_strlen");
    if (pFVar5 == (FARPROC)0x0) {
      _sprintf_s(&local_f8,0x46,"_%d%s",uVar2,local_120);
      _sprintf_s(local_b0,0xa5,"u_strlen%s",&local_f8);
      pFVar5 = GetProcAddress(hModule,local_b0);
      if (pFVar5 == (FARPROC)0x0) {
        if (iVar3 != -1) {
          _sprintf_s(&local_f8,0x46,"_%d_%d%s",uVar2,iVar3,local_120);
          _sprintf_s(local_b0,0xa5,"u_strlen%s",&local_f8);
          pFVar5 = GetProcAddress(hModule,local_b0);
          if (pFVar5 != (FARPROC)0x0) goto LAB_00ee8bda;
          if (iVar4 != -1) {
            _sprintf_s(&local_f8,0x46,"_%d_%d_%d%s",uVar2,iVar3,iVar4,local_120);
            _sprintf_s(local_b0,0xa5,"u_strlen%s",&local_f8);
            pFVar5 = GetProcAddress(hModule,local_b0);
            if (pFVar5 != (FARPROC)0x0) goto LAB_00ee8bda;
          }
        }
        pcVar7 = "Could not find symbol: %s from libicuuc\n";
        pFVar6 = (FILE *)__acrt_iob_func(2,"Could not find symbol: %s from libicuuc\n",local_b0);
        _fprintf(pFVar6,pcVar7);
        goto LAB_00eeaf13;
      }
    }
LAB_00ee8bda:
    _sprintf_s(local_b0,0xa5,"u_charsToUChars%s",&local_f8);
    in_stack_fffffeac = (char *)0xee8c0d;
    DAT_01c86f54 = GetProcAddress(DAT_01c87100,local_b0);
    if (DAT_01c86f54 == (FARPROC)0x0) {
      DVar8 = GetLastError();
      param_4 = local_b0;
      pcVar7 = "Cannot get symbol %s from libicuuc\nError: %u\n";
    }
    else {
      _sprintf_s(local_b0,0xa5,"u_getVersion%s",&local_f8);
      _DAT_01c86f58 = GetProcAddress(DAT_01c87100,local_b0);
      if (_DAT_01c86f58 == (FARPROC)0x0) {
        DVar8 = GetLastError();
        param_4 = local_b0;
        pcVar7 = "Cannot get symbol %s from libicuuc\nError: %u\n";
      }
      else {
        _sprintf_s(local_b0,0xa5,"u_strcmp%s",&local_f8);
        _DAT_01c86f5c = GetProcAddress(DAT_01c87100,local_b0);
        if (_DAT_01c86f5c == (FARPROC)0x0) {
          DVar8 = GetLastError();
          param_4 = local_b0;
          pcVar7 = "Cannot get symbol %s from libicuuc\nError: %u\n";
        }
        else {
          _sprintf_s(local_b0,0xa5,"u_strcpy%s",&local_f8);
          _DAT_01c86f60 = GetProcAddress(DAT_01c87100,local_b0);
          if (_DAT_01c86f60 == (FARPROC)0x0) {
            DVar8 = GetLastError();
            param_4 = local_b0;
            pcVar7 = "Cannot get symbol %s from libicuuc\nError: %u\n";
          }
          else {
            _sprintf_s(local_b0,0xa5,"u_strlen%s",&local_f8);
            DAT_01c86f64 = GetProcAddress(DAT_01c87100,local_b0);
            if (DAT_01c86f64 == (FARPROC)0x0) {
              DVar8 = GetLastError();
              param_4 = local_b0;
              pcVar7 = "Cannot get symbol %s from libicuuc\nError: %u\n";
            }
            else {
              _sprintf_s(local_b0,0xa5,"u_strncpy%s",&local_f8);
              DAT_01c86f68 = GetProcAddress(DAT_01c87100,local_b0);
              if (DAT_01c86f68 == (FARPROC)0x0) {
                DVar8 = GetLastError();
                param_4 = local_b0;
                pcVar7 = "Cannot get symbol %s from libicuuc\nError: %u\n";
              }
              else {
                _sprintf_s(local_b0,0xa5,"u_tolower%s",&local_f8);
                DAT_01c86f6c = GetProcAddress(DAT_01c87100,local_b0);
                if (DAT_01c86f6c == (FARPROC)0x0) {
                  DVar8 = GetLastError();
                  param_4 = local_b0;
                  pcVar7 = "Cannot get symbol %s from libicuuc\nError: %u\n";
                }
                else {
                  _sprintf_s(local_b0,0xa5,"u_toupper%s",&local_f8);
                  DAT_01c86f70 = GetProcAddress(DAT_01c87100,local_b0);
                  if (DAT_01c86f70 == (FARPROC)0x0) {
                    DVar8 = GetLastError();
                    param_4 = local_b0;
                    pcVar7 = "Cannot get symbol %s from libicuuc\nError: %u\n";
                  }
                  else {
                    _sprintf_s(local_b0,0xa5,"u_uastrncpy%s",&local_f8);
                    DAT_01c86f74 = GetProcAddress(DAT_01c87100,local_b0);
                    if (DAT_01c86f74 == (FARPROC)0x0) {
                      DVar8 = GetLastError();
                      param_4 = local_b0;
                      pcVar7 = "Cannot get symbol %s from libicuuc\nError: %u\n";
                    }
                    else {
                      _sprintf_s(local_b0,0xa5,"ubrk_close%s",&local_f8);
                      DAT_01c86f78 = GetProcAddress(DAT_01c87100,local_b0);
                      if (DAT_01c86f78 == (FARPROC)0x0) {
                        DVar8 = GetLastError();
                        param_4 = local_b0;
                        pcVar7 = "Cannot get symbol %s from libicuuc\nError: %u\n";
                      }
                      else {
                        _sprintf_s(local_b0,0xa5,"ubrk_openRules%s",&local_f8);
                        DAT_01c86f7c = GetProcAddress(DAT_01c87100,local_b0);
                        if (DAT_01c86f7c == (FARPROC)0x0) {
                          DVar8 = GetLastError();
                          param_4 = local_b0;
                          pcVar7 = "Cannot get symbol %s from libicuuc\nError: %u\n";
                        }
                        else {
                          _sprintf_s(local_b0,0xa5,"ucal_add%s",&local_f8);
                          DAT_01c86f80 = GetProcAddress(DAT_01c87104,local_b0);
                          if (DAT_01c86f80 == (FARPROC)0x0) {
                            DVar8 = GetLastError();
                            param_4 = local_b0;
                            pcVar7 = "Cannot get symbol %s from libicui18n\nError: %u\n";
                          }
                          else {
                            _sprintf_s(local_b0,0xa5,"ucal_close%s",&local_f8);
                            DAT_01c86f84 = GetProcAddress(DAT_01c87104,local_b0);
                            if (DAT_01c86f84 == (FARPROC)0x0) {
                              DVar8 = GetLastError();
                              param_4 = local_b0;
                              pcVar7 = "Cannot get symbol %s from libicui18n\nError: %u\n";
                            }
                            else {
                              _sprintf_s(local_b0,0xa5,"ucal_get%s",&local_f8);
                              DAT_01c86f88 = GetProcAddress(DAT_01c87104,local_b0);
                              if (DAT_01c86f88 == (FARPROC)0x0) {
                                DVar8 = GetLastError();
                                param_4 = local_b0;
                                pcVar7 = "Cannot get symbol %s from libicui18n\nError: %u\n";
                              }
                              else {
                                _sprintf_s(local_b0,0xa5,"ucal_getAttribute%s",&local_f8);
                                DAT_01c86f8c = GetProcAddress(DAT_01c87104,local_b0);
                                if (DAT_01c86f8c == (FARPROC)0x0) {
                                  DVar8 = GetLastError();
                                  param_4 = local_b0;
                                  pcVar7 = "Cannot get symbol %s from libicui18n\nError: %u\n";
                                }
                                else {
                                  _sprintf_s(local_b0,0xa5,"ucal_getKeywordValuesForLocale%s",
                                             &local_f8);
                                  DAT_01c86f90 = GetProcAddress(DAT_01c87104,local_b0);
                                  if (DAT_01c86f90 == (FARPROC)0x0) {
                                    DVar8 = GetLastError();
                                    param_4 = local_b0;
                                    pcVar7 = "Cannot get symbol %s from libicui18n\nError: %u\n";
                                  }
                                  else {
                                    _sprintf_s(local_b0,0xa5,"ucal_getLimit%s",&local_f8);
                                    _DAT_01c86f94 = GetProcAddress(DAT_01c87104,local_b0);
                                    if (_DAT_01c86f94 == (FARPROC)0x0) {
                                      DVar8 = GetLastError();
                                      param_4 = local_b0;
                                      pcVar7 = "Cannot get symbol %s from libicui18n\nError: %u\n";
                                    }
                                    else {
                                      _sprintf_s(local_b0,0xa5,"ucal_getNow%s",&local_f8);
                                      _DAT_01c86f98 = GetProcAddress(DAT_01c87104,local_b0);
                                      if (_DAT_01c86f98 == (FARPROC)0x0) {
                                        DVar8 = GetLastError();
                                        param_4 = local_b0;
                                        pcVar7 = "Cannot get symbol %s from libicui18n\nError: %u\n"
                                        ;
                                      }
                                      else {
                                        _sprintf_s(local_b0,0xa5,"ucal_getTimeZoneDisplayName%s",
                                                   &local_f8);
                                        _DAT_01c86f9c = GetProcAddress(DAT_01c87104,local_b0);
                                        if (_DAT_01c86f9c == (FARPROC)0x0) {
                                          DVar8 = GetLastError();
                                          param_4 = local_b0;
                                          pcVar7 = 
                                          "Cannot get symbol %s from libicui18n\nError: %u\n";
                                        }
                                        else {
                                          _sprintf_s(local_b0,0xa5,
                                                     "ucal_getTimeZoneIDForWindowsID%s",&local_f8);
                                          _DAT_01c86fa0 = GetProcAddress(DAT_01c87104,local_b0);
                                          if (_DAT_01c86fa0 == (FARPROC)0x0) {
                                            DVar8 = GetLastError();
                                            param_4 = local_b0;
                                            pcVar7 = 
                                            "Cannot get symbol %s from libicui18n\nError: %u\n";
                                          }
                                          else {
                                            _sprintf_s(local_b0,0xa5,"ucal_getWindowsTimeZoneID%s",
                                                       &local_f8);
                                            DAT_01c86fa4 = GetProcAddress(DAT_01c87104,local_b0);
                                            if (DAT_01c86fa4 == (FARPROC)0x0) {
                                              DVar8 = GetLastError();
                                              param_4 = local_b0;
                                              pcVar7 = 
                                              "Cannot get symbol %s from libicui18n\nError: %u\n";
                                            }
                                            else {
                                              _sprintf_s(local_b0,0xa5,"ucal_open%s",&local_f8);
                                              DAT_01c86fa8 = GetProcAddress(DAT_01c87104,local_b0);
                                              if (DAT_01c86fa8 == (FARPROC)0x0) {
                                                DVar8 = GetLastError();
                                                param_4 = local_b0;
                                                pcVar7 = 
                                                "Cannot get symbol %s from libicui18n\nError: %u\n";
                                              }
                                              else {
                                                _sprintf_s(local_b0,0xa5,
                                                           "ucal_openTimeZoneIDEnumeration%s",
                                                           &local_f8);
                                                _DAT_01c86fac =
                                                     GetProcAddress(DAT_01c87104,local_b0);
                                                if (_DAT_01c86fac == (FARPROC)0x0) {
                                                  DVar8 = GetLastError();
                                                  param_4 = local_b0;
                                                  pcVar7 = 
                                                  "Cannot get symbol %s from libicui18n\nError: %u\n"
                                                  ;
                                                }
                                                else {
                                                  _sprintf_s(local_b0,0xa5,"ucal_set%s",&local_f8);
                                                  DAT_01c86fb0 = GetProcAddress(DAT_01c87104,
                                                                                local_b0);
                                                  if (DAT_01c86fb0 == (FARPROC)0x0) {
                                                    DVar8 = GetLastError();
                                                    param_4 = local_b0;
                                                    pcVar7 = 
                                                  "Cannot get symbol %s from libicui18n\nError: %u\n"
                                                  ;
                                                  }
                                                  else {
                                                    _sprintf_s(local_b0,0xa5,"ucal_setMillis%s",
                                                               &local_f8);
                                                    _DAT_01c86fb4 =
                                                         GetProcAddress(DAT_01c87104,local_b0);
                                                    if (_DAT_01c86fb4 == (FARPROC)0x0) {
                                                      DVar8 = GetLastError();
                                                      param_4 = local_b0;
                                                      pcVar7 = 
                                                  "Cannot get symbol %s from libicui18n\nError: %u\n"
                                                  ;
                                                  }
                                                  else {
                                                    _sprintf_s(local_b0,0xa5,"ucol_close%s",
                                                               &local_f8);
                                                    DAT_01c86fb8 = GetProcAddress(DAT_01c87104,
                                                                                  local_b0);
                                                    if (DAT_01c86fb8 == (FARPROC)0x0) {
                                                      DVar8 = GetLastError();
                                                      param_4 = local_b0;
                                                      pcVar7 = 
                                                  "Cannot get symbol %s from libicui18n\nError: %u\n"
                                                  ;
                                                  }
                                                  else {
                                                    _sprintf_s(local_b0,0xa5,"ucol_closeElements%s",
                                                               &local_f8);
                                                    DAT_01c86fbc = GetProcAddress(DAT_01c87104,
                                                                                  local_b0);
                                                    if (DAT_01c86fbc == (FARPROC)0x0) {
                                                      DVar8 = GetLastError();
                                                      param_4 = local_b0;
                                                      pcVar7 = 
                                                  "Cannot get symbol %s from libicui18n\nError: %u\n"
                                                  ;
                                                  }
                                                  else {
                                                    _sprintf_s(local_b0,0xa5,"ucol_getOffset%s",
                                                               &local_f8);
                                                    DAT_01c86fc0 = GetProcAddress(DAT_01c87104,
                                                                                  local_b0);
                                                    if (DAT_01c86fc0 == (FARPROC)0x0) {
                                                      DVar8 = GetLastError();
                                                      param_4 = local_b0;
                                                      pcVar7 = 
                                                  "Cannot get symbol %s from libicui18n\nError: %u\n"
                                                  ;
                                                  }
                                                  else {
                                                    _sprintf_s(local_b0,0xa5,"ucol_getRules%s",
                                                               &local_f8);
                                                    DAT_01c86fc4 = GetProcAddress(DAT_01c87104,
                                                                                  local_b0);
                                                    if (DAT_01c86fc4 == (FARPROC)0x0) {
                                                      DVar8 = GetLastError();
                                                      param_4 = local_b0;
                                                      pcVar7 = 
                                                  "Cannot get symbol %s from libicui18n\nError: %u\n"
                                                  ;
                                                  }
                                                  else {
                                                    _sprintf_s(local_b0,0xa5,"ucol_getSortKey%s",
                                                               &local_f8);
                                                    DAT_01c86fc8 = GetProcAddress(DAT_01c87104,
                                                                                  local_b0);
                                                    if (DAT_01c86fc8 == (FARPROC)0x0) {
                                                      DVar8 = GetLastError();
                                                      param_4 = local_b0;
                                                      pcVar7 = 
                                                  "Cannot get symbol %s from libicui18n\nError: %u\n"
                                                  ;
                                                  }
                                                  else {
                                                    _sprintf_s(local_b0,0xa5,"ucol_getStrength%s",
                                                               &local_f8);
                                                    DAT_01c86fcc = GetProcAddress(DAT_01c87104,
                                                                                  local_b0);
                                                    if (DAT_01c86fcc == (FARPROC)0x0) {
                                                      DVar8 = GetLastError();
                                                      param_4 = local_b0;
                                                      pcVar7 = 
                                                  "Cannot get symbol %s from libicui18n\nError: %u\n"
                                                  ;
                                                  }
                                                  else {
                                                    _sprintf_s(local_b0,0xa5,"ucol_getVersion%s",
                                                               &local_f8);
                                                    _DAT_01c86fd0 =
                                                         GetProcAddress(DAT_01c87104,local_b0);
                                                    if (_DAT_01c86fd0 == (FARPROC)0x0) {
                                                      DVar8 = GetLastError();
                                                      param_4 = local_b0;
                                                      pcVar7 = 
                                                  "Cannot get symbol %s from libicui18n\nError: %u\n"
                                                  ;
                                                  }
                                                  else {
                                                    _sprintf_s(local_b0,0xa5,"ucol_next%s",&local_f8
                                                              );
                                                    DAT_01c86fd4 = GetProcAddress(DAT_01c87104,
                                                                                  local_b0);
                                                    if (DAT_01c86fd4 == (FARPROC)0x0) {
                                                      DVar8 = GetLastError();
                                                      param_4 = local_b0;
                                                      pcVar7 = 
                                                  "Cannot get symbol %s from libicui18n\nError: %u\n"
                                                  ;
                                                  }
                                                  else {
                                                    _sprintf_s(local_b0,0xa5,"ucol_previous%s",
                                                               &local_f8);
                                                    DAT_01c86fd8 = GetProcAddress(DAT_01c87104,
                                                                                  local_b0);
                                                    if (DAT_01c86fd8 == (FARPROC)0x0) {
                                                      DVar8 = GetLastError();
                                                      param_4 = local_b0;
                                                      pcVar7 = 
                                                  "Cannot get symbol %s from libicui18n\nError: %u\n"
                                                  ;
                                                  }
                                                  else {
                                                    _sprintf_s(local_b0,0xa5,"ucol_open%s",&local_f8
                                                              );
                                                    DAT_01c86fdc = GetProcAddress(DAT_01c87104,
                                                                                  local_b0);
                                                    if (DAT_01c86fdc == (FARPROC)0x0) {
                                                      DVar8 = GetLastError();
                                                      param_4 = local_b0;
                                                      pcVar7 = 
                                                  "Cannot get symbol %s from libicui18n\nError: %u\n"
                                                  ;
                                                  }
                                                  else {
                                                    _sprintf_s(local_b0,0xa5,"ucol_openElements%s",
                                                               &local_f8);
                                                    DAT_01c86fe0 = GetProcAddress(DAT_01c87104,
                                                                                  local_b0);
                                                    if (DAT_01c86fe0 == (FARPROC)0x0) {
                                                      DVar8 = GetLastError();
                                                      param_4 = local_b0;
                                                      pcVar7 = 
                                                  "Cannot get symbol %s from libicui18n\nError: %u\n"
                                                  ;
                                                  }
                                                  else {
                                                    _sprintf_s(local_b0,0xa5,"ucol_openRules%s",
                                                               &local_f8);
                                                    DAT_01c86fe4 = GetProcAddress(DAT_01c87104,
                                                                                  local_b0);
                                                    if (DAT_01c86fe4 == (FARPROC)0x0) {
                                                      DVar8 = GetLastError();
                                                      param_4 = local_b0;
                                                      pcVar7 = 
                                                  "Cannot get symbol %s from libicui18n\nError: %u\n"
                                                  ;
                                                  }
                                                  else {
                                                    _sprintf_s(local_b0,0xa5,"ucol_setAttribute%s",
                                                               &local_f8);
                                                    DAT_01c86fe8 = GetProcAddress(DAT_01c87104,
                                                                                  local_b0);
                                                    if (DAT_01c86fe8 == (FARPROC)0x0) {
                                                      DVar8 = GetLastError();
                                                      param_4 = local_b0;
                                                      pcVar7 = 
                                                  "Cannot get symbol %s from libicui18n\nError: %u\n"
                                                  ;
                                                  }
                                                  else {
                                                    _sprintf_s(local_b0,0xa5,"ucol_setMaxVariable%s"
                                                               ,&local_f8);
                                                    DAT_01c86fec = GetProcAddress(DAT_01c87104,
                                                                                  local_b0);
                                                    if (DAT_01c86fec == (FARPROC)0x0) {
                                                      DVar8 = GetLastError();
                                                      param_4 = local_b0;
                                                      pcVar7 = 
                                                  "Cannot get symbol %s from libicui18n\nError: %u\n"
                                                  ;
                                                  }
                                                  else {
                                                    _sprintf_s(local_b0,0xa5,"ucol_strcoll%s",
                                                               &local_f8);
                                                    DAT_01c86ff0 = GetProcAddress(DAT_01c87104,
                                                                                  local_b0);
                                                    if (DAT_01c86ff0 == (FARPROC)0x0) {
                                                      DVar8 = GetLastError();
                                                      param_4 = local_b0;
                                                      pcVar7 = 
                                                  "Cannot get symbol %s from libicui18n\nError: %u\n"
                                                  ;
                                                  }
                                                  else {
                                                    _sprintf_s(local_b0,0xa5,"udat_close%s",
                                                               &local_f8);
                                                    DAT_01c86ff4 = GetProcAddress(DAT_01c87104,
                                                                                  local_b0);
                                                    if (DAT_01c86ff4 == (FARPROC)0x0) {
                                                      DVar8 = GetLastError();
                                                      param_4 = local_b0;
                                                      pcVar7 = 
                                                  "Cannot get symbol %s from libicui18n\nError: %u\n"
                                                  ;
                                                  }
                                                  else {
                                                    _sprintf_s(local_b0,0xa5,"udat_countSymbols%s",
                                                               &local_f8);
                                                    DAT_01c86ff8 = GetProcAddress(DAT_01c87104,
                                                                                  local_b0);
                                                    if (DAT_01c86ff8 == (FARPROC)0x0) {
                                                      DVar8 = GetLastError();
                                                      param_4 = local_b0;
                                                      pcVar7 = 
                                                  "Cannot get symbol %s from libicui18n\nError: %u\n"
                                                  ;
                                                  }
                                                  else {
                                                    _sprintf_s(local_b0,0xa5,"udat_format%s",
                                                               &local_f8);
                                                    _DAT_01c86ffc =
                                                         GetProcAddress(DAT_01c87104,local_b0);
                                                    if (_DAT_01c86ffc == (FARPROC)0x0) {
                                                      DVar8 = GetLastError();
                                                      param_4 = local_b0;
                                                      pcVar7 = 
                                                  "Cannot get symbol %s from libicui18n\nError: %u\n"
                                                  ;
                                                  }
                                                  else {
                                                    _sprintf_s(local_b0,0xa5,"udat_getSymbols%s",
                                                               &local_f8);
                                                    DAT_01c87000 = GetProcAddress(DAT_01c87104,
                                                                                  local_b0);
                                                    if (DAT_01c87000 == (FARPROC)0x0) {
                                                      DVar8 = GetLastError();
                                                      param_4 = local_b0;
                                                      pcVar7 = 
                                                  "Cannot get symbol %s from libicui18n\nError: %u\n"
                                                  ;
                                                  }
                                                  else {
                                                    _sprintf_s(local_b0,0xa5,"udat_open%s",&local_f8
                                                              );
                                                    DAT_01c87004 = GetProcAddress(DAT_01c87104,
                                                                                  local_b0);
                                                    if (DAT_01c87004 == (FARPROC)0x0) {
                                                      DVar8 = GetLastError();
                                                      param_4 = local_b0;
                                                      pcVar7 = 
                                                  "Cannot get symbol %s from libicui18n\nError: %u\n"
                                                  ;
                                                  }
                                                  else {
                                                    _sprintf_s(local_b0,0xa5,"udat_setCalendar%s",
                                                               &local_f8);
                                                    DAT_01c87008 = GetProcAddress(DAT_01c87104,
                                                                                  local_b0);
                                                    if (DAT_01c87008 == (FARPROC)0x0) {
                                                      DVar8 = GetLastError();
                                                      param_4 = local_b0;
                                                      pcVar7 = 
                                                  "Cannot get symbol %s from libicui18n\nError: %u\n"
                                                  ;
                                                  }
                                                  else {
                                                    _sprintf_s(local_b0,0xa5,"udat_toPattern%s",
                                                               &local_f8);
                                                    DAT_01c8700c = GetProcAddress(DAT_01c87104,
                                                                                  local_b0);
                                                    if (DAT_01c8700c == (FARPROC)0x0) {
                                                      DVar8 = GetLastError();
                                                      param_4 = local_b0;
                                                      pcVar7 = 
                                                  "Cannot get symbol %s from libicui18n\nError: %u\n"
                                                  ;
                                                  }
                                                  else {
                                                    _sprintf_s(local_b0,0xa5,"udatpg_close%s",
                                                               &local_f8);
                                                    DAT_01c87010 = GetProcAddress(DAT_01c87104,
                                                                                  local_b0);
                                                    if (DAT_01c87010 == (FARPROC)0x0) {
                                                      DVar8 = GetLastError();
                                                      param_4 = local_b0;
                                                      pcVar7 = 
                                                  "Cannot get symbol %s from libicui18n\nError: %u\n"
                                                  ;
                                                  }
                                                  else {
                                                    _sprintf_s(local_b0,0xa5,
                                                               "udatpg_getBestPattern%s",&local_f8);
                                                    DAT_01c87014 = GetProcAddress(DAT_01c87104,
                                                                                  local_b0);
                                                    if (DAT_01c87014 == (FARPROC)0x0) {
                                                      DVar8 = GetLastError();
                                                      param_4 = local_b0;
                                                      pcVar7 = 
                                                  "Cannot get symbol %s from libicui18n\nError: %u\n"
                                                  ;
                                                  }
                                                  else {
                                                    _sprintf_s(local_b0,0xa5,"udatpg_open%s",
                                                               &local_f8);
                                                    DAT_01c87018 = GetProcAddress(DAT_01c87104,
                                                                                  local_b0);
                                                    if (DAT_01c87018 == (FARPROC)0x0) {
                                                      DVar8 = GetLastError();
                                                      param_4 = local_b0;
                                                      pcVar7 = 
                                                  "Cannot get symbol %s from libicui18n\nError: %u\n"
                                                  ;
                                                  }
                                                  else {
                                                    _sprintf_s(local_b0,0xa5,"uenum_close%s",
                                                               &local_f8);
                                                    DAT_01c8701c = GetProcAddress(DAT_01c87100,
                                                                                  local_b0);
                                                    if (DAT_01c8701c == (FARPROC)0x0) {
                                                      DVar8 = GetLastError();
                                                      param_4 = local_b0;
                                                      pcVar7 = 
                                                  "Cannot get symbol %s from libicuuc\nError: %u\n";
                                                  }
                                                  else {
                                                    _sprintf_s(local_b0,0xa5,"uenum_count%s",
                                                               &local_f8);
                                                    DAT_01c87020 = GetProcAddress(DAT_01c87100,
                                                                                  local_b0);
                                                    if (DAT_01c87020 == (FARPROC)0x0) {
                                                      DVar8 = GetLastError();
                                                      param_4 = local_b0;
                                                      pcVar7 = 
                                                  "Cannot get symbol %s from libicuuc\nError: %u\n";
                                                  }
                                                  else {
                                                    _sprintf_s(local_b0,0xa5,"uenum_next%s",
                                                               &local_f8);
                                                    DAT_01c87024 = GetProcAddress(DAT_01c87100,
                                                                                  local_b0);
                                                    if (DAT_01c87024 == (FARPROC)0x0) {
                                                      DVar8 = GetLastError();
                                                      param_4 = local_b0;
                                                      pcVar7 = 
                                                  "Cannot get symbol %s from libicuuc\nError: %u\n";
                                                  }
                                                  else {
                                                    _sprintf_s(local_b0,0xa5,"uidna_close%s",
                                                               &local_f8);
                                                    DAT_01c87028 = GetProcAddress(DAT_01c87100,
                                                                                  local_b0);
                                                    if (DAT_01c87028 == (FARPROC)0x0) {
                                                      DVar8 = GetLastError();
                                                      param_4 = local_b0;
                                                      pcVar7 = 
                                                  "Cannot get symbol %s from libicuuc\nError: %u\n";
                                                  }
                                                  else {
                                                    _sprintf_s(local_b0,0xa5,"uidna_nameToASCII%s",
                                                               &local_f8);
                                                    DAT_01c8702c = GetProcAddress(DAT_01c87100,
                                                                                  local_b0);
                                                    if (DAT_01c8702c == (FARPROC)0x0) {
                                                      DVar8 = GetLastError();
                                                      param_4 = local_b0;
                                                      pcVar7 = 
                                                  "Cannot get symbol %s from libicuuc\nError: %u\n";
                                                  }
                                                  else {
                                                    _sprintf_s(local_b0,0xa5,"uidna_nameToUnicode%s"
                                                               ,&local_f8);
                                                    DAT_01c87030 = GetProcAddress(DAT_01c87100,
                                                                                  local_b0);
                                                    if (DAT_01c87030 == (FARPROC)0x0) {
                                                      DVar8 = GetLastError();
                                                      param_4 = local_b0;
                                                      pcVar7 = 
                                                  "Cannot get symbol %s from libicuuc\nError: %u\n";
                                                  }
                                                  else {
                                                    _sprintf_s(local_b0,0xa5,"uidna_openUTS46%s",
                                                               &local_f8);
                                                    DAT_01c87034 = GetProcAddress(DAT_01c87100,
                                                                                  local_b0);
                                                    if (DAT_01c87034 == (FARPROC)0x0) {
                                                      DVar8 = GetLastError();
                                                      param_4 = local_b0;
                                                      pcVar7 = 
                                                  "Cannot get symbol %s from libicuuc\nError: %u\n";
                                                  }
                                                  else {
                                                    _sprintf_s(local_b0,0xa5,"uloc_canonicalize%s",
                                                               &local_f8);
                                                    DAT_01c87038 = GetProcAddress(DAT_01c87100,
                                                                                  local_b0);
                                                    if (DAT_01c87038 == (FARPROC)0x0) {
                                                      DVar8 = GetLastError();
                                                      param_4 = local_b0;
                                                      pcVar7 = 
                                                  "Cannot get symbol %s from libicuuc\nError: %u\n";
                                                  }
                                                  else {
                                                    _sprintf_s(local_b0,0xa5,"uloc_countAvailable%s"
                                                               ,&local_f8);
                                                    DAT_01c8703c = GetProcAddress(DAT_01c87100,
                                                                                  local_b0);
                                                    if (DAT_01c8703c == (FARPROC)0x0) {
                                                      DVar8 = GetLastError();
                                                      param_4 = local_b0;
                                                      pcVar7 = 
                                                  "Cannot get symbol %s from libicuuc\nError: %u\n";
                                                  }
                                                  else {
                                                    _sprintf_s(local_b0,0xa5,"uloc_getAvailable%s",
                                                               &local_f8);
                                                    DAT_01c87040 = GetProcAddress(DAT_01c87100,
                                                                                  local_b0);
                                                    if (DAT_01c87040 == (FARPROC)0x0) {
                                                      DVar8 = GetLastError();
                                                      param_4 = local_b0;
                                                      pcVar7 = 
                                                  "Cannot get symbol %s from libicuuc\nError: %u\n";
                                                  }
                                                  else {
                                                    _sprintf_s(local_b0,0xa5,"uloc_getBaseName%s",
                                                               &local_f8);
                                                    _DAT_01c87044 =
                                                         GetProcAddress(DAT_01c87100,local_b0);
                                                    if (_DAT_01c87044 == (FARPROC)0x0) {
                                                      DVar8 = GetLastError();
                                                      param_4 = local_b0;
                                                      pcVar7 = 
                                                  "Cannot get symbol %s from libicuuc\nError: %u\n";
                                                  }
                                                  else {
                                                    _sprintf_s(local_b0,0xa5,
                                                               "uloc_getCharacterOrientation%s",
                                                               &local_f8);
                                                    DAT_01c87048 = GetProcAddress(DAT_01c87100,
                                                                                  local_b0);
                                                    if (DAT_01c87048 == (FARPROC)0x0) {
                                                      DVar8 = GetLastError();
                                                      param_4 = local_b0;
                                                      pcVar7 = 
                                                  "Cannot get symbol %s from libicuuc\nError: %u\n";
                                                  }
                                                  else {
                                                    _sprintf_s(local_b0,0xa5,"uloc_getCountry%s",
                                                               &local_f8);
                                                    DAT_01c8704c = GetProcAddress(DAT_01c87100,
                                                                                  local_b0);
                                                    if (DAT_01c8704c == (FARPROC)0x0) {
                                                      DVar8 = GetLastError();
                                                      param_4 = local_b0;
                                                      pcVar7 = 
                                                  "Cannot get symbol %s from libicuuc\nError: %u\n";
                                                  }
                                                  else {
                                                    _sprintf_s(local_b0,0xa5,"uloc_getDefault%s",
                                                               &local_f8);
                                                    _DAT_01c87050 =
                                                         GetProcAddress(DAT_01c87100,local_b0);
                                                    if (_DAT_01c87050 == (FARPROC)0x0) {
                                                      DVar8 = GetLastError();
                                                      param_4 = local_b0;
                                                      pcVar7 = 
                                                  "Cannot get symbol %s from libicuuc\nError: %u\n";
                                                  }
                                                  else {
                                                    _sprintf_s(local_b0,0xa5,
                                                               "uloc_getDisplayCountry%s",&local_f8)
                                                    ;
                                                    DAT_01c87054 = GetProcAddress(DAT_01c87100,
                                                                                  local_b0);
                                                    if (DAT_01c87054 == (FARPROC)0x0) {
                                                      DVar8 = GetLastError();
                                                      param_4 = local_b0;
                                                      pcVar7 = 
                                                  "Cannot get symbol %s from libicuuc\nError: %u\n";
                                                  }
                                                  else {
                                                    _sprintf_s(local_b0,0xa5,
                                                               "uloc_getDisplayLanguage%s",&local_f8
                                                              );
                                                    DAT_01c87058 = GetProcAddress(DAT_01c87100,
                                                                                  local_b0);
                                                    if (DAT_01c87058 == (FARPROC)0x0) {
                                                      DVar8 = GetLastError();
                                                      param_4 = local_b0;
                                                      pcVar7 = 
                                                  "Cannot get symbol %s from libicuuc\nError: %u\n";
                                                  }
                                                  else {
                                                    _sprintf_s(local_b0,0xa5,"uloc_getDisplayName%s"
                                                               ,&local_f8);
                                                    DAT_01c8705c = GetProcAddress(DAT_01c87100,
                                                                                  local_b0);
                                                    if (DAT_01c8705c == (FARPROC)0x0) {
                                                      DVar8 = GetLastError();
                                                      param_4 = local_b0;
                                                      pcVar7 = 
                                                  "Cannot get symbol %s from libicuuc\nError: %u\n";
                                                  }
                                                  else {
                                                    _sprintf_s(local_b0,0xa5,"uloc_getISO3Country%s"
                                                               ,&local_f8);
                                                    DAT_01c87060 = GetProcAddress(DAT_01c87100,
                                                                                  local_b0);
                                                    if (DAT_01c87060 == (FARPROC)0x0) {
                                                      DVar8 = GetLastError();
                                                      param_4 = local_b0;
                                                      pcVar7 = 
                                                  "Cannot get symbol %s from libicuuc\nError: %u\n";
                                                  }
                                                  else {
                                                    _sprintf_s(local_b0,0xa5,
                                                               "uloc_getISO3Language%s",&local_f8);
                                                    DAT_01c87064 = GetProcAddress(DAT_01c87100,
                                                                                  local_b0);
                                                    if (DAT_01c87064 == (FARPROC)0x0) {
                                                      DVar8 = GetLastError();
                                                      param_4 = local_b0;
                                                      pcVar7 = 
                                                  "Cannot get symbol %s from libicuuc\nError: %u\n";
                                                  }
                                                  else {
                                                    _sprintf_s(local_b0,0xa5,
                                                               "uloc_getKeywordValue%s",&local_f8);
                                                    _DAT_01c87068 =
                                                         GetProcAddress(DAT_01c87100,local_b0);
                                                    if (_DAT_01c87068 == (FARPROC)0x0) {
                                                      DVar8 = GetLastError();
                                                      param_4 = local_b0;
                                                      pcVar7 = 
                                                  "Cannot get symbol %s from libicuuc\nError: %u\n";
                                                  }
                                                  else {
                                                    _sprintf_s(local_b0,0xa5,"uloc_getLanguage%s",
                                                               &local_f8);
                                                    DAT_01c8706c = GetProcAddress(DAT_01c87100,
                                                                                  local_b0);
                                                    if (DAT_01c8706c == (FARPROC)0x0) {
                                                      DVar8 = GetLastError();
                                                      param_4 = local_b0;
                                                      pcVar7 = 
                                                  "Cannot get symbol %s from libicuuc\nError: %u\n";
                                                  }
                                                  else {
                                                    _sprintf_s(local_b0,0xa5,"uloc_getLCID%s",
                                                               &local_f8);
                                                    DAT_01c87070 = GetProcAddress(DAT_01c87100,
                                                                                  local_b0);
                                                    if (DAT_01c87070 == (FARPROC)0x0) {
                                                      DVar8 = GetLastError();
                                                      param_4 = local_b0;
                                                      pcVar7 = 
                                                  "Cannot get symbol %s from libicuuc\nError: %u\n";
                                                  }
                                                  else {
                                                    _sprintf_s(local_b0,0xa5,"uloc_getName%s",
                                                               &local_f8);
                                                    DAT_01c87074 = GetProcAddress(DAT_01c87100,
                                                                                  local_b0);
                                                    if (DAT_01c87074 == (FARPROC)0x0) {
                                                      DVar8 = GetLastError();
                                                      param_4 = local_b0;
                                                      pcVar7 = 
                                                  "Cannot get symbol %s from libicuuc\nError: %u\n";
                                                  }
                                                  else {
                                                    _sprintf_s(local_b0,0xa5,"uloc_getParent%s",
                                                               &local_f8);
                                                    DAT_01c87078 = GetProcAddress(DAT_01c87100,
                                                                                  local_b0);
                                                    if (DAT_01c87078 == (FARPROC)0x0) {
                                                      DVar8 = GetLastError();
                                                      param_4 = local_b0;
                                                      pcVar7 = 
                                                  "Cannot get symbol %s from libicuuc\nError: %u\n";
                                                  }
                                                  else {
                                                    _sprintf_s(local_b0,0xa5,
                                                               "uloc_setKeywordValue%s",&local_f8);
                                                    DAT_01c8707c = GetProcAddress(DAT_01c87100,
                                                                                  local_b0);
                                                    if (DAT_01c8707c == (FARPROC)0x0) {
                                                      DVar8 = GetLastError();
                                                      param_4 = local_b0;
                                                      pcVar7 = 
                                                  "Cannot get symbol %s from libicuuc\nError: %u\n";
                                                  }
                                                  else {
                                                    _sprintf_s(local_b0,0xa5,
                                                               "ulocdata_getCLDRVersion%s",&local_f8
                                                              );
                                                    DAT_01c87080 = GetProcAddress(DAT_01c87104,
                                                                                  local_b0);
                                                    if (DAT_01c87080 == (FARPROC)0x0) {
                                                      DVar8 = GetLastError();
                                                      param_4 = local_b0;
                                                      pcVar7 = 
                                                  "Cannot get symbol %s from libicui18n\nError: %u\n"
                                                  ;
                                                  }
                                                  else {
                                                    _sprintf_s(local_b0,0xa5,
                                                               "ulocdata_getMeasurementSystem%s",
                                                               &local_f8);
                                                    DAT_01c87084 = GetProcAddress(DAT_01c87104,
                                                                                  local_b0);
                                                    if (DAT_01c87084 == (FARPROC)0x0) {
                                                      DVar8 = GetLastError();
                                                      param_4 = local_b0;
                                                      pcVar7 = 
                                                  "Cannot get symbol %s from libicui18n\nError: %u\n"
                                                  ;
                                                  }
                                                  else {
                                                    _sprintf_s(local_b0,0xa5,
                                                               "unorm2_getNFCInstance%s",&local_f8);
                                                    DAT_01c87088 = GetProcAddress(DAT_01c87100,
                                                                                  local_b0);
                                                    if (DAT_01c87088 == (FARPROC)0x0) {
                                                      DVar8 = GetLastError();
                                                      param_4 = local_b0;
                                                      pcVar7 = 
                                                  "Cannot get symbol %s from libicuuc\nError: %u\n";
                                                  }
                                                  else {
                                                    _sprintf_s(local_b0,0xa5,
                                                               "unorm2_getNFDInstance%s",&local_f8);
                                                    DAT_01c8708c = GetProcAddress(DAT_01c87100,
                                                                                  local_b0);
                                                    if (DAT_01c8708c == (FARPROC)0x0) {
                                                      DVar8 = GetLastError();
                                                      param_4 = local_b0;
                                                      pcVar7 = 
                                                  "Cannot get symbol %s from libicuuc\nError: %u\n";
                                                  }
                                                  else {
                                                    _sprintf_s(local_b0,0xa5,
                                                               "unorm2_getNFKCInstance%s",&local_f8)
                                                    ;
                                                    DAT_01c87090 = GetProcAddress(DAT_01c87100,
                                                                                  local_b0);
                                                    if (DAT_01c87090 == (FARPROC)0x0) {
                                                      DVar8 = GetLastError();
                                                      param_4 = local_b0;
                                                      pcVar7 = 
                                                  "Cannot get symbol %s from libicuuc\nError: %u\n";
                                                  }
                                                  else {
                                                    _sprintf_s(local_b0,0xa5,
                                                               "unorm2_getNFKDInstance%s",&local_f8)
                                                    ;
                                                    DAT_01c87094 = GetProcAddress(DAT_01c87100,
                                                                                  local_b0);
                                                    if (DAT_01c87094 == (FARPROC)0x0) {
                                                      DVar8 = GetLastError();
                                                      param_4 = local_b0;
                                                      pcVar7 = 
                                                  "Cannot get symbol %s from libicuuc\nError: %u\n";
                                                  }
                                                  else {
                                                    _sprintf_s(local_b0,0xa5,"unorm2_isNormalized%s"
                                                               ,&local_f8);
                                                    _DAT_01c87098 =
                                                         GetProcAddress(DAT_01c87100,local_b0);
                                                    if (_DAT_01c87098 == (FARPROC)0x0) {
                                                      DVar8 = GetLastError();
                                                      param_4 = local_b0;
                                                      pcVar7 = 
                                                  "Cannot get symbol %s from libicuuc\nError: %u\n";
                                                  }
                                                  else {
                                                    _sprintf_s(local_b0,0xa5,"unorm2_normalize%s",
                                                               &local_f8);
                                                    DAT_01c8709c = GetProcAddress(DAT_01c87100,
                                                                                  local_b0);
                                                    if (DAT_01c8709c == (FARPROC)0x0) {
                                                      DVar8 = GetLastError();
                                                      param_4 = local_b0;
                                                      pcVar7 = 
                                                  "Cannot get symbol %s from libicuuc\nError: %u\n";
                                                  }
                                                  else {
                                                    _sprintf_s(local_b0,0xa5,"unum_close%s",
                                                               &local_f8);
                                                    DAT_01c870a0 = GetProcAddress(DAT_01c87104,
                                                                                  local_b0);
                                                    if (DAT_01c870a0 == (FARPROC)0x0) {
                                                      DVar8 = GetLastError();
                                                      param_4 = local_b0;
                                                      pcVar7 = 
                                                  "Cannot get symbol %s from libicui18n\nError: %u\n"
                                                  ;
                                                  }
                                                  else {
                                                    _sprintf_s(local_b0,0xa5,"unum_getAttribute%s",
                                                               &local_f8);
                                                    DAT_01c870a4 = GetProcAddress(DAT_01c87104,
                                                                                  local_b0);
                                                    if (DAT_01c870a4 == (FARPROC)0x0) {
                                                      DVar8 = GetLastError();
                                                      param_4 = local_b0;
                                                      pcVar7 = 
                                                  "Cannot get symbol %s from libicui18n\nError: %u\n"
                                                  ;
                                                  }
                                                  else {
                                                    _sprintf_s(local_b0,0xa5,"unum_getSymbol%s",
                                                               &local_f8);
                                                    DAT_01c870a8 = GetProcAddress(DAT_01c87104,
                                                                                  local_b0);
                                                    if (DAT_01c870a8 == (FARPROC)0x0) {
                                                      DVar8 = GetLastError();
                                                      param_4 = local_b0;
                                                      pcVar7 = 
                                                  "Cannot get symbol %s from libicui18n\nError: %u\n"
                                                  ;
                                                  }
                                                  else {
                                                    _sprintf_s(local_b0,0xa5,"unum_open%s",&local_f8
                                                              );
                                                    DAT_01c870ac = GetProcAddress(DAT_01c87104,
                                                                                  local_b0);
                                                    if (DAT_01c870ac == (FARPROC)0x0) {
                                                      DVar8 = GetLastError();
                                                      param_4 = local_b0;
                                                      pcVar7 = 
                                                  "Cannot get symbol %s from libicui18n\nError: %u\n"
                                                  ;
                                                  }
                                                  else {
                                                    _sprintf_s(local_b0,0xa5,"unum_toPattern%s",
                                                               &local_f8);
                                                    DAT_01c870b0 = GetProcAddress(DAT_01c87104,
                                                                                  local_b0);
                                                    if (DAT_01c870b0 == (FARPROC)0x0) {
                                                      DVar8 = GetLastError();
                                                      param_4 = local_b0;
                                                      pcVar7 = 
                                                  "Cannot get symbol %s from libicui18n\nError: %u\n"
                                                  ;
                                                  }
                                                  else {
                                                    _sprintf_s(local_b0,0xa5,"ures_close%s",
                                                               &local_f8);
                                                    DAT_01c870b4 = GetProcAddress(DAT_01c87100,
                                                                                  local_b0);
                                                    if (DAT_01c870b4 == (FARPROC)0x0) {
                                                      DVar8 = GetLastError();
                                                      param_4 = local_b0;
                                                      pcVar7 = 
                                                  "Cannot get symbol %s from libicuuc\nError: %u\n";
                                                  }
                                                  else {
                                                    _sprintf_s(local_b0,0xa5,"ures_getByKey%s",
                                                               &local_f8);
                                                    DAT_01c870b8 = GetProcAddress(DAT_01c87100,
                                                                                  local_b0);
                                                    if (DAT_01c870b8 == (FARPROC)0x0) {
                                                      DVar8 = GetLastError();
                                                      param_4 = local_b0;
                                                      pcVar7 = 
                                                  "Cannot get symbol %s from libicuuc\nError: %u\n";
                                                  }
                                                  else {
                                                    _sprintf_s(local_b0,0xa5,"ures_getSize%s",
                                                               &local_f8);
                                                    DAT_01c870bc = GetProcAddress(DAT_01c87100,
                                                                                  local_b0);
                                                    if (DAT_01c870bc == (FARPROC)0x0) {
                                                      DVar8 = GetLastError();
                                                      param_4 = local_b0;
                                                      pcVar7 = 
                                                  "Cannot get symbol %s from libicuuc\nError: %u\n";
                                                  }
                                                  else {
                                                    _sprintf_s(local_b0,0xa5,
                                                               "ures_getStringByIndex%s",&local_f8);
                                                    DAT_01c870c0 = GetProcAddress(DAT_01c87100,
                                                                                  local_b0);
                                                    if (DAT_01c870c0 == (FARPROC)0x0) {
                                                      DVar8 = GetLastError();
                                                      param_4 = local_b0;
                                                      pcVar7 = 
                                                  "Cannot get symbol %s from libicuuc\nError: %u\n";
                                                  }
                                                  else {
                                                    _sprintf_s(local_b0,0xa5,"ures_open%s",&local_f8
                                                              );
                                                    DAT_01c870c4 = GetProcAddress(DAT_01c87100,
                                                                                  local_b0);
                                                    if (DAT_01c870c4 == (FARPROC)0x0) {
                                                      DVar8 = GetLastError();
                                                      param_4 = local_b0;
                                                      pcVar7 = 
                                                  "Cannot get symbol %s from libicuuc\nError: %u\n";
                                                  }
                                                  else {
                                                    _sprintf_s(local_b0,0xa5,"usearch_close%s",
                                                               &local_f8);
                                                    DAT_01c870c8 = GetProcAddress(DAT_01c87104,
                                                                                  local_b0);
                                                    if (DAT_01c870c8 == (FARPROC)0x0) {
                                                      DVar8 = GetLastError();
                                                      param_4 = local_b0;
                                                      pcVar7 = 
                                                  "Cannot get symbol %s from libicui18n\nError: %u\n"
                                                  ;
                                                  }
                                                  else {
                                                    _sprintf_s(local_b0,0xa5,"usearch_first%s",
                                                               &local_f8);
                                                    DAT_01c870cc = GetProcAddress(DAT_01c87104,
                                                                                  local_b0);
                                                    if (DAT_01c870cc == (FARPROC)0x0) {
                                                      DVar8 = GetLastError();
                                                      param_4 = local_b0;
                                                      pcVar7 = 
                                                  "Cannot get symbol %s from libicui18n\nError: %u\n"
                                                  ;
                                                  }
                                                  else {
                                                    _sprintf_s(local_b0,0xa5,
                                                               "usearch_getBreakIterator%s",
                                                               &local_f8);
                                                    DAT_01c870d0 = GetProcAddress(DAT_01c87104,
                                                                                  local_b0);
                                                    if (DAT_01c870d0 == (FARPROC)0x0) {
                                                      DVar8 = GetLastError();
                                                      param_4 = local_b0;
                                                      pcVar7 = 
                                                  "Cannot get symbol %s from libicui18n\nError: %u\n"
                                                  ;
                                                  }
                                                  else {
                                                    _sprintf_s(local_b0,0xa5,
                                                               "usearch_getMatchedLength%s",
                                                               &local_f8);
                                                    DAT_01c870d4 = GetProcAddress(DAT_01c87104,
                                                                                  local_b0);
                                                    if (DAT_01c870d4 == (FARPROC)0x0) {
                                                      DVar8 = GetLastError();
                                                      param_4 = local_b0;
                                                      pcVar7 = 
                                                  "Cannot get symbol %s from libicui18n\nError: %u\n"
                                                  ;
                                                  }
                                                  else {
                                                    _sprintf_s(local_b0,0xa5,"usearch_last%s",
                                                               &local_f8);
                                                    DAT_01c870d8 = GetProcAddress(DAT_01c87104,
                                                                                  local_b0);
                                                    if (DAT_01c870d8 == (FARPROC)0x0) {
                                                      DVar8 = GetLastError();
                                                      param_4 = local_b0;
                                                      pcVar7 = 
                                                  "Cannot get symbol %s from libicui18n\nError: %u\n"
                                                  ;
                                                  }
                                                  else {
                                                    _sprintf_s(local_b0,0xa5,
                                                               "usearch_openFromCollator%s",
                                                               &local_f8);
                                                    DAT_01c870dc = GetProcAddress(DAT_01c87104,
                                                                                  local_b0);
                                                    if (DAT_01c870dc == (FARPROC)0x0) {
                                                      DVar8 = GetLastError();
                                                      param_4 = local_b0;
                                                      pcVar7 = 
                                                  "Cannot get symbol %s from libicui18n\nError: %u\n"
                                                  ;
                                                  }
                                                  else {
                                                    _sprintf_s(local_b0,0xa5,"usearch_setPattern%s",
                                                               &local_f8);
                                                    DAT_01c870e0 = GetProcAddress(DAT_01c87104,
                                                                                  local_b0);
                                                    if (DAT_01c870e0 == (FARPROC)0x0) {
                                                      DVar8 = GetLastError();
                                                      param_4 = local_b0;
                                                      pcVar7 = 
                                                  "Cannot get symbol %s from libicui18n\nError: %u\n"
                                                  ;
                                                  }
                                                  else {
                                                    _sprintf_s(local_b0,0xa5,"usearch_setText%s",
                                                               &local_f8);
                                                    DAT_01c870e4 = GetProcAddress(DAT_01c87104,
                                                                                  local_b0);
                                                    if (DAT_01c870e4 == (FARPROC)0x0) {
                                                      DVar8 = GetLastError();
                                                      param_4 = local_b0;
                                                      pcVar7 = 
                                                  "Cannot get symbol %s from libicui18n\nError: %u\n"
                                                  ;
                                                  }
                                                  else {
                                                    _sprintf_s(local_b0,0xa5,"ucol_clone%s",
                                                               &local_f8);
                                                    DAT_01c870e8 = GetProcAddress(DAT_01c87104,
                                                                                  local_b0);
                                                    _sprintf_s(local_b0,0xa5,"ucurr_forLocale%s",
                                                               &local_f8);
                                                    DAT_01c870ec = GetProcAddress(DAT_01c87100,
                                                                                  local_b0);
                                                    if (DAT_01c870ec == (FARPROC)0x0) {
                                                      DVar8 = GetLastError();
                                                      param_4 = local_b0;
                                                      pcVar7 = 
                                                  "Cannot get symbol %s from libicuuc\nError: %u\n";
                                                  }
                                                  else {
                                                    _sprintf_s(local_b0,0xa5,"ucurr_getName%s",
                                                               &local_f8);
                                                    DAT_01c870f0 = GetProcAddress(DAT_01c87100,
                                                                                  local_b0);
                                                    if (DAT_01c870f0 == (FARPROC)0x0) {
                                                      DVar8 = GetLastError();
                                                      param_4 = local_b0;
                                                      pcVar7 = 
                                                  "Cannot get symbol %s from libicuuc\nError: %u\n";
                                                  }
                                                  else {
                                                    _sprintf_s(local_b0,0xa5,"uldn_close%s",
                                                               &local_f8);
                                                    DAT_01c870f4 = GetProcAddress(DAT_01c87100,
                                                                                  local_b0);
                                                    if (DAT_01c870f4 == (FARPROC)0x0) {
                                                      DVar8 = GetLastError();
                                                      param_4 = local_b0;
                                                      pcVar7 = 
                                                  "Cannot get symbol %s from libicuuc\nError: %u\n";
                                                  }
                                                  else {
                                                    _sprintf_s(local_b0,0xa5,
                                                               "uldn_keyValueDisplayName%s",
                                                               &local_f8);
                                                    DAT_01c870f8 = GetProcAddress(DAT_01c87100,
                                                                                  local_b0);
                                                    if (DAT_01c870f8 == (FARPROC)0x0) {
                                                      DVar8 = GetLastError();
                                                      param_4 = local_b0;
                                                      pcVar7 = 
                                                  "Cannot get symbol %s from libicuuc\nError: %u\n";
                                                  }
                                                  else {
                                                    _sprintf_s(local_b0,0xa5,"uldn_open%s",&local_f8
                                                              );
                                                    DAT_01c870fc = GetProcAddress(DAT_01c87100,
                                                                                  local_b0);
                                                    if (DAT_01c870fc != (FARPROC)0x0) {
                                                      FUN_00ee8920();
                                                      FUN_00ee8890(&local_f8);
                                                      return;
                                                    }
                                                    DVar8 = GetLastError();
                                                    param_4 = local_b0;
                                                    pcVar7 = 
                                                  "Cannot get symbol %s from libicuuc\nError: %u\n";
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
  else {
    DVar8 = 0x21;
    pcVar7 = 
    "The resolved version \"%s\" from System.Globalization.AppLocalIcu switch has to be < %zu chars long.\n"
    ;
    param_4 = param_3;
  }
LAB_00eeaf00:
  pFVar6 = (FILE *)__acrt_iob_func(2,pcVar7,param_4,DVar8);
  _fprintf(pFVar6,in_stack_fffffeac);
LAB_00eeaf13:
                    /* WARNING: Subroutine does not return */
  abort();
}

