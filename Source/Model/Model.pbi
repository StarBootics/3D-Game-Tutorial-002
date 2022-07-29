; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; AUTOMATICALLY GENERATED CODE, DO NOT MODIFY
; UNLESS YOU REALLY, REALLY, REALLY MEAN IT !!
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; Code generated by : Dev-Object - V2.0.0 Beta 7
; Project name : OpenGL 3D Game Tutorial
; File name : Model.pbi
; File Version : 0.0.0
; Programmation : In progress
; Programmed by : Guillaume Saumure
; AKA : StarBootics
; E-mail : gsaumure@cgocable.ca
; Creation Date : July 28th, 2022
; Last update : July 28th, 2022
; Coded for PureBasic : V6.00 LTS
; Platform : Windows, Linux, MacOS X
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; The MIT License (MIT)
; 
; Copyright (c) 2022 Guillaume Saumure
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

DeclareModule Model
  
  Interface Model
    
    GetName.s()
    GetMesh.i()
    GetTexture.i()
    Free()
    
  EndInterface
  
  ; Declare Free(*This)
  Declare.i New(ModelFileName.s)
  
EndDeclareModule

Module Model
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Structure declaration <<<<<

  Structure Private_Members
    
    VirtualTable.i
    Name.s
    Mesh.Mesh::Mesh
    Texture.Texture::Texture
    
  EndStructure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The observators <<<<<

  Procedure.s GetName(*This.Private_Members)
    
    ProcedureReturn *This\Name
  EndProcedure
  
  Procedure.i GetMesh(*This.Private_Members)
    
    ProcedureReturn *This\Mesh
  EndProcedure
  
  Procedure.i GetTexture(*This.Private_Members)
    
    ProcedureReturn *This\Texture
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The Destructor <<<<<

  Procedure Free(*This.Private_Members)
    
    If *This\Mesh <> #Null
      *This\Mesh\FreeFromGPU()
      *This\Mesh\Free()
    EndIf
    
    If *This\Texture <> #Null
      *This\Texture\Free()
    EndIf
    
    FreeStructure(*This)
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The Constructor <<<<<
  
  Procedure.i New(ModelFileName.s)
    
    *This.Private_Members = AllocateStructure(Private_Members)
    *This\VirtualTable = ?START_METHODS
    
    *This\Name = GetFilePart(ModelFileName)
    
    *This\Mesh = Mesh::New()
    *This\Texture = Texture::New()
    
    DecompressPath.s = GetTemporaryDirectory() + "model" + #PS$
    
    BuiltPathDirectories.BuiltPathDirectories::BuiltPathDirectories = BuiltPathDirectories::New()
    BuiltPathDirectories\AddDirectoriesEx(DecompressPath)
    BuiltPathDirectories\DoIt()
    BuiltPathDirectories\Free()
    
    TextureLoader.TextureLoader::TextureLoader = TextureLoader::New()
    
    If OpenPack(0, ModelFileName, #PB_PackerPlugin_Zip) 
      
      If ExaminePack(0)
        
        While NextPackEntry(0)
          
          FileName.s = PackEntryName(0)
          UncompressPackFile(0, DecompressPath + FileName, FileName)
          
          If FileName = "Mesh.mesh"
            *This\Mesh\ReadMeshFile(DecompressPath + FileName)
            *This\Mesh\SendToGPU()
            *This\Mesh\ClearVertices()
            *This\Mesh\ClearIndices()
          EndIf
          
          If FileName = "Texture.bmp" Or FileName = "Texture.jpg" Or FileName = "Texture.png"
            *This\Texture\SetID(TextureLoader\LoadIt(DecompressPath + FileName))
          EndIf
          
        Wend
        
      EndIf
      
      ClosePack(0)
      
    EndIf
    
    TextureLoader\Free()
    
    DeleteDirectory(DecompressPath, "*.*")
    
    ProcedureReturn *This
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The Virtual Table Entries <<<<<

  DataSection
    START_METHODS:
    Data.i @GetName()
    Data.i @GetMesh()
    Data.i @GetTexture()
    Data.i @Free()
    END_METHODS:
  EndDataSection
  
EndModule

; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< Code generated in : 00.001 seconds (160000.00 lines/second) <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

; <<<<<<<<<<<<<<<<<<<<<<<
; <<<<< END OF FILE <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<
; IDE Options = PureBasic 6.00 LTS (Linux - x64)
; Folding = --
; EnableXP
; CompileSourceDirectory