; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; AUTOMATICALLY GENERATED CODE, DO NOT MODIFY
; UNLESS YOU REALLY, REALLY, REALLY MEAN IT !!
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; Code generated by : Dev-Object - V2.0.0 Beta 7
; Project name : OpenGL 3D Game Tutorial
; File name : CallBackSystem.pbi
; File Version : 0.0.1
; Programmation : In progress
; Programmed by : Guillaume Saumure
; AKA : StarBootics
; E-mail : gsaumure@cgocable.ca
; Creation Date : July 21st, 2022
; Last update : July 21st, 2022
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

DeclareModule CallBackSystem
  
  Interface CallBackSystem
    
    SetWindowPositionCallback(*CallBack, *CallBackData)
    SetWindowSizeCallback(*CallBack, *CallBackData)
    SetFramebufferSizeCallback(*CallBack, *CallBackData)
    SetKeyboardInputCallBack(*CallBack, *CallBackData)
    SetCursorPositionCallBack(*CallBack, *CallBackData)
    SetMouseButtonCallBack(*CallBack, *CallBackData)
    SetScrollInputCallBack(*CallBack, *CallBackData)
    Free()
    
  EndInterface
 
  Declare.i New(*Window)
  
EndDeclareModule

Module CallBackSystem
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Structures declaration <<<<<
  
  Structure CallBack
    
    *CallBackProc
    *CallBackProcData
    
  EndStructure  
  
  Structure Private_Members
    
    VirtualTable.i
    *Window
    
    WindowPositionCallBack.CallBack
    WindowSizeCallBack.CallBack
    FramebufferSizeCallBack.CallBack
    KeyboardInputCallBack.CallBack
    CursorPositionCallBack.CallBack
    MouseButtonCallBack.CallBack
    ScrollInputCallBack.CallBack
    
  EndStructure
  
  ; <<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Prototypes <<<<<
  
  Prototype WindowPositionCallBack(*UserData, PosX.l, PosY.l)
  Prototype WindowSizeCallBack(*UserData, Width.l, Height.l)
  Prototype FramebufferSizeCallBack(*UserData, Width.l, Height.l)
  Prototype KeyboardInputCallBack(*UserData, Key.l, Scancode.l, Action.l, Mods.l)
  Prototype CursorPositionCallBack(*UserData, PosX.d, PosY.d)
  Prototype MouseButtonCallBack(*UserData, Button.l, Action.l, Mods.l)
  Prototype ScrollInputCallBack(*UserData, xOffset.d, yOffset.d)
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< Re-Routing Callbacks <<<<<
  
  Procedure Private_WindowPositionCallBack(*Window, PosX.l, PosY.l)
    
    *This.Private_Members = GLFW::glfwGetWindowUserPointer(*Window)
    
    If *This\WindowPositionCallBack\CallBackProc <> #Null
      WindowPositionCallBack.WindowPositionCallBack = *This\WindowPositionCallBack\CallBackProc
      WindowPositionCallBack(*This\WindowPositionCallBack\CallBackProcData, PosX, PosY)
    EndIf
    
  EndProcedure
  
  Procedure Private_WindowSizeCallBack(*Window, Width.l, Height.l)
    
    *This.Private_Members = GLFW::glfwGetWindowUserPointer(*Window)
    
    If *This\WindowSizeCallBack\CallBackProc <> #Null
      WindowSizeCallBack.WindowSizeCallBack = *This\WindowSizeCallBack\CallBackProc
      WindowSizeCallBack(*This\WindowSizeCallBack\CallBackProcData, Width, Height)
    EndIf
    
  EndProcedure
  
  Procedure Private_FramebufferSizeCallBack(*Window, Width.l, Height.l)
    
    *This.Private_Members = GLFW::glfwGetWindowUserPointer(*Window)
    
    If *This\FramebufferSizeCallBack\CallBackProc <> #Null
      FramebufferSizeCallBack.FramebufferSizeCallBack = *This\FramebufferSizeCallBack\CallBackProc
      FramebufferSizeCallBack(*This\FramebufferSizeCallBack\CallBackProcData, Width, Height)
    EndIf
    
  EndProcedure
  
  Procedure Private_KeyboardInputCallBack(*Window, Key.l, Scancode.l, Action.l, Mods.l)
    
    *This.Private_Members = GLFW::glfwGetWindowUserPointer(*Window)
    
    If *This\KeyboardInputCallBack\CallBackProc <> #Null
      KeyboardInputCallBack.KeyboardInputCallBack = *This\KeyboardInputCallBack\CallBackProc
      KeyboardInputCallBack(*This\KeyboardInputCallBack\CallBackProcData, Key, Scancode, Action, Mods)
    EndIf
    
  EndProcedure
  
  Procedure Private_MouseButtonCallBack(*Window, Button.l, Action.l, Mods.l)
    
    *This.Private_Members = GLFW::glfwGetWindowUserPointer(*Window)
    
    If *This\MouseButtonCallBack\CallBackProc <> #Null
      MouseButtonCallBack.MouseButtonCallBack = *This\MouseButtonCallBack\CallBackProc
      MouseButtonCallBack(*This\MouseButtonCallBack\CallBackProcData, Button, Action, Mods)
    EndIf
    
  EndProcedure
  
  Procedure Private_ScrollInputCallBack(*Window, xOffset.d, yOffset.d)
    
    *This.Private_Members = GLFW::glfwGetWindowUserPointer(*Window)
    
    If *This\ScrollInputCallBack\CallBackProc <> #Null
      ScrollInputCallBack.ScrollInputCallBack = *This\ScrollInputCallBack\CallBackProc
      ScrollInputCallBack(*This\ScrollInputCallBack\CallBackProcData, xOffset, yOffset)
    EndIf
    
  EndProcedure
  
  Procedure Private_CursorPositionCallBack(*Window, xOffset.d, yOffset.d)
    
    *This.Private_Members = GLFW::glfwGetWindowUserPointer(*Window)
    
    If *This\CursorPositionCallBack\CallBackProc <> #Null
      CursorPositionCallBack.CursorPositionCallBack = *This\CursorPositionCallBack\CallBackProc
      CursorPositionCallBack(*This\CursorPositionCallBack\CallBackProcData, xOffset, yOffset)
    EndIf
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The SetWindowPositionCallback operator <<<<<
  
  Procedure SetWindowPositionCallback(*This.Private_Members, *CallBack, *CallBackData)
    
    *This\WindowPositionCallBack\CallBackProc = *CallBack
    *This\WindowPositionCallBack\CallBackProcData = *CallBackData
    
  EndProcedure  
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The SetWindowSizeCallback operator <<<<<
  
  Procedure SetWindowSizeCallback(*This.Private_Members, *CallBack, *CallBackData)
    
    *This\WindowSizeCallBack\CallBackProc = *CallBack
    *This\WindowSizeCallBack\CallBackProcData = *CallBackData
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The SetFramebufferSizeCallback operator <<<<<
  
  Procedure SetFramebufferSizeCallback(*This.Private_Members, *CallBack, *CallBackData)
    
    *This\FramebufferSizeCallBack\CallBackProc = *CallBack
    *This\FramebufferSizeCallBack\CallBackProcData = *CallBackData
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The SetKeyboardInputCallBack operator <<<<<
  
  Procedure SetKeyboardInputCallBack(*This.Private_Members, *CallBack, *CallBackData)
    
    *This\KeyboardInputCallBack\CallBackProc = *CallBack
    *This\KeyboardInputCallBack\CallBackProcData = *CallBackData
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The SetCursorPositionCallBack operator <<<<<
  
  Procedure SetCursorPositionCallBack(*This.Private_Members, *CallBack, *CallBackData)
    
    *This\CursorPositionCallBack\CallBackProc = *CallBack
    *This\CursorPositionCallBack\CallBackProcData = *CallBackData
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The SetMouseButtonCallBack operator <<<<<
  
  Procedure SetMouseButtonCallBack(*This.Private_Members, *CallBack, *CallBackData)
    
    *This\MouseButtonCallBack\CallBackProc = *CallBack
    *This\MouseButtonCallBack\CallBackProcData = *CallBackData
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The SetScrollInputCallBack operator <<<<<
  
  Procedure SetScrollInputCallBack(*This.Private_Members, *CallBack, *CallBackData)
    
    *This\ScrollInputCallBack\CallBackProc = *CallBack
    *This\ScrollInputCallBack\CallBackProcData = *CallBackData
    
  EndProcedure

  ; <<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The Destructor <<<<<

  Procedure Free(*This.Private_Members)
    
    GLFW::glfwSetWindowPosCallback(*This\Window, #Null)
    GLFW::glfwSetWindowSizeCallback(*This\Window, #Null)
    GLFW::glfwSetFramebufferSizeCallback(*This\Window, #Null)
    GLFW::glfwSetKeyCallback(*This\Window, #Null)
    GLFW::glfwSetCursorPosCallback(*This\Window, #Null)
    GLFW::glfwSetMouseButtonCallback(*This\Window, #Null)
    GLFW::glfwSetScrollCallback(*This\Window, #Null)
    
    FreeStructure(*This)
    
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The Constructor <<<<<

  Procedure.i New(*Window)
    
    *This.Private_Members = AllocateStructure(Private_Members)
    *This\VirtualTable = ?START_METHODS
    
    *This\Window = *Window
    
    GLFW::glfwSetWindowUserPointer(*Window, *This) 	
    
    GLFW::glfwSetWindowPosCallback(*Window, @Private_WindowPositionCallBack())
    GLFW::glfwSetWindowSizeCallback(*Window, @Private_WindowSizeCallBack())
    GLFW::glfwSetFramebufferSizeCallback(*Window, @Private_FramebufferSizeCallBack())
    GLFW::glfwSetKeyCallback(*Window, @Private_KeyboardInputCallBack())
    GLFW::glfwSetCursorPosCallback(*Window, @Private_CursorPositionCallBack())
    GLFW::glfwSetMouseButtonCallback(*Window, @Private_MouseButtonCallBack())
    GLFW::glfwSetScrollCallback(*Window, @Private_ScrollInputCallBack())
    
    ProcedureReturn *This
  EndProcedure
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  ; <<<<< The Virtual Table Entries <<<<<

  DataSection
    START_METHODS:
    Data.i @SetWindowPositionCallback()
    Data.i @SetWindowSizeCallback()
    Data.i @SetFramebufferSizeCallback()
    Data.i @SetKeyboardInputCallBack()
    Data.i @SetCursorPositionCallBack()
    Data.i @SetMouseButtonCallBack()
    Data.i @SetScrollInputCallBack()
    Data.i @Free()
    END_METHODS:
  EndDataSection
  
EndModule

; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; <<<<< Code generated in : 00.001 seconds (97000.00 lines/second) <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

; <<<<<<<<<<<<<<<<<<<<<<<
; <<<<< END OF FILE <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<
; IDE Options = PureBasic 6.00 LTS (Linux - x64)
; Folding = ----
; EnableXP
; CompileSourceDirectory