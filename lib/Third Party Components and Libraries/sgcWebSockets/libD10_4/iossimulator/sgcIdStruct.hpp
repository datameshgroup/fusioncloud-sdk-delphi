﻿// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcIdStruct.pas' rev: 34.00 (iOSSIM)

#ifndef SgcidstructHPP
#define SgcidstructHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <sgcIdGlobal.hpp>

//-- user supplied -----------------------------------------------------------

namespace Sgcidstruct
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TIdStruct;
class DELPHICLASS TIdUnion;
class DELPHICLASS TIdLongWord;
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
class PASCALIMPLEMENTATION TIdStruct : public System::TObject
{
	typedef System::TObject inherited;
	
protected:
	virtual unsigned __fastcall GetBytesLen();
	
public:
	__fastcall virtual TIdStruct();
	virtual void __fastcall ReadStruct(const Sgcidglobal::TIdBytes ABytes, unsigned &VIndex);
	virtual void __fastcall WriteStruct(Sgcidglobal::TIdBytes &VBytes, unsigned &VIndex);
	__property unsigned BytesLen = {read=GetBytesLen, nodefault};
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TIdStruct() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TIdUnion : public TIdStruct
{
	typedef TIdStruct inherited;
	
protected:
	Sgcidglobal::TIdBytes FBuffer;
	virtual unsigned __fastcall GetBytesLen();
	void __fastcall SetBytesLen(const unsigned ABytesLen);
	
public:
	virtual void __fastcall ReadStruct(const Sgcidglobal::TIdBytes ABytes, unsigned &VIndex);
	virtual void __fastcall WriteStruct(Sgcidglobal::TIdBytes &VBytes, unsigned &VIndex);
public:
	/* TIdStruct.Create */ inline __fastcall virtual TIdUnion() : TIdStruct() { }
	
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TIdUnion() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TIdLongWord : public TIdUnion
{
	typedef TIdUnion inherited;
	
protected:
	unsigned __fastcall Get_l();
	System::Byte __fastcall Gets_b1();
	System::Byte __fastcall Gets_b2();
	System::Byte __fastcall Gets_b3();
	System::Byte __fastcall Gets_b4();
	System::Word __fastcall Gets_w1();
	System::Word __fastcall Gets_w2();
	void __fastcall Set_l(const unsigned Value);
	void __fastcall Sets_b1(const System::Byte Value);
	void __fastcall Sets_b2(const System::Byte Value);
	void __fastcall Sets_b3(const System::Byte Value);
	void __fastcall Sets_b4(const System::Byte Value);
	void __fastcall SetS_w1(const System::Word Value);
	void __fastcall SetS_w2(const System::Word Value);
	
public:
	__fastcall virtual TIdLongWord();
	__property System::Byte s_b1 = {read=Gets_b1, write=Sets_b1, nodefault};
	__property System::Byte s_b2 = {read=Gets_b2, write=Sets_b2, nodefault};
	__property System::Byte s_b3 = {read=Gets_b3, write=Sets_b3, nodefault};
	__property System::Byte s_b4 = {read=Gets_b4, write=Sets_b4, nodefault};
	__property System::Word s_w1 = {read=Gets_w1, write=SetS_w1, nodefault};
	__property System::Word s_w2 = {read=Gets_w2, write=SetS_w2, nodefault};
	__property unsigned s_l = {read=Get_l, write=Set_l, nodefault};
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TIdLongWord() { }
	
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
}	/* namespace Sgcidstruct */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCIDSTRUCT)
using namespace Sgcidstruct;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SgcidstructHPP
