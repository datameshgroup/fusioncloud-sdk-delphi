// CodeGear C++Builder
// Copyright (c) 1995, 2021 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sgcHTTP2_HPACK.pas' rev: 34.00 (Android)

#ifndef Sgchttp2_hpackHPP
#define Sgchttp2_hpackHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <System.SysUtils.hpp>
#include <System.Contnrs.hpp>
#include <sgcHTTP2_Classes.hpp>
#include <sgcHTTP2_Types.hpp>
#include <sgcBase_Helpers.hpp>

//-- user supplied -----------------------------------------------------------

namespace Sgchttp2_hpack
{
//-- forward type declarations -----------------------------------------------
struct TsgcHTTP2_DecoderTask;
class DELPHICLASS TsgcHTTP2_TableEntry;
class DELPHICLASS TsgcHTTP2_DynamicTable;
class DELPHICLASS TsgcHTTP2_HeaderTable;
class DELPHICLASS TsgcHTTP2_Huffman_TreeNode;
class DELPHICLASS TsgcHTTP2_HPACK;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TsgcHPackHuffmanStrategy : unsigned char { h2huNever, h2huAlways, h2huIfSmaller };

enum DECLSPEC_DENUM TsgcHPackState : unsigned char { hpstStartDecode, hpstDecodeLength, hpstDecodeData };

enum DECLSPEC_DENUM TsgcHPackDecoderTaskType : unsigned char { hpttNone, hpttStartReadInt, hpttContReadInt, hpttStartReadString, hpttContReadString, hpttHandleFullyIndexed, hpttHandleNameIndexed, hpttHandleNoneIndexed, hpttHandleTableUpdate };

struct DECLSPEC_DRECORD TsgcHTTP2_DecoderTask
{
public:
	TsgcHPackDecoderTaskType _Type;
	int IntData;
	System::UnicodeString StringData;
};


#pragma pack(push,4)
class PASCALIMPLEMENTATION TsgcHTTP2_TableEntry : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	bool FLocalVar;
	System::UnicodeString FName;
	bool FSensitive;
	System::UnicodeString FValue;
	int __fastcall GetNameLength();
	int __fastcall GetValueLength();
	
public:
	__property bool LocalVar = {read=FLocalVar, write=FLocalVar, nodefault};
	__property System::UnicodeString Name = {read=FName, write=FName};
	__property int NameLength = {read=GetNameLength, nodefault};
	__property bool Sensitive = {read=FSensitive, write=FSensitive, nodefault};
	__property System::UnicodeString Value = {read=FValue, write=FValue};
	__property int ValueLength = {read=GetValueLength, nodefault};
public:
	/* TObject.Create */ inline __fastcall TsgcHTTP2_TableEntry() : System::TObject() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TsgcHTTP2_TableEntry() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TsgcHTTP2_DynamicTable : public System::Classes::TList
{
	typedef System::Classes::TList inherited;
	
public:
	TsgcHTTP2_TableEntry* operator[](int Index) { return this->Item[Index]; }
	
public:
	__fastcall virtual TsgcHTTP2_DynamicTable();
	__fastcall virtual ~TsgcHTTP2_DynamicTable();
	
private:
	void __fastcall DoReduceTableSize(int aSize);
	
public:
	void __fastcall AddItem(const System::UnicodeString aName, const System::UnicodeString aValue);
	bool __fastcall DeleteItem(int aIndex);
	TsgcHTTP2_TableEntry* __fastcall GetItem(int Index);
	__property TsgcHTTP2_TableEntry* Item[int Index] = {read=GetItem/*, default*/};
	int __fastcall GetBestMatchingIndex(TsgcHTTP2_TableEntry* const aField, bool &aIsFullMatch);
	
private:
	int FMaxTableSize;
	int FUsedSize;
	int __fastcall GetUsedSize();
	void __fastcall SetMaxTableSize(const int Value);
	
public:
	__property int MaxTableSize = {read=FMaxTableSize, write=SetMaxTableSize, nodefault};
	__property int UsedSize = {read=GetUsedSize, nodefault};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TsgcHTTP2_HeaderTable : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	TsgcHTTP2_DynamicTable* FDynamicTable;
	TsgcHTTP2_DynamicTable* __fastcall GetDynamicTable();
	
protected:
	__property TsgcHTTP2_DynamicTable* DynamicTable = {read=GetDynamicTable};
	
public:
	__fastcall virtual TsgcHTTP2_HeaderTable();
	__fastcall virtual ~TsgcHTTP2_HeaderTable();
	void __fastcall AddItem(const System::UnicodeString aName, const System::UnicodeString aValue);
	TsgcHTTP2_TableEntry* __fastcall GetItem(int Index);
	int __fastcall GetBestMatchingIndex(TsgcHTTP2_TableEntry* const aField, bool &aIsFullMatch);
	
private:
	int __fastcall GetDynamicTableLength();
	int __fastcall GetMaxDynamicTableSize();
	int __fastcall GetUsedDynamicTableSize();
	void __fastcall SetMaxDynamicTableSize(const int Value);
	
public:
	__property int DynamicTableLength = {read=GetDynamicTableLength, nodefault};
	__property int MaxDynamicTableSize = {read=GetMaxDynamicTableSize, write=SetMaxDynamicTableSize, nodefault};
	__property int UsedDynamicTableSize = {read=GetUsedDynamicTableSize, nodefault};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TsgcHTTP2_Huffman_TreeNode : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	TsgcHTTP2_Huffman_TreeNode* FChild0;
	TsgcHTTP2_Huffman_TreeNode* FChild1;
	int FValue;
	
public:
	__fastcall virtual TsgcHTTP2_Huffman_TreeNode();
	__fastcall virtual ~TsgcHTTP2_Huffman_TreeNode();
	__property TsgcHTTP2_Huffman_TreeNode* Child0 = {read=FChild0, write=FChild0};
	__property TsgcHTTP2_Huffman_TreeNode* Child1 = {read=FChild1, write=FChild1};
	__property int Value = {read=FValue, write=FValue, nodefault};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TsgcHTTP2_HPACK : public System::TObject
{
	typedef System::TObject inherited;
	
	
private:
	typedef System::StaticArray<TsgcHTTP2_DecoderTask, 3> _TsgcHTTP2_HPACK__1;
	
	
private:
	void __fastcall DoHuffmanResizeBuffer(System::TArray__1<System::Byte> &aBytes, int aUsedBytes, int aNewBytes);
	TsgcHTTP2_Huffman_TreeNode* FHuffmanRoot;
	TsgcHTTP2_Huffman_TreeNode* __fastcall GetHuffmanRoot();
	void __fastcall DoHuffmanInsertIntoTree(TsgcHTTP2_Huffman_TreeNode* aTree, int aValue, int aBin, int aLength);
	
protected:
	__property TsgcHTTP2_Huffman_TreeNode* HuffmanRoot = {read=GetHuffmanRoot, write=FHuffmanRoot};
	int __fastcall DoHuffmanEncodeInto(System::TArray__1<System::Byte> aBuf, int aBufOffset, System::TArray__1<System::Byte> aBytes, int aBytesOffset);
	System::UnicodeString __fastcall DoHuffmanDecode(System::TArray__1<System::Byte> aInput);
	int __fastcall GetHuffmanEncodedLength(System::TArray__1<System::Byte> aData, int aOffset = 0x0);
	
private:
	int __fastcall DoEncodeInteger(int aValue, int aNumBits, int aPrefixBits, int aOffset, System::TArray__1<System::Byte> &aBytes);
	int __fastcall GetRequiredBytes(int aValue, System::Byte aByte, int aNumBits);
	int __fastcall DoEncodeStringInto(System::TArray__1<System::Byte> aBytes, const System::UnicodeString aValue, int aLength, int aOffset, TsgcHPackHuffmanStrategy aHuffman);
	System::TArray__1<System::Byte> __fastcall DoEncodeString(const System::UnicodeString aValue, TsgcHPackHuffmanStrategy aHuffman);
	
protected:
	virtual System::TArray__1<System::Byte> __fastcall EncodeInteger(int aValue, System::Byte aByte, int aNumBits);
	virtual System::TArray__1<System::Byte> __fastcall EncodeString(const System::UnicodeString aValue, TsgcHPackHuffmanStrategy aHuffman);
	
public:
	void __fastcall Encode(System::TArray__1<System::Byte> aBuffer, int aOffset, TsgcHTTP2_TableEntry* *aHeaders, const int aHeaders_High, int &UsedBytes, int &FieldCount);
	
private:
	int FDecodeIntResult;
	int FDecodeIntAcum;
	bool FDecodeIntDone;
	int FDecodeIntConsumed;
	System::UnicodeString FDecodeStrResult;
	int FDecodeStrLength;
	bool FDecodeStrDone;
	bool FDecodeStrHuffman;
	TsgcHPackState FDecodeStrState;
	int FDecodeStrOctetLength;
	System::TArray__1<System::Byte> FDecodeStrBuffer;
	int FDecodeStrBufferOffset;
	int FDecodeStrMaxLength;
	bool FDecoderDone;
	bool FDecoderAllowTableSizeUpdates;
	int FDecoderCurTask;
	TsgcHTTP2_TableEntry* FDecoderHeaderField;
	int FDecoderHeaderSize;
	_TsgcHTTP2_HPACK__1 FDecoderTasks;
	bool FDecoderAddToTable;
	bool FDecoderSensitive;
	TsgcHTTP2_TableEntry* __fastcall GetDecoderHeaderField();
	int __fastcall DoDecodeIntCont(System::TArray__1<System::Byte> aBytes, int aOffset);
	int __fastcall DoDecodeInteger(int aPrefixLength, System::TArray__1<System::Byte> aBytes, int aOffset = 0x0);
	int __fastcall DoDecodeStringCont(System::TArray__1<System::Byte> aBytes, int aOffset);
	int __fastcall DoDecodeStringContLength(System::TArray__1<System::Byte> aBytes, int aOffset);
	int __fastcall DoDecodeStringByteData(System::TArray__1<System::Byte> aBytes, int aOffset);
	int __fastcall DoDecodeString(System::TArray__1<System::Byte> aBytes, int aOffset);
	
protected:
	virtual int __fastcall DecodeInteger(int aPrefixLength, System::TArray__1<System::Byte> aBytes, int aOffset = 0x0);
	virtual int __fastcall DecodeString(System::TArray__1<System::Byte> aBytes, int aOffset = 0x0);
	
private:
	void __fastcall DoDecodeReset();
	void __fastcall DoHandleDecodeIndexed();
	void __fastcall DoHandleDecodeNameIndexed();
	void __fastcall DoHandleDecodeNoneIndexed();
	void __fastcall DoHandleTableUpdate();
	
public:
	int __fastcall Decode(System::TArray__1<System::Byte> aBuffer, int aOffset = 0x0)/* overload */;
	void __fastcall Decode(System::TArray__1<System::Byte> aBuffer, int aOffset, int aLength, System::Classes::TStringList* &aHeaders)/* overload */;
	int __fastcall DoHandleStartOfPacket(System::TArray__1<System::Byte> aBuffer, int aOffset = 0x0);
	int __fastcall DoExecutePendingTask(System::TArray__1<System::Byte> aBuffer, int aOffset, bool &aExecuteMoreTaks);
	
private:
	TsgcHTTP2_HeaderTable* FHeaderTable;
	TsgcHTTP2_HeaderTable* __fastcall GetHeaderTable();
	
protected:
	__property TsgcHTTP2_HeaderTable* HeaderTable = {read=GetHeaderTable};
	
public:
	__fastcall virtual TsgcHTTP2_HPACK();
	__fastcall virtual ~TsgcHTTP2_HPACK();
	
private:
	int FDynamicTableSizeLimit;
	int FTableSizeUpdateMinValue;
	int FTableSizeUpdateFinalValue;
	TsgcHPackHuffmanStrategy FHuffmanStrategy;
	int FMaxStringLength;
	int __fastcall GetDynamicTableLength();
	int __fastcall GetDynamicTableSize();
	int __fastcall GetDynamicTableUsedSize();
	void __fastcall SetDynamicTableSize(const int Value);
	
public:
	__property int DynamicTableLength = {read=GetDynamicTableLength, nodefault};
	__property int DynamicTableSize = {read=GetDynamicTableSize, write=SetDynamicTableSize, nodefault};
	__property int DynamicTableSizeLimit = {read=FDynamicTableSizeLimit, write=FDynamicTableSizeLimit, nodefault};
	__property int DynamicTableUsedSize = {read=GetDynamicTableUsedSize, nodefault};
	__property TsgcHPackHuffmanStrategy HuffmanStrategy = {read=FHuffmanStrategy, write=FHuffmanStrategy, nodefault};
	__property int MaxStringLength = {read=FMaxStringLength, write=FMaxStringLength, nodefault};
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
}	/* namespace Sgchttp2_hpack */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_SGCHTTP2_HPACK)
using namespace Sgchttp2_hpack;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Sgchttp2_hpackHPP
