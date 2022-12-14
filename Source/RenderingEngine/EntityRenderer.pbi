; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; AUTOMATICALLY GENERATED CODE, DO NOT MODIFY
; UNLESS YOU REALLY, REALLY, REALLY MEAN IT !!
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; Code generated by : Dev-Object - V2.0.0 Beta 7
; Project name : OpenGL 3D Game Tutorial
; File name : EntityRenderer.pbi
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

DeclareModule EntityRenderer
  
  Interface EntityRenderer
    
    GetEntityShader.i()
    Render(*Entities.Entities::Entities, *Camera.Camera::Camera, *Light.Light::Light)
    Free()
    
  EndInterface
  
  Declare.i New(*GameFolderSystem.GameFolderSystem::GameFolderSystem)
  
EndDeclareModule

Module EntityRenderer
 
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Structure declaration <<<<<

  Structure Private_Members
    
    VirtualTable.i
    EntityShader.EntityShader::EntityShader
    
  EndStructure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The observators <<<<<

  Procedure.i GetEntityShader(*This.Private_Members)
    
    ProcedureReturn *This\EntityShader
  EndProcedure

  Procedure Render(*This.Private_Members, *Entities.Entities::Entities, *Camera.Camera::Camera, *Light.Light::Light)
    
    
    *This\EntityShader\Bind()
    
    ViewMatrix.Matrix44f::Matrix44f = *Camera\ComputeViewMatrix()
    *This\EntityShader\SendViewMatrix(ViewMatrix)
    ViewMatrix\Free()
    
    *This\EntityShader\SendLight(*Light)
    
    *Entities\ResetEntities()
    
    While *Entities\NextEntities()
      
      *Entity.Entity::Entity = *Entities\GetEntities()
      
      *Model.Model::Model = *Entity\GetModel()
      ModelMatrix.Matrix44f::Matrix44f = *Entity\ComputeModelMatrix()
      *This\EntityShader\SendModelMatrix(ModelMatrix)
      
      *Mesh.Mesh::Mesh = *Model\GetMesh()
      *Texture.Texture::Texture = *Model\GetTexture()
      
      
      
      GL20::glActiveTexture(OGL::#GL_TEXTURE0)
      *This\EntityShader\SendTextureUnits()
      GL30::glBindTexture(OGL::#GL_TEXTURE_2D, *Texture\GetID())
      
      *Mesh\Draw()
      
      ModelMatrix\Free()
      
    Wend
    
    *This\EntityShader\Unbind()
    
  EndProcedure

  ; <<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The Destructor <<<<<

  Procedure Free(*This.Private_Members)

    If *This\EntityShader <> #Null
      *This\EntityShader\Free()
    EndIf
    
    FreeStructure(*This)
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The Constructor <<<<<

  Procedure.i New(*GameFolderSystem.GameFolderSystem::GameFolderSystem)
    
    *This.Private_Members = AllocateStructure(Private_Members)
    *This\VirtualTable = ?START_METHODS
    
    *This\EntityShader = EntityShader::New()
    *This\EntityShader\Compile(*GameFolderSystem\GetShadersPath())

    ProcedureReturn *This
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The Virtual Table Entries <<<<<

  DataSection
    START_METHODS:
    Data.i @GetEntityShader()
    Data.i @Render()
    Data.i @Free()
    END_METHODS:
  EndDataSection
  
EndModule

; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< Code generated in : 00.001 seconds (144000.00 lines/second) <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

; <<<<<<<<<<<<<<<<<<<<<<<
; <<<<< END OF FILE <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<
; IDE Options = PureBasic 6.00 LTS (Linux - x64)
; Folding = --
; EnableXP
; CompileSourceDirectory