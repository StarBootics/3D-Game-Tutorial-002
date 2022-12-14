; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; AUTOMATICALLY GENERATED CODE, DO NOT MODIFY
; UNLESS YOU REALLY, REALLY, REALLY MEAN IT !!
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; Code generated by : Dev-Object - V2.0.0 Beta 7
; Project name : OpenGL 3D Game Tutorial
; File name : Game.pbi
; File Version : 0.0.1
; Programmation : In progress
; Programmed by : Guillaume Saumure
; AKA : StarBootics
; E-mail : gsaumure@cgocable.ca
; Creation Date : May 21st, 2021
; Last update : July 20th, 2022
; Coded for PureBasic : V6.00 LTS
; Platform : Windows, Linux, MacOS X
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

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

DeclareModule Game
  
  Interface Game
    
    Load()
    Run()
    Free()
    
  EndInterface
  
  Declare.i New()
  
EndDeclareModule

Module Game
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Structure declaration <<<<<

  Structure Private_Members
    
    VirtualTable.i
    ExitCondition.i
    GameFolderSystem.GameFolderSystem::GameFolderSystem
    Prefs.CustomPrefs::CustomPrefs
    Language.Language::Language
    Screen.Screen::Screen
    CallBackSystem.CallBackSystem::CallBackSystem
    CoreEngine.CoreEngine::CoreEngine
    
  EndStructure
  
  ; <<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Callbacks <<<<<
  
  Procedure WindowPositionChangeCallBack(UserData.i, PosX.l, PosY.l)
    
    *This.Private_Members = UserData
    
    If *This\Screen\GetCurrentMode() = 0
      *This\Screen\SetPosX(PosX)
      *This\Screen\SetPosY(PosY)
    EndIf
    
  EndProcedure
  
  Procedure WindowSizeChangeCallBack(UserData.i, Width.l, Height.l)
    
    *This.Private_Members = UserData
    
    If *This\Screen\GetCurrentMode() = 0
      *This\Screen\SetWidth(Width)
      *This\Screen\SetHeight(Height)
    EndIf
    
  EndProcedure
  
  Procedure FrameBufferSizeChangeCallBack(UserData.i, Width.l, Height.l)
    
    *This.Private_Members = UserData
    
    *This\Screen\MakeContextCurrent()
    
    *MasterRenderer.MasterRenderer::MasterRenderer = *This\CoreEngine\GetMasterRenderer()
    *MasterRenderer\RefreshPerspectiveMatrix(Width / Height)

    GL20::glViewport(0, 0, Width, Height)
    
  EndProcedure

  Procedure KeyboardInputCallBack(UserData.i, Key.l, Scancode.l, Action.l, Mods.l)
    
    *This.Private_Members = UserData
    
    If Key = GLFW::#GLFW_KEY_F1 And Action = GLFW::#GLFW_RELEASE
      *This\Screen\ToggleCurrentMode()
    EndIf
    
    If Key = GLFW::#GLFW_KEY_ESCAPE And Action = GLFW::#GLFW_RELEASE
      *This\ExitCondition = #True
    EndIf
    
    *MasterRenderer.MasterRenderer::MasterRenderer = *This\CoreEngine\GetMasterRenderer()
    *Camera.Camera::Camera = *MasterRenderer\GetCamera()
    
    If Key = GLFW::#GLFW_KEY_W 
      
      If Action = GLFW::#GLFW_PRESS
        *Camera\SetActivateMoveZ(-1.0)
      ElseIf Action = GLFW::#GLFW_RELEASE
        *Camera\SetActivateMoveZ(0.0)
      EndIf
      
    EndIf
    
    If Key = GLFW::#GLFW_KEY_S
      If Action = GLFW::#GLFW_PRESS
        *Camera\SetActivateMoveZ(1.0)
      ElseIf Action = GLFW::#GLFW_RELEASE
        *Camera\SetActivateMoveZ(0.0)
      EndIf
    EndIf
    
    If Key = GLFW::#GLFW_KEY_A
      If Action = GLFW::#GLFW_PRESS
        *Camera\SetActivateMoveX(-1.0)
      ElseIf Action = GLFW::#GLFW_RELEASE
        *Camera\SetActivateMoveX(0.0)
      EndIf
    EndIf
    
    If Key = GLFW::#GLFW_KEY_D
      If Action = GLFW::#GLFW_PRESS
        *Camera\SetActivateMoveX(1.0)
      ElseIf Action = GLFW::#GLFW_RELEASE
        *Camera\SetActivateMoveX(0.0)
      EndIf
    EndIf
    
    If Key = GLFW::#GLFW_KEY_UP
      If Action = GLFW::#GLFW_PRESS
        *Camera\SetActivateMoveY(1.0)
      ElseIf Action = GLFW::#GLFW_RELEASE
        *Camera\SetActivateMoveY(0.0)
      EndIf
    EndIf
    
    If Key = GLFW::#GLFW_KEY_DOWN
      If Action = GLFW::#GLFW_PRESS
        *Camera\SetActivateMoveY(-1.0)
      ElseIf Action = GLFW::#GLFW_RELEASE
        *Camera\SetActivateMoveY(0.0)
      EndIf
    EndIf
    
  EndProcedure
  
  Procedure TestMousePosition(UserData.i, PosX.d, PosY.d)
    
    *This.Private_Members = UserData
    
    Debug "Mouse Position -> " + StrD(PosX, 3) + " : " + StrD(PosY, 3)
    
  EndProcedure
  
  Procedure TestMouseWheel(UserData.i, xOffset.d, yOffset.d)
    
    *This.Private_Members = UserData
    
    Debug "Mouse Wheel -> " + StrD(yOffset, 6)
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The Load operator <<<<<
  
  Procedure Load(*This.Private_Members)
    
    *This\Screen\MakeContextCurrent()
    
    *MasterRenderer.MasterRenderer::MasterRenderer = *This\CoreEngine\GetMasterRenderer()
    *MasterRenderer\Initialize()
    
    *Entities.Entities::Entities = *This\CoreEngine\GetEntities()
    
    *MasterRenderer\SelectModels(0)

    *Entities\AddEntitiesEx(Entity::New(*MasterRenderer\GetModels(), Vector3f::New(-10.0, 0.0, -15.0), 0.0, 0.0, 0.0, 1.0))
    *Entities\AddEntitiesEx(Entity::New(*MasterRenderer\GetModels(), Vector3f::New(10.0, 0.0, -15.0), 0.0, 0.0, 0.0, 1.0))
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The Run operator <<<<<
  
  Procedure Run(*This.Private_Members)
    
    *This\CallBackSystem\SetWindowPositionCallback(@WindowPositionChangeCallBack(), *This)
    *This\CallBackSystem\SetWindowSizeCallback(@WindowSizeChangeCallBack(), *This)
    *This\CallBackSystem\SetFramebufferSizeCallback(@FrameBufferSizeChangeCallBack(), *This)
    *This\CallBackSystem\SetKeyboardInputCallBack(@KeyboardInputCallBack(), *This)
    *This\CallBackSystem\SetScrollInputCallBack(@TestMouseWheel(), *This)
    *This\CallBackSystem\SetCursorPositionCallBack(@TestMousePosition(), *This)
    
    Frames.l = 0
    FrameCounter.d = 0.0
    
    LastTime.d = *This\Screen\GetTime()
    UnprocessedTime.d = 0.0
    
    While *This\ExitCondition = #False
      
      Render.i = #False
      StartTime.d = *This\Screen\GetTime()
      PassedTime.d = StartTime - LastTime
      LastTime = StartTime
      
      UnprocessedTime + PassedTime
      FrameCounter + PassedTime
      
      While UnprocessedTime > *This\Screen\GetFrameTime()
        
        Render = #True
        UnprocessedTime - *This\Screen\GetFrameTime()
        
        ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
        ; We are processing all Event
        
        If *This\Screen\WindowShouldClose() = #True
          *This\ExitCondition = #True
          Render = #False ; If we are going to close the Window, no need to Render
        Else
          *This\Screen\PollEvents()
        EndIf
        
        ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
        ; After all event are processed it's time to Update the Core
        ; engine
        
        *This\CoreEngine\Integrate(*This\Screen\GetFrameTime())

        If FrameCounter >= 1.0
          Debug Frames
          Frames = 0
          FrameCounter = 0.0
        EndIf
        
      Wend
      
      If Render = #True
        
        *This\Screen\MakeContextCurrent()
        
        GL20::glClear(#GL_COLOR_BUFFER_BIT | #GL_DEPTH_BUFFER_BIT) 
        
        *This\CoreEngine\RenderScene()
        
        ; Debug "Render Scene"
        *This\Screen\SwapBuffers()
        
        Frames + 1
        
      Else
        
        Delay(1)
        
      EndIf
      
    Wend
     
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The Destructor <<<<<

  Procedure Free(*This.Private_Members)
    
    If *This\Prefs <> #Null
      *This\Prefs\Free()
    EndIf
    
    If *This\Language <> #Null
      *This\Language\Free()
    EndIf
    
    ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
    ; We need to Free the CallBackSystem while the Window is
    ; still alive. So we must do it before Freeing the Screen.
    
    If *This\CallBackSystem <> #Null
      *This\CallBackSystem\Free()
    EndIf
    
    ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
    ; We need to Free the CoreEngine while the Window is still 
    ; alive. So we must do it before Freeing the Screen.
    
    If *This\CoreEngine <> #Null
      *This\CoreEngine\Free()
    EndIf
    
    If *This\Screen <> #Null
      *This\Screen\Free()
    EndIf
    
    FreeStructure(*This)
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The Constructor <<<<<
  
  Procedure.i New()
    
    *This.Private_Members = AllocateStructure(Private_Members)
    *This\VirtualTable = ?START_METHODS
    
    UseZipPacker()
    UseJPEGImageDecoder()
    UsePNGImageDecoder()
    
    CompilerSelect #PB_Compiler_OS
        
      CompilerCase #PB_OS_Windows 
        UserPath.s = GetEnvironmentVariable("APPDATA") + #PS$ + "GameTutorials" + #PS$
        
      CompilerCase #PB_OS_Linux
        UserPath.s = GetHomeDirectory() + ".game_tutorials" + #PS$
        
      CompilerCase #PB_OS_MacOS
        UserPath.s = GetHomeDirectory() + ".game_tutorials" + #PS$ ; This might be wrong
        
    CompilerEndSelect
    
    *This\GameFolderSystem = GameFolderSystem::New(GetPathPart(ProgramFilename()), UserPath)
    
    If *This\GameFolderSystem\GetError() = #True
      
      ErrorLog.ErrorLog::ErrorLog = ErrorLog::New("GameTutorial002.log", "Game::New()")
      ErrorLog\AddContentsEx("The res folder don't exist !")
      ErrorLog\CreateErrorLogFile()
      ErrorLog\Free()
      End -1
      
    Else
      
      If FindString(GetEnvironmentVariable("LANGUAGE"), "fr")
        LanguageName.s = "Fran?ais"
      Else
        LanguageName = "English"
      EndIf
      
      *This\Prefs = CustomPrefs::New(*This\GameFolderSystem\GetUserPath() + "GameTutorial002.prefs")
      *This\Language = Language::New(*This\GameFolderSystem\GetLanguagePath(), LanguageName + ".xml")
      
      If FileSize(*This\Prefs\GetFileName()) = -1
        *This\Language\AddPrefsGroup("Language", *This\Prefs)
        *This\Prefs\SaveOnFile()
      Else
        *This\Prefs\LoadFromFile()
        *This\Language\ExtractPrefsGroup("Language", *This\Prefs)
      EndIf
      
      *This\Language\LoadTableFile()
      
      *This\Screen = Screen::New("OpenGL 3D Game Tutorial", 50, 50, 1200, 675, 0, 1, 3, 3, *This\Language)
      *This\CallBackSystem = CallBackSystem::New(*This\Screen\GetWindow())
      *This\CoreEngine = CoreEngine::New(1200/675, *This\GameFolderSystem)
      
    EndIf
    
    ProcedureReturn *This
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The Virtual Table Entries <<<<<

  DataSection
    START_METHODS:
    Data.i @Load()
    Data.i @Run()
    Data.i @Free()
    END_METHODS:
  EndDataSection
  
EndModule

; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< Code generated in : 00.001 seconds (95000.00 lines/second) <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

; <<<<<<<<<<<<<<<<<<<<<<<
; <<<<< END OF FILE <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<
; IDE Options = PureBasic 6.00 LTS (Linux - x64)
; Folding = ---
; EnableXP
; CompileSourceDirectory