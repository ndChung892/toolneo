/* Address: 009a1500 | Ghidra name: FUN_009a1500 */

void __fastcall FUN_009a1500(int param_1,LPSTR param_2,char param_3,char param_4,int param_5)

{
  LPCWSTR lpWideCharStr;
  int iVar1;
  DWORD dwFlags;
  BOOL *lpUsedDefaultChar;
  UINT CodePage;
  LPSTR lpMultiByteStr;
  LPCSTR lpDefaultChar;
  BOOL local_14;
  
  dwFlags = 0;
  if (param_4 == '\0') {
    dwFlags = 0x400;
  }
  local_14 = 0;
  if (param_1 == 0) {
    lpWideCharStr = (LPCWSTR)0x0;
  }
  else {
    lpWideCharStr = (LPCWSTR)(param_1 + 8);
  }
  iVar1 = *(int *)(param_1 + 4);
  lpUsedDefaultChar = &local_14;
  if (param_3 == '\0') {
    lpUsedDefaultChar = (BOOL *)0x0;
  }
  lpDefaultChar = (LPCSTR)0x0;
  CodePage = 0;
  lpMultiByteStr = param_2;
  FUN_00eaf9f0();
  iVar1 = WideCharToMultiByte(CodePage,dwFlags,lpWideCharStr,iVar1,lpMultiByteStr,param_5,
                              lpDefaultChar,lpUsedDefaultChar);
  FUN_00eafa21();
  if (local_14 == 0) {
    param_2[iVar1] = '\0';
    return;
  }
  FUN_00eae9a0();
  FUN_00911540();
                    /* WARNING: Subroutine does not return */
  FUN_00eaeefb();
}

