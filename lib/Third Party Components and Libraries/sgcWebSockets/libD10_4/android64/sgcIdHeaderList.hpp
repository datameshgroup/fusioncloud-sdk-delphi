﻿// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcIdHeaderList.pas' rev: 34.00 (Android)

#ifndef SgcidheaderlistHPP
#define SgcidheaderlistHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <sgcIdGlobalProtocols.hpp>

//-- user supplied -----------------------------------------------------------

namespace Sgcidheaderlist
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TIdHeaderList;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TIdHeaderList : public System::Classes::TStringList
{
	typedef System::Classes::TStringList inherited;
	
protected:
	System::UnicodeString FNameValueSeparator;
	bool FUnfoldLines;
	bool FFoldLines;
	int FFoldLinesLength;
	Sgcidglobalprotocols::TIdHeaderQuotingType FQuoteType;
	virtual void __fastcall AssignTo(System::Classes::TPersistent* Dest);
	void __fastcall DeleteFoldedLines(int Index);
	System::Classes::TStrings* __fastcall FoldLine _DEPRECATED_ATTRIBUTE1("Use FoldLineToList()") (System::UnicodeString AString);
	void __fastcall FoldLineToList(System::UnicodeString AString, System::Classes::TStrings* ALines);
	void __fastcall FoldAndInsert(System::UnicodeString AString, int Index);
	HIDESBASE System::UnicodeString __fastcall GetName(int Index);
	HIDESBASE System::UnicodeString __fastcall GetValue(const System::UnicodeString AName);
	System::UnicodeString __fastcall GetParam(const System::UnicodeString AName, const System::UnicodeString AParam);
	System::UnicodeString __fastcall GetAllParams(const System::UnicodeString AName);
	HIDESBASE void __fastcall SetValue(const System::UnicodeString AName, const System::UnicodeString AValue);
	void __fastcall SetParam(const System::UnicodeString AName, const System::UnicodeString AParam, const System::UnicodeString AValue);
	void __fastcall SetAllParams(const System::UnicodeString AName, const System::UnicodeString AValue);
	System::UnicodeString __fastcall GetValueFromLine(int &VLine);
	void __fastcall SkipValueAtLine(int &VLine);
	
public:
	virtual void __fastcall AddStrings(System::Classes::TStrings* Strings)/* overload */;
	void __fastcall AddStdValues(System::Classes::TStrings* ASrc);
	void __fastcall AddValue(const System::UnicodeString AName, const System::UnicodeString AValue);
	void __fastcall ConvertToStdValues(System::Classes::TStrings* ADest);
	__fastcall TIdHeaderList(Sgcidglobalprotocols::TIdHeaderQuotingType AQuoteType);
	void __fastcall Extract(const System::UnicodeString AName, System::Classes::TStrings* ADest);
	HIDESBASE int __fastcall IndexOfName(const System::UnicodeString AName);
	__property System::UnicodeString Names[int Index] = {read=GetName};
	__property System::UnicodeString Values[const System::UnicodeString Name] = {read=GetValue, write=SetValue};
	__property System::UnicodeString Params[const System::UnicodeString Name][const System::UnicodeString Param] = {read=GetParam, write=SetParam};
	__property System::UnicodeString AllParams[const System::UnicodeString Name] = {read=GetAllParams, write=SetAllParams};
	__property System::UnicodeString NameValueSeparator = {read=FNameValueSeparator, write=FNameValueSeparator};
	__property bool UnfoldLines = {read=FUnfoldLines, write=FUnfoldLines, nodefault};
	__property bool FoldLines = {read=FFoldLines, write=FFoldLines, nodefault};
	__property int FoldLength = {read=FFoldLinesLength, write=FFoldLinesLength, nodefault};
public:
	/* TStringList.Destroy */ inline __fastcall virtual ~TIdHeaderList() { }
	
	/* Hoisted overloads: */
	
public:
	inline void __fastcall  AddStrings(const System::TArray__1<System::UnicodeString> Strings){ System::Classes::TStrings::AddStrings(Strings); }
	inline void __fastcall  AddStrings(const System::TArray__1<System::UnicodeString> Strings, const System::TArray__1<System::TObject*> Objects){ System::Classes::TStrings::AddStrings(Strings, Objects); }
	
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Sgcidheaderlist */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCIDHEADERLIST)
using namespace Sgcidheaderlist;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SgcidheaderlistHPP
