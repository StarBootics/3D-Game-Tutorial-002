; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; AUTOMATICALLY GENERATED CODE, DO NOT MODIFY
; UNLESS YOU REALLY, REALLY, REALLY MEAN IT !!
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; Code generated by : Dev-Object - V2.0.0 Beta 7
; Project name : OpenGL 3D Game Tutorial
; File name : Vector4f.pbi
; File Version : 1.0.0
; Programmation : OK
; Programmed by : Guillaume Saumure
; AKA : StarBootics
; E-mail : gsaumure@cgocable.ca
; Creation Date : November 10th, 2021
; Last update : July 21st, 2022
; Coded for PureBasic : V6.00 LTS
; Platform : Windows, Linux, MacOS X
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; The MIT License (MIT)
; 
; Copyright (c) 2021 Guillaume Saumure
; 
; Permission is hereby granted, free of charge, to any person obtaining a copy of this software and 
; associated documentation files (the "Software"), to deal in the Software without restriction, including 
; without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell 
; copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the 
; following conditions:
; 
; The above copyright notice and this permission notice shall be included in all copies or substantial 
; portions of the Software.
; 
; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT 
; LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO 
; EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER 
; IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR 
; THE USE OR OTHER DEALINGS IN THE SOFTWARE.
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

DeclareModule Vector4f
  
  Interface Vector4f
    
    GetI.f()
    GetJ.f()
    GetK.f()
    GetL.f()
    SetI(i.f)
    SetJ(j.f)
    SetK(k.f)
    SetL(l.f)
    Update(i.f, j.f, k.f, l.f)
    Clear()
    Access.i()
    Equal(*Other)
    Plus.i(*Other)
    Minus.i(*Other)
    Add(*Other)
    AddScaled(*Other, Scale.f)
    Subtract(*Other)
    AddScalar(Scalar.f)
    SubtractScalar(Scalar.f)
    ProductByScalar(Scalar.f)
    DivideByScalar(Scalar.f)
    Lerp.i(*Other, Proportion.f)
    Copy.i()
    Compare.i(*Other)
    Swapping(*Other)
    ReadVector4f(FileID.i)
    WriteVector4f(FileID.i)
    Free()
    
  EndInterface
  
  Declare.i New(i.f = 0.0, j.f = 0.0, k.f = 0.0, l.f = 0.0)
  
EndDeclareModule

