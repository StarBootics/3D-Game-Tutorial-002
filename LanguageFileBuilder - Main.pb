; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; Project Name : OpenGL 3D Game Tutorial
; File name : LanguageFileBuilder - Main.pb
; File Version : 1.0.0
; Programming : OK
; Programmed by : Guillaume Saumure
; AKA : StarBootics
; Email : gsaumure@cgocable.ca
; Date : July 21st, 2022
; Mise à jour : July 21st, 2022
; Coded for PureBasic : V6.00 LTS
; Platform : Windows, Linux, MacOS
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

IncludeFile "Source/Utils/BuiltPathDirectories.pbi"
IncludeFile "Source/Utils/Language.pbi"

CompilerIf #PB_Compiler_Debugger
  
  LanguagePath.s = GetPathPart(ProgramFilename()) + "res" + #PS$ + "language" + #PS$
  
  BuiltPathDirectories.BuiltPathDirectories::BuiltPathDirectories = BuiltPathDirectories::New()
  BuiltPathDirectories\AddDirectoriesEx(LanguagePath)
  BuiltPathDirectories\DoIt()
  BuiltPathDirectories\Free()
  
  English.Language::Language = Language::New(LanguagePath, "English.xml")
  French.Language::Language = Language::New(LanguagePath, "Français.xml")
  
  English\AddTableElement("OpenGL 3D Game Tutorial", "OpenGL 3D Game Tutorial")
  French\AddTableElement("OpenGL 3D Game Tutorial", "Tutoriel de jeu 3D OpenGL")
  
  English\AddTableElement("Fatal Error", "Fatal Error")
  French\AddTableElement("Fatal Error", "Erreur Fatale")
  
  English\AddTableElement("GLFW::glfwInit() : Failure !", "GLFW::glfwInit() : Failure !")
  French\AddTableElement("GLFW::glfwInit() : Failure !", "GLFW::glfwInit() : Échec !")

  English\AddTableElement("GLFW::glfwCreateWindow() : Failure !", "GLFW::glfwCreateWindow() : Failure !")
  French\AddTableElement("GLFW::glfwCreateWindow() : Failure !", "GLFW::glfwCreateWindow() : Échec !")
  
  English\AddTableElement("GLEW::glewInit() : Failure !", "GLEW::glewInit() : Failure !")
  French\AddTableElement("GLEW::glewInit() : Failure !", "GLEW::glewInit() : Échec !")
  
  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  
  English\CreateTableFile()
  French\CreateTableFile()
 
  English\Free()
  French\Free()
  
CompilerElse
  
  DebuggerError("Please turn ON the Debugger!")
  
CompilerEndIf

; <<<<<<<<<<<<<<<<<<<<<<<
; <<<<< END OF FILE <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<
; IDE Options = PureBasic 6.00 LTS (Linux - x64)
; Folding = -
; EnableXP
; CompileSourceDirectory