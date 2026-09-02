/* Address: 0099fbf0 | Ghidra name: FUN_0099fbf0 */

int __fastcall
FUN_0099fbf0(undefined4 param_1,int param_2,char param_3,char param_4,int param_5,LPSTR param_6)

{
  DWORD dwFlags;
  int iVar1;
  BOOL *lpUsedDefaultChar;
  UINT CodePage;
  LPCWSTR lpWideCharStr;
  LPCSTR lpDefaultChar;
  BOOL local_14;
  
  dwFlags = 0;
  if (param_4 == '\0') {
    dwFlags = 0x400;
  }
  local_14 = 0;
  lpUsedDefaultChar = &local_14;
  if (param_3 == '\0') {
    lpUsedDefaultChar = (BOOL *)0x0;
  }
  lpDefaultChar = (LPCSTR)0x0;
  CodePage = 0;
  FUN_00eaf9f0();
  iVar1 = WideCharToMultiByte(CodePage,dwFlags,lpWideCharStr,param_2,param_6,param_5,lpDefaultChar,
                              lpUsedDefaultChar);
  FUN_00eafa21();
  if (local_14 == 0) {
    return iVar1;
  }
  FUN_00eae9a0();
  FUN_00911540();
                    /* WARNING: Subroutine does not return */
  FUN_00eaeefb();
}