Module Vector4f
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Structure declaration <<<<<

  Structure Private_Members
    
    VirtualTable.i
    i.f
    j.f
    k.f
    l.f
    
  EndStructure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The observators <<<<<

  Procedure.f GetI(*This.Private_Members)
    
    ProcedureReturn *This\i
  EndProcedure
  
  Procedure.f GetJ(*This.Private_Members)
    
    ProcedureReturn *This\j
  EndProcedure
  
  Procedure.f GetK(*This.Private_Members)
    
    ProcedureReturn *This\k
  EndProcedure
  
  Procedure.f GetL(*This.Private_Members)
    
    ProcedureReturn *This\l
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The mutators <<<<<

  Procedure SetI(*This.Private_Members, i.f)
    
    *This\i = i
    
  EndProcedure
  
  Procedure SetJ(*This.Private_Members, j.f)
    
    *This\j = j
    
  EndProcedure
  
  Procedure SetK(*This.Private_Members, k.f)
    
    *This\k = k
    
  EndProcedure
  
  Procedure SetL(*This.Private_Members, l.f)
    
    *This\l = l
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The Update operator <<<<<

  Procedure Update(*This.Private_Members, i.f, j.f, k.f, l.f)
    
    *This\i = i
    *This\j = j
    *This\k = k
    *This\l = l
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The Clear operator <<<<<

  Procedure Clear(*This.Private_Members)
    
    *This\i = 0.0
    *This\j = 0.0
    *This\k = 0.0
    *This\l = 0.0
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The Access operator <<<<<

  Procedure.i Access(*This.Private_Members)
    
    ProcedureReturn *This + OffsetOf(Private_Members\i)
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The Equal operator : A = B <<<<<

  Procedure Equal(*This.Private_Members, *Other.Private_Members)
    
    *This\i = *Other\i
    *This\j = *Other\j
    *This\k = *Other\k
    *This\l = *Other\l
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The Plus operator : R = A + B <<<<<

  Procedure.i Plus(*This.Private_Members, *Other.Private_Members)
    
    *Result.Private_Members = AllocateStructure(Private_Members)
    *Result\VirtualTable = ?START_METHODS
    
    *Result\i = *This\i + *Other\i
    *Result\j = *This\j + *Other\j
    *Result\k = *This\k + *Other\k
    *Result\l = *This\l + *Other\l
    
    ProcedureReturn *Result
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The Minus operator : R = A - B <<<<<

  Procedure.i Minus(*This.Private_Members, *Other.Private_Members)
    
    *Result.Private_Members = AllocateStructure(Private_Members)
    *Result\VirtualTable = ?START_METHODS
    
    *Result\i = *This\i - *Other\i
    *Result\j = *This\j - *Other\j
    *Result\k = *This\k - *Other\k
    *Result\l = *This\l - *Other\l
    
    ProcedureReturn *Result
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The Add operator : A = A + B <<<<<

  Procedure Add(*This.Private_Members, *Other.Private_Members)
    
    *This\i + *Other\i
    *This\j + *Other\j
    *This\k + *Other\k
    *This\l + *Other\l
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The AddScaled operator : A = A + B * S <<<<<

  Procedure AddScaled(*This.Private_Members, *Other.Private_Members, Scale.f)
    
    *This\i + *Other\i * Scale
    *This\j + *Other\j * Scale
    *This\k + *Other\k * Scale
    *This\l + *Other\l * Scale
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The Subtract operator : A = A - B <<<<<

  Procedure Subtract(*This.Private_Members, *Other.Private_Members)
    
    *This\i - *Other\i
    *This\j - *Other\j
    *This\k - *Other\k
    *This\l - *Other\l
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The AddScalar operator : A = A + Scalar <<<<<

  Procedure AddScalar(*This.Private_Members, Scalar.f)
    
    *This\i + Scalar
    *This\j + Scalar
    *This\k + Scalar
    *This\l + Scalar
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The SubtractScalar operator : A = A - Scalar <<<<<

  Procedure SubtractScalar(*This.Private_Members, Scalar.f)
    
    *This\i - Scalar
    *This\j - Scalar
    *This\k - Scalar
    *This\l - Scalar
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The ProductByScalar operator : A = A * Scalar <<<<<

  Procedure ProductByScalar(*This.Private_Members, Scalar.f)
    
    *This\i * Scalar
    *This\j * Scalar
    *This\k * Scalar
    *This\l * Scalar
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The DivideByScalar operator : A = A / Scalar <<<<<

  Procedure DivideByScalar(*This.Private_Members, Scalar.f)
    
    *This\i / Scalar
    *This\j / Scalar
    *This\k / Scalar
    *This\l / Scalar
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The Linear Interpolation operator <<<<<

  Procedure.i Lerp(*This.Private_Members, *Other.Private_Members, Proportion.f)
    
    *Result.Private_Members = AllocateStructure(Private_Members)
    *Result\VirtualTable = ?START_METHODS
    
    *Result\i = *This\i + Proportion * (*Other\i - *This\i)
    *Result\j = *This\j + Proportion * (*Other\j - *This\j)
    *Result\k = *This\k + Proportion * (*Other\k - *This\k)
    *Result\l = *This\l + Proportion * (*Other\l - *This\l)
    
    ProcedureReturn *Result
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The Copy operator <<<<<

  Procedure.i Copy(*This.Private_Members)
    
    *Copy.Private_Members = AllocateStructure(Private_Members)
    
    CopyStructure(*This, *Copy, Private_Members)
    
    ProcedureReturn *Copy
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The Compare operator <<<<<

  Procedure.i Compare(*This.Private_Members, *Other.Private_Members)
    
    ProcedureReturn CompareMemory(*This, *Other, SizeOf(Private_Members))
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The Swapping operator <<<<<

  Procedure Swapping(*This.Private_Members, *Other.Private_Members)
    
    Swap *This\i, *Other\i
    Swap *This\j, *Other\j
    Swap *This\k, *Other\k
    Swap *This\l, *Other\l
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Read in Binary file <<<<<

  Procedure ReadVector4f(*This.Private_Members, FileID.i)
    
    *This\i = ReadFloat(FileID)
    *This\j = ReadFloat(FileID)
    *This\k = ReadFloat(FileID)
    *This\l = ReadFloat(FileID)
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Write in Binary file <<<<<

  Procedure WriteVector4f(*This.Private_Members, FileID.i)
    
    WriteFloat(FileID, *This\i)
    WriteFloat(FileID, *This\j)
    WriteFloat(FileID, *This\k)
    WriteFloat(FileID, *This\l)
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The Destructor <<<<<

  Procedure Free(*This.Private_Members)
    
    FreeStructure(*This)
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The Constructor <<<<<

  Procedure.i New(i.f = 0.0, j.f = 0.0, k.f = 0.0, l.f = 0.0)
    
    *This.Private_Members = AllocateStructure(Private_Members)
    *This\VirtualTable = ?START_METHODS
    
    *This\i = i
    *This\j = j
    *This\k = k
    *This\l = l
    
    ProcedureReturn *This
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The Virtual Table Entries <<<<<

  DataSection
    START_METHODS:
    Data.i @GetI()
    Data.i @GetJ()
    Data.i @GetK()
    Data.i @GetL()
    Data.i @SetI()
    Data.i @SetJ()
    Data.i @SetK()
    Data.i @SetL()
    Data.i @Update()
    Data.i @Clear()
    Data.i @Access()
    Data.i @Equal()
    Data.i @Plus()
    Data.i @Minus()
    Data.i @Add()
    Data.i @AddScaled()
    Data.i @Subtract()
    Data.i @AddScalar()
    Data.i @SubtractScalar()
    Data.i @ProductByScalar()
    Data.i @DivideByScalar()
    Data.i @Lerp()
    Data.i @Copy()
    Data.i @Compare()
    Data.i @Swapping()
    Data.i @ReadVector4f()
    Data.i @WriteVector4f()
    Data.i @Free()
    END_METHODS:
  EndDataSection
  
EndModule

; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< Code generated in : 00.001 seconds (418000.00 lines/second) <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

; <<<<<<<<<<<<<<<<<<<<<<<
; <<<<< END OF FILE <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<
; IDE Options = PureBasic 6.00 LTS (Linux - x64)
; Folding = ------
; EnableXP
; CompileSourceDirectory