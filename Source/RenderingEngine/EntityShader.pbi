; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; AUTOMATICALLY GENERATED CODE, DO NOT MODIFY
; UNLESS YOU REALLY, REALLY, REALLY MEAN IT !!
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; Code generated by : Dev-Object - V2.0.0 Beta 7
; Project name : OpenGL 3D Game Tutorial
; File name : RigidBodyShader.pbi
; File Version : 0.0.1
; Programmation : In progress
; Programmed by : Guillaume Saumure
; AKA : StarBootics
; E-mail : gsaumure@cgocable.ca
; Creation Date : July 22nd, 2022
; Last update : July 22nd, 2022
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

DeclareModule EntityShader
  
  Interface EntityShader
    
    Bind()
    Unbind()
    Compile(Path.s)
    SendModelMatrix(*MatrixA.Matrix44f::Matrix44f)
    SendViewMatrix(*MatrixA.Matrix44f::Matrix44f)
    SendProjectionMatrix(*MatrixA.Matrix44f::Matrix44f)
    SendViewPosition(*ViewPos.Vector3f::Vector3f)
    SendLight(*Light.Light::Light)
    SendTextureUnits()
    Free()
    
  EndInterface
  
  Declare.i New()
  
EndDeclareModule

Module EntityShader
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Structure declaration <<<<<
  
  Structure Private_Members
    
    VirtualTable.i
    ShaderProgram.ShaderProgram::ShaderProgram
    
  EndStructure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The BindAttribute operator <<<<<
  
  Procedure BindAttribute(ProgramID.l)
    
    GL20::glBindAttribLocation(ProgramID, 0, "Position")
    GL20::glBindAttribLocation(ProgramID, 1, "Normal")
    GL20::glBindAttribLocation(ProgramID, 2, "Tangent")
    GL20::glBindAttribLocation(ProgramID, 3, "UVMap")
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The Bind operator <<<<<
  
  Procedure Bind(*This.Private_Members)
    
    GL20::glUseProgram(*This\ShaderProgram\GetProgramID())
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The Unbind operator <<<<<
  
  Procedure Unbind(*This.Private_Members)
    
    GL20::glUseProgram(0)
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The Compile operator <<<<<

  Procedure Compile(*This.Private_Members, Path.s)
    
    *This\ShaderProgram\Compile(Path, @BindAttribute())
    *This\ShaderProgram\GetUniformLocations()
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The SendModelMatrix operator <<<<<
  
  Procedure SendModelMatrix(*This.Private_Members, *MatrixA.Matrix44f::Matrix44f)
   
    *This\ShaderProgram\SendUniformMatrix4fv("ModelMatrix", *MatrixA)
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The SendViewMatrix operator <<<<<
  
  Procedure SendViewMatrix(*This.Private_Members, *MatrixA.Matrix44f::Matrix44f)
   
    *This\ShaderProgram\SendUniformMatrix4fv("ViewMatrix", *MatrixA)
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The SendProjectionMatrix operator <<<<<
  
  Procedure SendProjectionMatrix(*This.Private_Members, *MatrixA.Matrix44f::Matrix44f)
   
    *This\ShaderProgram\SendUniformMatrix4fv("ProjectionMatrix", *MatrixA)
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The SendViewPosition operator <<<<<
  
  Procedure SendViewPosition(*This.Private_Members, *ViewPos.Vector3f::Vector3f)
    
    *This\ShaderProgram\SendUniformVector3fv("ViewPos", *ViewPos)
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The SendLight operator <<<<<
  
  Procedure SendLight(*This.Private_Members, *Light.Light::Light)
    
    *This\ShaderProgram\SendUniformVector3fv("LightPosition", *Light\GetPosition())
    *This\ShaderProgram\SendUniformColor3fv("LightColor", *Light\GetColor())
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The SendTextureUnits operator <<<<<
  
  Procedure SendTextureUnits(*This.Private_Members)
    
    *This\ShaderProgram\SendUniform1i("DiffuseMap", 0)

  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The Destructor <<<<<
  
  Procedure Free(*This.Private_Members)
    
    If *This\ShaderProgram <> #Null
      *This\ShaderProgram\Free()
    EndIf
    
    FreeStructure(*This)
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The Constructor <<<<<

  Procedure.i New()
    
    *This.Private_Members = AllocateStructure(Private_Members)
    *This\VirtualTable = ?START_METHODS
    
    *This\ShaderProgram = ShaderProgram::New("Entity-vs.glsl", "", "Entity-fs.glsl")
    
    *This\ShaderProgram\AddUniforms("ModelMatrix")
    *This\ShaderProgram\AddUniforms("ViewMatrix")
    *This\ShaderProgram\AddUniforms("ProjectionMatrix")
        
;     *This\ShaderProgram\AddUniforms("ViewPos")
    
    *This\ShaderProgram\AddUniforms("LightPosition")
    *This\ShaderProgram\AddUniforms("LightColor")
    
    *This\ShaderProgram\AddUniforms("DiffuseMap")
    
    ProcedureReturn *This
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The Virtual Table Entries <<<<<

  DataSection
    START_METHODS:
    Data.i @Bind()
    Data.i @Unbind()
    Data.i @Compile()
    Data.i @SendModelMatrix()
    Data.i @SendViewMatrix()
    Data.i @SendProjectionMatrix()
    Data.i @SendViewPosition()
    Data.i @SendLight()
    Data.i @SendTextureUnits()
    Data.i @Free()
    END_METHODS:
  EndDataSection
  
EndModule

; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< Code generated in : 00.001 seconds (84000.00 lines/second) <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

; <<<<<<<<<<<<<<<<<<<<<<<
; <<<<< END OF FILE <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<
; IDE Options = PureBasic 6.00 LTS (Linux - x64)
; Folding = ---
; EnableXP
; CompileSourceDirectory