/* Address: 00eeaf40 | Ghidra name: FUN_00eeaf40 */

/* WARNING: Function: __security_check_cookie replaced with injection: security_check_cookie */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined4 FUN_00eeaf40(void)

{
  HMODULE pHVar1;
  DWORD DVar2;
  FILE *_File;
  char *_Format;
  char local_d4 [168];
  undefined1 local_2c;
  undefined4 local_2b;
  undefined4 uStack_27;
  undefined4 uStack_23;
  undefined4 uStack_1f;
  undefined4 local_1b;
  undefined4 uStack_17;
  undefined4 uStack_13;
  undefined4 uStack_f;
  undefined1 local_b;
  uint local_8;
  
  local_8 = DAT_01c56b40 ^ (uint)&stack0xfffffffc;
  local_2c = 0;
  local_2b = 0;
  uStack_27 = 0;
  uStack_23 = 0;
  uStack_1f = 0;
  local_b = 0;
  local_1b = 0;
  uStack_17 = 0;
  uStack_13 = 0;
  uStack_f = 0;
  DAT_01c87100 = LoadLibraryExW(L"icu.dll",(HANDLE)0x0,0x800);
  pHVar1 = DAT_01c87100;
  if ((DAT_01c87100 == (HMODULE)0x0) &&
     ((DAT_01c87100 = LoadLibraryExW(L"icuuc.dll",(HANDLE)0x0,0x800), DAT_01c87100 == (HMODULE)0x0
      || (DAT_01c87104 = LoadLibraryExW(L"icuin.dll",(HANDLE)0x0,0x800), pHVar1 = DAT_01c87104,
         DAT_01c87104 == (HMODULE)0x0)))) {
    return 0;
  }
  DAT_01c87104 = pHVar1;
  _sprintf_s(local_d4,0xa5,"u_charsToUChars%s",&local_2c);
  DAT_01c86f54 = GetProcAddress(DAT_01c87100,local_d4);
  if (DAT_01c86f54 != (FARPROC)0x0) {
    _sprintf_s(local_d4,0xa5,"u_getVersion%s",&local_2c);
    _DAT_01c86f58 = GetProcAddress(DAT_01c87100,local_d4);
    if (_DAT_01c86f58 != (FARPROC)0x0) {
      _sprintf_s(local_d4,0xa5,"u_strcmp%s",&local_2c);
      _DAT_01c86f5c = GetProcAddress(DAT_01c87100,local_d4);
      if (_DAT_01c86f5c != (FARPROC)0x0) {
        _sprintf_s(local_d4,0xa5,"u_strcpy%s",&local_2c);
        _DAT_01c86f60 = GetProcAddress(DAT_01c87100,local_d4);
        if (_DAT_01c86f60 != (FARPROC)0x0) {
          _sprintf_s(local_d4,0xa5,"u_strlen%s",&local_2c);
          DAT_01c86f64 = GetProcAddress(DAT_01c87100,local_d4);
          if (DAT_01c86f64 != (FARPROC)0x0) {
            _sprintf_s(local_d4,0xa5,"u_strncpy%s",&local_2c);
            DAT_01c86f68 = GetProcAddress(DAT_01c87100,local_d4);
            if (DAT_01c86f68 != (FARPROC)0x0) {
              _sprintf_s(local_d4,0xa5,"u_tolower%s",&local_2c);
              DAT_01c86f6c = GetProcAddress(DAT_01c87100,local_d4);
              if (DAT_01c86f6c != (FARPROC)0x0) {
                _sprintf_s(local_d4,0xa5,"u_toupper%s",&local_2c);
                DAT_01c86f70 = GetProcAddress(DAT_01c87100,local_d4);
                if (DAT_01c86f70 != (FARPROC)0x0) {
                  _sprintf_s(local_d4,0xa5,"u_uastrncpy%s",&local_2c);
                  DAT_01c86f74 = GetProcAddress(DAT_01c87100,local_d4);
                  if (DAT_01c86f74 != (FARPROC)0x0) {
                    _sprintf_s(local_d4,0xa5,"ubrk_close%s",&local_2c);
                    DAT_01c86f78 = GetProcAddress(DAT_01c87100,local_d4);
                    if (DAT_01c86f78 != (FARPROC)0x0) {
                      _sprintf_s(local_d4,0xa5,"ubrk_openRules%s",&local_2c);
                      DAT_01c86f7c = GetProcAddress(DAT_01c87100,local_d4);
                      if (DAT_01c86f7c != (FARPROC)0x0) {
                        _sprintf_s(local_d4,0xa5,"ucal_add%s",&local_2c);
                        DAT_01c86f80 = GetProcAddress(DAT_01c87104,local_d4);
                        if (DAT_01c86f80 == (FARPROC)0x0) {
                          DVar2 = GetLastError();
                          _Format = "Cannot get symbol %s from libicui18n\nError: %u\n";
                          goto LAB_00eecda6;
                        }
                        _sprintf_s(local_d4,0xa5,"ucal_close%s",&local_2c);
                        DAT_01c86f84 = GetProcAddress(DAT_01c87104,local_d4);
                        if (DAT_01c86f84 == (FARPROC)0x0) {
                          DVar2 = GetLastError();
                          _Format = "Cannot get symbol %s from libicui18n\nError: %u\n";
                          goto LAB_00eecda6;
                        }
                        _sprintf_s(local_d4,0xa5,"ucal_get%s",&local_2c);
                        DAT_01c86f88 = GetProcAddress(DAT_01c87104,local_d4);
                        if (DAT_01c86f88 == (FARPROC)0x0) {
                          DVar2 = GetLastError();
                          _Format = "Cannot get symbol %s from libicui18n\nError: %u\n";
                          goto LAB_00eecda6;
                        }
                        _sprintf_s(local_d4,0xa5,"ucal_getAttribute%s",&local_2c);
                        DAT_01c86f8c = GetProcAddress(DAT_01c87104,local_d4);
                        if (DAT_01c86f8c == (FARPROC)0x0) {
                          DVar2 = GetLastError();
                          _Format = "Cannot get symbol %s from libicui18n\nError: %u\n";
                          goto LAB_00eecda6;
                        }
                        _sprintf_s(local_d4,0xa5,"ucal_getKeywordValuesForLocale%s",&local_2c);
                        DAT_01c86f90 = GetProcAddress(DAT_01c87104,local_d4);
                        if (DAT_01c86f90 == (FARPROC)0x0) {
                          DVar2 = GetLastError();
                          _Format = "Cannot get symbol %s from libicui18n\nError: %u\n";
                          goto LAB_00eecda6;
                        }
                        _sprintf_s(local_d4,0xa5,"ucal_getLimit%s",&local_2c);
                        _DAT_01c86f94 = GetProcAddress(DAT_01c87104,local_d4);
                        if (_DAT_01c86f94 == (FARPROC)0x0) {
                          DVar2 = GetLastError();
                          _Format = "Cannot get symbol %s from libicui18n\nError: %u\n";
                          goto LAB_00eecda6;
                        }
                        _sprintf_s(local_d4,0xa5,"ucal_getNow%s",&local_2c);
                        _DAT_01c86f98 = GetProcAddress(DAT_01c87104,local_d4);
                        if (_DAT_01c86f98 == (FARPROC)0x0) {
                          DVar2 = GetLastError();
                          _Format = "Cannot get symbol %s from libicui18n\nError: %u\n";
                          goto LAB_00eecda6;
                        }
                        _sprintf_s(local_d4,0xa5,"ucal_getTimeZoneDisplayName%s",&local_2c);
                        _DAT_01c86f9c = GetProcAddress(DAT_01c87104,local_d4);
                        if (_DAT_01c86f9c == (FARPROC)0x0) {
                          DVar2 = GetLastError();
                          _Format = "Cannot get symbol %s from libicui18n\nError: %u\n";
                          goto LAB_00eecda6;
                        }
                        _sprintf_s(local_d4,0xa5,"ucal_getTimeZoneIDForWindowsID%s",&local_2c);
                        _DAT_01c86fa0 = GetProcAddress(DAT_01c87104,local_d4);
                        if (_DAT_01c86fa0 == (FARPROC)0x0) {
                          DVar2 = GetLastError();
                          _Format = "Cannot get symbol %s from libicui18n\nError: %u\n";
                          goto LAB_00eecda6;
                        }
                        _sprintf_s(local_d4,0xa5,"ucal_getWindowsTimeZoneID%s",&local_2c);
                        DAT_01c86fa4 = GetProcAddress(DAT_01c87104,local_d4);
                        if (DAT_01c86fa4 == (FARPROC)0x0) {
                          DVar2 = GetLastError();
                          _Format = "Cannot get symbol %s from libicui18n\nError: %u\n";
                          goto LAB_00eecda6;
                        }
                        _sprintf_s(local_d4,0xa5,"ucal_open%s",&local_2c);
                        DAT_01c86fa8 = GetProcAddress(DAT_01c87104,local_d4);
                        if (DAT_01c86fa8 == (FARPROC)0x0) {
                          DVar2 = GetLastError();
                          _Format = "Cannot get symbol %s from libicui18n\nError: %u\n";
                          goto LAB_00eecda6;
                        }
                        _sprintf_s(local_d4,0xa5,"ucal_openTimeZoneIDEnumeration%s",&local_2c);
                        _DAT_01c86fac = GetProcAddress(DAT_01c87104,local_d4);
                        if (_DAT_01c86fac == (FARPROC)0x0) {
                          DVar2 = GetLastError();
                          _Format = "Cannot get symbol %s from libicui18n\nError: %u\n";
                          goto LAB_00eecda6;
                        }
                        _sprintf_s(local_d4,0xa5,"ucal_set%s",&local_2c);
                        DAT_01c86fb0 = GetProcAddress(DAT_01c87104,local_d4);
                        if (DAT_01c86fb0 == (FARPROC)0x0) {
                          DVar2 = GetLastError();
                          _Format = "Cannot get symbol %s from libicui18n\nError: %u\n";
                          goto LAB_00eecda6;
                        }
                        _sprintf_s(local_d4,0xa5,"ucal_setMillis%s",&local_2c);
                        _DAT_01c86fb4 = GetProcAddress(DAT_01c87104,local_d4);
                        if (_DAT_01c86fb4 == (FARPROC)0x0) {
                          DVar2 = GetLastError();
                          _Format = "Cannot get symbol %s from libicui18n\nError: %u\n";
                          goto LAB_00eecda6;
                        }
                        _sprintf_s(local_d4,0xa5,"ucol_close%s",&local_2c);
                        DAT_01c86fb8 = GetProcAddress(DAT_01c87104,local_d4);
                        if (DAT_01c86fb8 == (FARPROC)0x0) {
                          DVar2 = GetLastError();
                          _Format = "Cannot get symbol %s from libicui18n\nError: %u\n";
                          goto LAB_00eecda6;
                        }
                        _sprintf_s(local_d4,0xa5,"ucol_closeElements%s",&local_2c);
                        DAT_01c86fbc = GetProcAddress(DAT_01c87104,local_d4);
                        if (DAT_01c86fbc == (FARPROC)0x0) {
                          DVar2 = GetLastError();
                          _Format = "Cannot get symbol %s from libicui18n\nError: %u\n";
                          goto LAB_00eecda6;
                        }
                        _sprintf_s(local_d4,0xa5,"ucol_getOffset%s",&local_2c);
                        DAT_01c86fc0 = GetProcAddress(DAT_01c87104,local_d4);
                        if (DAT_01c86fc0 == (FARPROC)0x0) {
                          DVar2 = GetLastError();
                          _Format = "Cannot get symbol %s from libicui18n\nError: %u\n";
                          goto LAB_00eecda6;
                        }
                        _sprintf_s(local_d4,0xa5,"ucol_getRules%s",&local_2c);
                        DAT_01c86fc4 = GetProcAddress(DAT_01c87104,local_d4);
                        if (DAT_01c86fc4 == (FARPROC)0x0) {
                          DVar2 = GetLastError();
                          _Format = "Cannot get symbol %s from libicui18n\nError: %u\n";
                          goto LAB_00eecda6;
                        }
                        _sprintf_s(local_d4,0xa5,"ucol_getSortKey%s",&local_2c);
                        DAT_01c86fc8 = GetProcAddress(DAT_01c87104,local_d4);
                        if (DAT_01c86fc8 == (FARPROC)0x0) {
                          DVar2 = GetLastError();
                          _Format = "Cannot get symbol %s from libicui18n\nError: %u\n";
                          goto LAB_00eecda6;
                        }
                        _sprintf_s(local_d4,0xa5,"ucol_getStrength%s",&local_2c);
                        DAT_01c86fcc = GetProcAddress(DAT_01c87104,local_d4);
                        if (DAT_01c86fcc == (FARPROC)0x0) {
                          DVar2 = GetLastError();
                          _Format = "Cannot get symbol %s from libicui18n\nError: %u\n";
                          goto LAB_00eecda6;
                        }
                        _sprintf_s(local_d4,0xa5,"ucol_getVersion%s",&local_2c);
                        _DAT_01c86fd0 = GetProcAddress(DAT_01c87104,local_d4);
                        if (_DAT_01c86fd0 == (FARPROC)0x0) {
                          DVar2 = GetLastError();
                          _Format = "Cannot get symbol %s from libicui18n\nError: %u\n";
                          goto LAB_00eecda6;
                        }
                        _sprintf_s(local_d4,0xa5,"ucol_next%s",&local_2c);
                        DAT_01c86fd4 = GetProcAddress(DAT_01c87104,local_d4);
                        if (DAT_01c86fd4 == (FARPROC)0x0) {
                          DVar2 = GetLastError();
                          _Format = "Cannot get symbol %s from libicui18n\nError: %u\n";
                          goto LAB_00eecda6;
                        }
                        _sprintf_s(local_d4,0xa5,"ucol_previous%s",&local_2c);
                        DAT_01c86fd8 = GetProcAddress(DAT_01c87104,local_d4);
                        if (DAT_01c86fd8 == (FARPROC)0x0) {
                          DVar2 = GetLastError();
                          _Format = "Cannot get symbol %s from libicui18n\nError: %u\n";
                          goto LAB_00eecda6;
                        }
                        _sprintf_s(local_d4,0xa5,"ucol_open%s",&local_2c);
                        DAT_01c86fdc = GetProcAddress(DAT_01c87104,local_d4);
                        if (DAT_01c86fdc == (FARPROC)0x0) {
                          DVar2 = GetLastError();
                          _Format = "Cannot get symbol %s from libicui18n\nError: %u\n";
                          goto LAB_00eecda6;
                        }
                        _sprintf_s(local_d4,0xa5,"ucol_openElements%s",&local_2c);
                        DAT_01c86fe0 = GetProcAddress(DAT_01c87104,local_d4);
                        if (DAT_01c86fe0 == (FARPROC)0x0) {
                          DVar2 = GetLastError();
                          _Format = "Cannot get symbol %s from libicui18n\nError: %u\n";
                          goto LAB_00eecda6;
                        }
                        _sprintf_s(local_d4,0xa5,"ucol_openRules%s",&local_2c);
                        DAT_01c86fe4 = GetProcAddress(DAT_01c87104,local_d4);
                        if (DAT_01c86fe4 == (FARPROC)0x0) {
                          DVar2 = GetLastError();
                          _Format = "Cannot get symbol %s from libicui18n\nError: %u\n";
                          goto LAB_00eecda6;
                        }
                        _sprintf_s(local_d4,0xa5,"ucol_setAttribute%s",&local_2c);
                        DAT_01c86fe8 = GetProcAddress(DAT_01c87104,local_d4);
                        if (DAT_01c86fe8 == (FARPROC)0x0) {
                          DVar2 = GetLastError();
                          _Format = "Cannot get symbol %s from libicui18n\nError: %u\n";
                          goto LAB_00eecda6;
                        }
                        _sprintf_s(local_d4,0xa5,"ucol_setMaxVariable%s",&local_2c);
                        DAT_01c86fec = GetProcAddress(DAT_01c87104,local_d4);
                        if (DAT_01c86fec == (FARPROC)0x0) {
                          DVar2 = GetLastError();
                          _Format = "Cannot get symbol %s from libicui18n\nError: %u\n";
                          goto LAB_00eecda6;
                        }
                        _sprintf_s(local_d4,0xa5,"ucol_strcoll%s",&local_2c);
                        DAT_01c86ff0 = GetProcAddress(DAT_01c87104,local_d4);
                        if (DAT_01c86ff0 == (FARPROC)0x0) {
                          DVar2 = GetLastError();
                          _Format = "Cannot get symbol %s from libicui18n\nError: %u\n";
                          goto LAB_00eecda6;
                        }
                        _sprintf_s(local_d4,0xa5,"udat_close%s",&local_2c);
                        DAT_01c86ff4 = GetProcAddress(DAT_01c87104,local_d4);
                        if (DAT_01c86ff4 == (FARPROC)0x0) {
                          DVar2 = GetLastError();
                          _Format = "Cannot get symbol %s from libicui18n\nError: %u\n";
                          goto LAB_00eecda6;
                        }
                        _sprintf_s(local_d4,0xa5,"udat_countSymbols%s",&local_2c);
                        DAT_01c86ff8 = GetProcAddress(DAT_01c87104,local_d4);
                        if (DAT_01c86ff8 == (FARPROC)0x0) {
                          DVar2 = GetLastError();
                          _Format = "Cannot get symbol %s from libicui18n\nError: %u\n";
                          goto LAB_00eecda6;
                        }
                        _sprintf_s(local_d4,0xa5,"udat_format%s",&local_2c);
                        _DAT_01c86ffc = GetProcAddress(DAT_01c87104,local_d4);
                        if (_DAT_01c86ffc == (FARPROC)0x0) {
                          DVar2 = GetLastError();
                          _Format = "Cannot get symbol %s from libicui18n\nError: %u\n";
                          goto LAB_00eecda6;
                        }
                        _sprintf_s(local_d4,0xa5,"udat_getSymbols%s",&local_2c);
                        DAT_01c87000 = GetProcAddress(DAT_01c87104,local_d4);
                        if (DAT_01c87000 == (FARPROC)0x0) {
                          DVar2 = GetLastError();
                          _Format = "Cannot get symbol %s from libicui18n\nError: %u\n";
                          goto LAB_00eecda6;
                        }
                        _sprintf_s(local_d4,0xa5,"udat_open%s",&local_2c);
                        DAT_01c87004 = GetProcAddress(DAT_01c87104,local_d4);
                        if (DAT_01c87004 == (FARPROC)0x0) {
                          DVar2 = GetLastError();
                          _Format = "Cannot get symbol %s from libicui18n\nError: %u\n";
                          goto LAB_00eecda6;
                        }
                        _sprintf_s(local_d4,0xa5,"udat_setCalendar%s",&local_2c);
                        DAT_01c87008 = GetProcAddress(DAT_01c87104,local_d4);
                        if (DAT_01c87008 == (FARPROC)0x0) {
                          DVar2 = GetLastError();
                          _Format = "Cannot get symbol %s from libicui18n\nError: %u\n";
                          goto LAB_00eecda6;
                        }
                        _sprintf_s(local_d4,0xa5,"udat_toPattern%s",&local_2c);
                        DAT_01c8700c = GetProcAddress(DAT_01c87104,local_d4);
                        if (DAT_01c8700c == (FARPROC)0x0) {
                          DVar2 = GetLastError();
                          _Format = "Cannot get symbol %s from libicui18n\nError: %u\n";
                          goto LAB_00eecda6;
                        }
                        _sprintf_s(local_d4,0xa5,"udatpg_close%s",&local_2c);
                        DAT_01c87010 = GetProcAddress(DAT_01c87104,local_d4);
                        if (DAT_01c87010 == (FARPROC)0x0) {
                          DVar2 = GetLastError();
                          _Format = "Cannot get symbol %s from libicui18n\nError: %u\n";
                          goto LAB_00eecda6;
                        }
                        _sprintf_s(local_d4,0xa5,"udatpg_getBestPattern%s",&local_2c);
                        DAT_01c87014 = GetProcAddress(DAT_01c87104,local_d4);
                        if (DAT_01c87014 == (FARPROC)0x0) {
                          DVar2 = GetLastError();
                          _Format = "Cannot get symbol %s from libicui18n\nError: %u\n";
                          goto LAB_00eecda6;
                        }
                        _sprintf_s(local_d4,0xa5,"udatpg_open%s",&local_2c);
                        DAT_01c87018 = GetProcAddress(DAT_01c87104,local_d4);
                        if (DAT_01c87018 == (FARPROC)0x0) {
                          DVar2 = GetLastError();
                          _Format = "Cannot get symbol %s from libicui18n\nError: %u\n";
                          goto LAB_00eecda6;
                        }
                        _sprintf_s(local_d4,0xa5,"uenum_close%s",&local_2c);
                        DAT_01c8701c = GetProcAddress(DAT_01c87100,local_d4);
                        if (DAT_01c8701c != (FARPROC)0x0) {
                          _sprintf_s(local_d4,0xa5,"uenum_count%s",&local_2c);
                          DAT_01c87020 = GetProcAddress(DAT_01c87100,local_d4);
                          if (DAT_01c87020 != (FARPROC)0x0) {
                            _sprintf_s(local_d4,0xa5,"uenum_next%s",&local_2c);
                            DAT_01c87024 = GetProcAddress(DAT_01c87100,local_d4);
                            if (DAT_01c87024 != (FARPROC)0x0) {
                              _sprintf_s(local_d4,0xa5,"uidna_close%s",&local_2c);
                              DAT_01c87028 = GetProcAddress(DAT_01c87100,local_d4);
                              if (DAT_01c87028 != (FARPROC)0x0) {
                                _sprintf_s(local_d4,0xa5,"uidna_nameToASCII%s",&local_2c);
                                DAT_01c8702c = GetProcAddress(DAT_01c87100,local_d4);
                                if (DAT_01c8702c != (FARPROC)0x0) {
                                  _sprintf_s(local_d4,0xa5,"uidna_nameToUnicode%s",&local_2c);
                                  DAT_01c87030 = GetProcAddress(DAT_01c87100,local_d4);
                                  if (DAT_01c87030 != (FARPROC)0x0) {
                                    _sprintf_s(local_d4,0xa5,"uidna_openUTS46%s",&local_2c);
                                    DAT_01c87034 = GetProcAddress(DAT_01c87100,local_d4);
                                    if (DAT_01c87034 != (FARPROC)0x0) {
                                      _sprintf_s(local_d4,0xa5,"uloc_canonicalize%s",&local_2c);
                                      DAT_01c87038 = GetProcAddress(DAT_01c87100,local_d4);
                                      if (DAT_01c87038 != (FARPROC)0x0) {
                                        _sprintf_s(local_d4,0xa5,"uloc_countAvailable%s",&local_2c);
                                        DAT_01c8703c = GetProcAddress(DAT_01c87100,local_d4);
                                        if (DAT_01c8703c != (FARPROC)0x0) {
                                          _sprintf_s(local_d4,0xa5,"uloc_getAvailable%s",&local_2c);
                                          DAT_01c87040 = GetProcAddress(DAT_01c87100,local_d4);
                                          if (DAT_01c87040 != (FARPROC)0x0) {
                                            _sprintf_s(local_d4,0xa5,"uloc_getBaseName%s",&local_2c)
                                            ;
                                            _DAT_01c87044 = GetProcAddress(DAT_01c87100,local_d4);
                                            if (_DAT_01c87044 != (FARPROC)0x0) {
                                              _sprintf_s(local_d4,0xa5,
                                                         "uloc_getCharacterOrientation%s",&local_2c)
                                              ;
                                              DAT_01c87048 = GetProcAddress(DAT_01c87100,local_d4);
                                              if (DAT_01c87048 != (FARPROC)0x0) {
                                                _sprintf_s(local_d4,0xa5,"uloc_getCountry%s",
                                                           &local_2c);
                                                DAT_01c8704c = GetProcAddress(DAT_01c87100,local_d4)
                                                ;
                                                if (DAT_01c8704c != (FARPROC)0x0) {
                                                  _sprintf_s(local_d4,0xa5,"uloc_getDefault%s",
                                                             &local_2c);
                                                  _DAT_01c87050 =
                                                       GetProcAddress(DAT_01c87100,local_d4);
                                                  if (_DAT_01c87050 != (FARPROC)0x0) {
                                                    _sprintf_s(local_d4,0xa5,
                                                               "uloc_getDisplayCountry%s",&local_2c)
                                                    ;
                                                    DAT_01c87054 = GetProcAddress(DAT_01c87100,
                                                                                  local_d4);
                                                    if (DAT_01c87054 != (FARPROC)0x0) {
                                                      _sprintf_s(local_d4,0xa5,
                                                                 "uloc_getDisplayLanguage%s",
                                                                 &local_2c);
                                                      DAT_01c87058 = GetProcAddress(DAT_01c87100,
                                                                                    local_d4);
                                                      if (DAT_01c87058 != (FARPROC)0x0) {
                                                        _sprintf_s(local_d4,0xa5,
                                                                   "uloc_getDisplayName%s",&local_2c
                                                                  );
                                                        DAT_01c8705c = GetProcAddress(DAT_01c87100,
                                                                                      local_d4);
                                                        if (DAT_01c8705c != (FARPROC)0x0) {
                                                          _sprintf_s(local_d4,0xa5,
                                                                     "uloc_getISO3Country%s",
                                                                     &local_2c);
                                                          DAT_01c87060 = GetProcAddress(DAT_01c87100
                                                                                        ,local_d4);
                                                          if (DAT_01c87060 != (FARPROC)0x0) {
                                                            _sprintf_s(local_d4,0xa5,
                                                                       "uloc_getISO3Language%s",
                                                                       &local_2c);
                                                            DAT_01c87064 = GetProcAddress(
                                                  DAT_01c87100,local_d4);
                                                  if (DAT_01c87064 != (FARPROC)0x0) {
                                                    _sprintf_s(local_d4,0xa5,
                                                               "uloc_getKeywordValue%s",&local_2c);
                                                    _DAT_01c87068 =
                                                         GetProcAddress(DAT_01c87100,local_d4);
                                                    if (_DAT_01c87068 != (FARPROC)0x0) {
                                                      _sprintf_s(local_d4,0xa5,"uloc_getLanguage%s",
                                                                 &local_2c);
                                                      DAT_01c8706c = GetProcAddress(DAT_01c87100,
                                                                                    local_d4);
                                                      if (DAT_01c8706c != (FARPROC)0x0) {
                                                        _sprintf_s(local_d4,0xa5,"uloc_getLCID%s",
                                                                   &local_2c);
                                                        DAT_01c87070 = GetProcAddress(DAT_01c87100,
                                                                                      local_d4);
                                                        if (DAT_01c87070 != (FARPROC)0x0) {
                                                          _sprintf_s(local_d4,0xa5,"uloc_getName%s",
                                                                     &local_2c);
                                                          DAT_01c87074 = GetProcAddress(DAT_01c87100
                                                                                        ,local_d4);
                                                          if (DAT_01c87074 != (FARPROC)0x0) {
                                                            _sprintf_s(local_d4,0xa5,
                                                                       "uloc_getParent%s",&local_2c)
                                                            ;
                                                            DAT_01c87078 = GetProcAddress(
                                                  DAT_01c87100,local_d4);
                                                  if (DAT_01c87078 != (FARPROC)0x0) {
                                                    _sprintf_s(local_d4,0xa5,
                                                               "uloc_setKeywordValue%s",&local_2c);
                                                    DAT_01c8707c = GetProcAddress(DAT_01c87100,
                                                                                  local_d4);
                                                    if (DAT_01c8707c != (FARPROC)0x0) {
                                                      _sprintf_s(local_d4,0xa5,
                                                                 "ulocdata_getCLDRVersion%s",
                                                                 &local_2c);
                                                      DAT_01c87080 = GetProcAddress(DAT_01c87104,
                                                                                    local_d4);
                                                      if (DAT_01c87080 == (FARPROC)0x0) {
                                                        DVar2 = GetLastError();
                                                        _Format = 
                                                  "Cannot get symbol %s from libicui18n\nError: %u\n"
                                                  ;
                                                  goto LAB_00eecda6;
                                                  }
                                                  _sprintf_s(local_d4,0xa5,
                                                             "ulocdata_getMeasurementSystem%s",
                                                             &local_2c);
                                                  DAT_01c87084 = GetProcAddress(DAT_01c87104,
                                                                                local_d4);
                                                  if (DAT_01c87084 == (FARPROC)0x0) {
                                                    DVar2 = GetLastError();
                                                    _Format = 
                                                  "Cannot get symbol %s from libicui18n\nError: %u\n"
                                                  ;
                                                  goto LAB_00eecda6;
                                                  }
                                                  _sprintf_s(local_d4,0xa5,"unorm2_getNFCInstance%s"
                                                             ,&local_2c);
                                                  DAT_01c87088 = GetProcAddress(DAT_01c87100,
                                                                                local_d4);
                                                  if (DAT_01c87088 != (FARPROC)0x0) {
                                                    _sprintf_s(local_d4,0xa5,
                                                               "unorm2_getNFDInstance%s",&local_2c);
                                                    DAT_01c8708c = GetProcAddress(DAT_01c87100,
                                                                                  local_d4);
                                                    if (DAT_01c8708c != (FARPROC)0x0) {
                                                      _sprintf_s(local_d4,0xa5,
                                                                 "unorm2_getNFKCInstance%s",
                                                                 &local_2c);
                                                      DAT_01c87090 = GetProcAddress(DAT_01c87100,
                                                                                    local_d4);
                                                      if (DAT_01c87090 != (FARPROC)0x0) {
                                                        _sprintf_s(local_d4,0xa5,
                                                                   "unorm2_getNFKDInstance%s",
                                                                   &local_2c);
                                                        DAT_01c87094 = GetProcAddress(DAT_01c87100,
                                                                                      local_d4);
                                                        if (DAT_01c87094 != (FARPROC)0x0) {
                                                          _sprintf_s(local_d4,0xa5,
                                                                     "unorm2_isNormalized%s",
                                                                     &local_2c);
                                                          _DAT_01c87098 =
                                                               GetProcAddress(DAT_01c87100,local_d4)
                                                          ;
                                                          if (_DAT_01c87098 != (FARPROC)0x0) {
                                                            _sprintf_s(local_d4,0xa5,
                                                                       "unorm2_normalize%s",
                                                                       &local_2c);
                                                            DAT_01c8709c = GetProcAddress(
                                                  DAT_01c87100,local_d4);
                                                  if (DAT_01c8709c != (FARPROC)0x0) {
                                                    _sprintf_s(local_d4,0xa5,"unum_close%s",
                                                               &local_2c);
                                                    DAT_01c870a0 = GetProcAddress(DAT_01c87104,
                                                                                  local_d4);
                                                    if (DAT_01c870a0 == (FARPROC)0x0) {
                                                      DVar2 = GetLastError();
                                                      _Format = 
                                                  "Cannot get symbol %s from libicui18n\nError: %u\n"
                                                  ;
                                                  goto LAB_00eecda6;
                                                  }
                                                  _sprintf_s(local_d4,0xa5,"unum_getAttribute%s",
                                                             &local_2c);
                                                  DAT_01c870a4 = GetProcAddress(DAT_01c87104,
                                                                                local_d4);
                                                  if (DAT_01c870a4 == (FARPROC)0x0) {
                                                    DVar2 = GetLastError();
                                                    _Format = 
                                                  "Cannot get symbol %s from libicui18n\nError: %u\n"
                                                  ;
                                                  goto LAB_00eecda6;
                                                  }
                                                  _sprintf_s(local_d4,0xa5,"unum_getSymbol%s",
                                                             &local_2c);
                                                  DAT_01c870a8 = GetProcAddress(DAT_01c87104,
                                                                                local_d4);
                                                  if (DAT_01c870a8 == (FARPROC)0x0) {
                                                    DVar2 = GetLastError();
                                                    _Format = 
                                                  "Cannot get symbol %s from libicui18n\nError: %u\n"
                                                  ;
                                                  goto LAB_00eecda6;
                                                  }
                                                  _sprintf_s(local_d4,0xa5,"unum_open%s",&local_2c);
                                                  DAT_01c870ac = GetProcAddress(DAT_01c87104,
                                                                                local_d4);
                                                  if (DAT_01c870ac == (FARPROC)0x0) {
                                                    DVar2 = GetLastError();
                                                    _Format = 
                                                  "Cannot get symbol %s from libicui18n\nError: %u\n"
                                                  ;
                                                  goto LAB_00eecda6;
                                                  }
                                                  _sprintf_s(local_d4,0xa5,"unum_toPattern%s",
                                                             &local_2c);
                                                  DAT_01c870b0 = GetProcAddress(DAT_01c87104,
                                                                                local_d4);
                                                  if (DAT_01c870b0 == (FARPROC)0x0) {
                                                    DVar2 = GetLastError();
                                                    _Format = 
                                                  "Cannot get symbol %s from libicui18n\nError: %u\n"
                                                  ;
                                                  goto LAB_00eecda6;
                                                  }
                                                  _sprintf_s(local_d4,0xa5,"ures_close%s",&local_2c)
                                                  ;
                                                  DAT_01c870b4 = GetProcAddress(DAT_01c87100,
                                                                                local_d4);
                                                  if (DAT_01c870b4 != (FARPROC)0x0) {
                                                    _sprintf_s(local_d4,0xa5,"ures_getByKey%s",
                                                               &local_2c);
                                                    DAT_01c870b8 = GetProcAddress(DAT_01c87100,
                                                                                  local_d4);
                                                    if (DAT_01c870b8 != (FARPROC)0x0) {
                                                      _sprintf_s(local_d4,0xa5,"ures_getSize%s",
                                                                 &local_2c);
                                                      DAT_01c870bc = GetProcAddress(DAT_01c87100,
                                                                                    local_d4);
                                                      if (DAT_01c870bc != (FARPROC)0x0) {
                                                        _sprintf_s(local_d4,0xa5,
                                                                   "ures_getStringByIndex%s",
                                                                   &local_2c);
                                                        DAT_01c870c0 = GetProcAddress(DAT_01c87100,
                                                                                      local_d4);
                                                        if (DAT_01c870c0 != (FARPROC)0x0) {
                                                          _sprintf_s(local_d4,0xa5,"ures_open%s",
                                                                     &local_2c);
                                                          DAT_01c870c4 = GetProcAddress(DAT_01c87100
                                                                                        ,local_d4);
                                                          if (DAT_01c870c4 != (FARPROC)0x0) {
                                                            _sprintf_s(local_d4,0xa5,
                                                                       "usearch_close%s",&local_2c);
                                                            DAT_01c870c8 = GetProcAddress(
                                                  DAT_01c87104,local_d4);
                                                  if (DAT_01c870c8 == (FARPROC)0x0) {
                                                    DVar2 = GetLastError();
                                                    _Format = 
                                                  "Cannot get symbol %s from libicui18n\nError: %u\n"
                                                  ;
                                                  goto LAB_00eecda6;
                                                  }
                                                  _sprintf_s(local_d4,0xa5,"usearch_first%s",
                                                             &local_2c);
                                                  DAT_01c870cc = GetProcAddress(DAT_01c87104,
                                                                                local_d4);
                                                  if (DAT_01c870cc == (FARPROC)0x0) {
                                                    DVar2 = GetLastError();
                                                    _Format = 
                                                  "Cannot get symbol %s from libicui18n\nError: %u\n"
                                                  ;
                                                  goto LAB_00eecda6;
                                                  }
                                                  _sprintf_s(local_d4,0xa5,
                                                             "usearch_getBreakIterator%s",&local_2c)
                                                  ;
                                                  DAT_01c870d0 = GetProcAddress(DAT_01c87104,
                                                                                local_d4);
                                                  if (DAT_01c870d0 == (FARPROC)0x0) {
                                                    DVar2 = GetLastError();
                                                    _Format = 
                                                  "Cannot get symbol %s from libicui18n\nError: %u\n"
                                                  ;
                                                  goto LAB_00eecda6;
                                                  }
                                                  _sprintf_s(local_d4,0xa5,
                                                             "usearch_getMatchedLength%s",&local_2c)
                                                  ;
                                                  DAT_01c870d4 = GetProcAddress(DAT_01c87104,
                                                                                local_d4);
                                                  if (DAT_01c870d4 == (FARPROC)0x0) {
                                                    DVar2 = GetLastError();
                                                    _Format = 
                                                  "Cannot get symbol %s from libicui18n\nError: %u\n"
                                                  ;
                                                  goto LAB_00eecda6;
                                                  }
                                                  _sprintf_s(local_d4,0xa5,"usearch_last%s",
                                                             &local_2c);
                                                  DAT_01c870d8 = GetProcAddress(DAT_01c87104,
                                                                                local_d4);
                                                  if (DAT_01c870d8 == (FARPROC)0x0) {
                                                    DVar2 = GetLastError();
                                                    _Format = 
                                                  "Cannot get symbol %s from libicui18n\nError: %u\n"
                                                  ;
                                                  goto LAB_00eecda6;
                                                  }
                                                  _sprintf_s(local_d4,0xa5,
                                                             "usearch_openFromCollator%s",&local_2c)
                                                  ;
                                                  DAT_01c870dc = GetProcAddress(DAT_01c87104,
                                                                                local_d4);
                                                  if (DAT_01c870dc == (FARPROC)0x0) {
                                                    DVar2 = GetLastError();
                                                    _Format = 
                                                  "Cannot get symbol %s from libicui18n\nError: %u\n"
                                                  ;
                                                  goto LAB_00eecda6;
                                                  }
                                                  _sprintf_s(local_d4,0xa5,"usearch_setPattern%s",
                                                             &local_2c);
                                                  DAT_01c870e0 = GetProcAddress(DAT_01c87104,
                                                                                local_d4);
                                                  if (DAT_01c870e0 == (FARPROC)0x0) {
                                                    DVar2 = GetLastError();
                                                    _Format = 
                                                  "Cannot get symbol %s from libicui18n\nError: %u\n"
                                                  ;
                                                  goto LAB_00eecda6;
                                                  }
                                                  _sprintf_s(local_d4,0xa5,"usearch_setText%s",
                                                             &local_2c);
                                                  DAT_01c870e4 = GetProcAddress(DAT_01c87104,
                                                                                local_d4);
                                                  if (DAT_01c870e4 == (FARPROC)0x0) {
                                                    DVar2 = GetLastError();
                                                    _Format = 
                                                  "Cannot get symbol %s from libicui18n\nError: %u\n"
                                                  ;
                                                  goto LAB_00eecda6;
                                                  }
                                                  _sprintf_s(local_d4,0xa5,"ucol_clone%s",&local_2c)
                                                  ;
                                                  DAT_01c870e8 = GetProcAddress(DAT_01c87104,
                                                                                local_d4);
                                                  _sprintf_s(local_d4,0xa5,"ucurr_forLocale%s",
                                                             &local_2c);
                                                  DAT_01c870ec = GetProcAddress(DAT_01c87100,
                                                                                local_d4);
                                                  if (DAT_01c870ec != (FARPROC)0x0) {
                                                    _sprintf_s(local_d4,0xa5,"ucurr_getName%s",
                                                               &local_2c);
                                                    DAT_01c870f0 = GetProcAddress(DAT_01c87100,
                                                                                  local_d4);
                                                    if (DAT_01c870f0 != (FARPROC)0x0) {
                                                      _sprintf_s(local_d4,0xa5,"uldn_close%s",
                                                                 &local_2c);
                                                      DAT_01c870f4 = GetProcAddress(DAT_01c87100,
                                                                                    local_d4);
                                                      if (DAT_01c870f4 != (FARPROC)0x0) {
                                                        _sprintf_s(local_d4,0xa5,
                                                                   "uldn_keyValueDisplayName%s",
                                                                   &local_2c);
                                                        DAT_01c870f8 = GetProcAddress(DAT_01c87100,
                                                                                      local_d4);
                                                        if (DAT_01c870f8 != (FARPROC)0x0) {
                                                          _sprintf_s(local_d4,0xa5,"uldn_open%s",
                                                                     &local_2c);
                                                          DAT_01c870fc = GetProcAddress(DAT_01c87100
                                                                                        ,local_d4);
                                                          if (DAT_01c870fc != (FARPROC)0x0) {
                                                            FUN_00ee8920();
                                                            FUN_00ee8890(&local_2c);
                                                            return 1;
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
  DVar2 = GetLastError();
  _Format = "Cannot get symbol %s from libicuuc\nError: %u\n";
LAB_00eecda6:
  _File = (FILE *)__acrt_iob_func(2,_Format,local_d4,DVar2);
  _fprintf(_File,_Format);
                    /* WARNING: Subroutine does not return */
  abort();
}

