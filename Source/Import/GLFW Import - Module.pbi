; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; Project name : GLFW Import Module
; File Name : GLFW Import - Module.pb
; File version: 1.0.0 Beta
; Programming : TO BE VALIDATED
; Programmed by : StarBootics
; Date : July 19th, 2022
; Last Update : July 19th, 2022
; PureBasic code : V6.00 LTS
; Platform : Windows, Linux, MacOS X
; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

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

DeclareModule GLFW
  
  #GLFW_TRUE = 1
  #GLFW_FALSE = 0
  
  #GLFW_RELEASE = 0
  #GLFW_PRESS = 1
  #GLFW_REPEAT = 2
  
  #GLFW_HAT_CENTERED = 0
  #GLFW_HAT_UP = 1
  #GLFW_HAT_RIGHT = 2
  #GLFW_HAT_DOWN = 4
  #GLFW_HAT_LEFT = 8
  #GLFW_HAT_RIGHT_UP = (#GLFW_HAT_RIGHT | #GLFW_HAT_UP)
  #GLFW_HAT_RIGHT_DOWN = (#GLFW_HAT_RIGHT | #GLFW_HAT_DOWN)
  #GLFW_HAT_LEFT_UP = (#GLFW_HAT_LEFT | #GLFW_HAT_UP)
  #GLFW_HAT_LEFT_DOWN = (#GLFW_HAT_LEFT | #GLFW_HAT_DOWN)
  
  #GLFW_KEY_UNKNOWN = -1
  
  #GLFW_KEY_SPACE             = 32
  #GLFW_KEY_APOSTROPHE        = 39  ;/* ' */
  #GLFW_KEY_COMMA             = 44  ;/* , */
  #GLFW_KEY_MINUS             = 45  ;/* - */
  #GLFW_KEY_PERIOD            = 46  ;/* . */
  #GLFW_KEY_SLASH             = 47  ;/* / */
  #GLFW_KEY_0                 = 48
  #GLFW_KEY_1                 = 49
  #GLFW_KEY_2                 = 50
  #GLFW_KEY_3                 = 51
  #GLFW_KEY_4                 = 52
  #GLFW_KEY_5                 = 53
  #GLFW_KEY_6                 = 54
  #GLFW_KEY_7                 = 55
  #GLFW_KEY_8                 = 56
  #GLFW_KEY_9                 = 57
  #GLFW_KEY_SEMICOLON         = 59  ;/* ; */
  #GLFW_KEY_EQUAL             = 61  ;/* = */
  #GLFW_KEY_A                 = 65
  #GLFW_KEY_B                 = 66
  #GLFW_KEY_C                 = 67
  #GLFW_KEY_D                 = 68
  #GLFW_KEY_E                 = 69
  #GLFW_KEY_F                 = 70
  #GLFW_KEY_G                 = 71
  #GLFW_KEY_H                 = 72
  #GLFW_KEY_I                 = 73
  #GLFW_KEY_J                 = 74
  #GLFW_KEY_K                 = 75
  #GLFW_KEY_L                 = 76
  #GLFW_KEY_M                 = 77
  #GLFW_KEY_N                 = 78
  #GLFW_KEY_O                 = 79
  #GLFW_KEY_P                 = 80
  #GLFW_KEY_Q                 = 81
  #GLFW_KEY_R                 = 82
  #GLFW_KEY_S                 = 83
  #GLFW_KEY_T                 = 84
  #GLFW_KEY_U                 = 85
  #GLFW_KEY_V                 = 86
  #GLFW_KEY_W                 = 87
  #GLFW_KEY_X                 = 88
  #GLFW_KEY_Y                 = 89
  #GLFW_KEY_Z                 = 90
  #GLFW_KEY_LEFT_BRACKET      = 91  ;/* [ */
  #GLFW_KEY_BACKSLASH         = 92  ;/* \ */
  #GLFW_KEY_RIGHT_BRACKET     = 93  ;/* ] */
  #GLFW_KEY_GRAVE_ACCENT      = 96  ;/* ` */
  #GLFW_KEY_WORLD_1           = 161 ;/* non-US #1 */
  #GLFW_KEY_WORLD_2           = 162 ;/* non-US #2 */
  
  #GLFW_KEY_ESCAPE            = 256
  #GLFW_KEY_ENTER             = 257
  #GLFW_KEY_TAB               = 258
  #GLFW_KEY_BACKSPACE         = 259
  #GLFW_KEY_INSERT            = 260
  #GLFW_KEY_DELETE            = 261
  #GLFW_KEY_RIGHT             = 262
  #GLFW_KEY_LEFT              = 263
  #GLFW_KEY_DOWN              = 264
  #GLFW_KEY_UP                = 265
  #GLFW_KEY_PAGE_UP           = 266
  #GLFW_KEY_PAGE_DOWN         = 267
  #GLFW_KEY_HOME              = 268
  #GLFW_KEY_END               = 269
  #GLFW_KEY_CAPS_LOCK         = 280
  #GLFW_KEY_SCROLL_LOCK       = 281
  #GLFW_KEY_NUM_LOCK          = 282
  #GLFW_KEY_PRINT_SCREEN      = 283
  #GLFW_KEY_PAUSE             = 284
  #GLFW_KEY_F1                = 290
  #GLFW_KEY_F2                = 291
  #GLFW_KEY_F3                = 292
  #GLFW_KEY_F4                = 293
  #GLFW_KEY_F5                = 294
  #GLFW_KEY_F6                = 295
  #GLFW_KEY_F7                = 296
  #GLFW_KEY_F8                = 297
  #GLFW_KEY_F9                = 298
  #GLFW_KEY_F10               = 299
  #GLFW_KEY_F11               = 300
  #GLFW_KEY_F12               = 301
  #GLFW_KEY_F13               = 302
  #GLFW_KEY_F14               = 303
  #GLFW_KEY_F15               = 304
  #GLFW_KEY_F16               = 305
  #GLFW_KEY_F17               = 306
  #GLFW_KEY_F18               = 307
  #GLFW_KEY_F19               = 308
  #GLFW_KEY_F20               = 309
  #GLFW_KEY_F21               = 310
  #GLFW_KEY_F22               = 311
  #GLFW_KEY_F23               = 312
  #GLFW_KEY_F24               = 313
  #GLFW_KEY_F25               = 314
  #GLFW_KEY_KP_0              = 320
  #GLFW_KEY_KP_1              = 321
  #GLFW_KEY_KP_2              = 322
  #GLFW_KEY_KP_3              = 323
  #GLFW_KEY_KP_4              = 324
  #GLFW_KEY_KP_5              = 325
  #GLFW_KEY_KP_6              = 326
  #GLFW_KEY_KP_7              = 327
  #GLFW_KEY_KP_8              = 328
  #GLFW_KEY_KP_9              = 329
  #GLFW_KEY_KP_DECIMAL        = 330
  #GLFW_KEY_KP_DIVIDE         = 331
  #GLFW_KEY_KP_MULTIPLY       = 332
  #GLFW_KEY_KP_SUBTRACT       = 333
  #GLFW_KEY_KP_ADD            = 334
  #GLFW_KEY_KP_ENTER          = 335
  #GLFW_KEY_KP_EQUAL          = 336
  #GLFW_KEY_LEFT_SHIFT        = 340
  #GLFW_KEY_LEFT_CONTROL      = 341
  #GLFW_KEY_LEFT_ALT          = 342
  #GLFW_KEY_LEFT_SUPER        = 343
  #GLFW_KEY_RIGHT_SHIFT       = 344
  #GLFW_KEY_RIGHT_CONTROL     = 345
  #GLFW_KEY_RIGHT_ALT         = 346
  #GLFW_KEY_RIGHT_SUPER       = 347
  #GLFW_KEY_MENU              = 348
  
  #GLFW_KEY_LAST              = #GLFW_KEY_MENU
  
  #GLFW_MOD_SHIFT           =  $0001
  #GLFW_MOD_CONTROL         =  $0002
  #GLFW_MOD_ALT             =  $0004
  #GLFW_MOD_SUPER           =  $0008
  #GLFW_MOD_CAPS_LOCK       =  $0010
  #GLFW_MOD_NUM_LOCK        =  $0020
  
  #GLFW_MOUSE_BUTTON_1        = 0
  #GLFW_MOUSE_BUTTON_2        = 1
  #GLFW_MOUSE_BUTTON_3        = 2
  #GLFW_MOUSE_BUTTON_4        = 3
  #GLFW_MOUSE_BUTTON_5        = 4
  #GLFW_MOUSE_BUTTON_6        = 5
  #GLFW_MOUSE_BUTTON_7        = 6
  #GLFW_MOUSE_BUTTON_8        = 7
  #GLFW_MOUSE_BUTTON_LAST     = #GLFW_MOUSE_BUTTON_8
  #GLFW_MOUSE_BUTTON_LEFT     = #GLFW_MOUSE_BUTTON_1
  #GLFW_MOUSE_BUTTON_RIGHT    = #GLFW_MOUSE_BUTTON_2
  #GLFW_MOUSE_BUTTON_MIDDLE   = #GLFW_MOUSE_BUTTON_3
  
  #GLFW_JOYSTICK_1            = 0
  #GLFW_JOYSTICK_2            = 1
  #GLFW_JOYSTICK_3            = 2
  #GLFW_JOYSTICK_4            = 3
  #GLFW_JOYSTICK_5            = 4
  #GLFW_JOYSTICK_6            = 5
  #GLFW_JOYSTICK_7            = 6
  #GLFW_JOYSTICK_8            = 7
  #GLFW_JOYSTICK_9            = 8
  #GLFW_JOYSTICK_10           = 9
  #GLFW_JOYSTICK_11           = 10
  #GLFW_JOYSTICK_12           = 11
  #GLFW_JOYSTICK_13           = 12
  #GLFW_JOYSTICK_14           = 13
  #GLFW_JOYSTICK_15           = 14
  #GLFW_JOYSTICK_16           = 15
  #GLFW_JOYSTICK_LAST         = #GLFW_JOYSTICK_16
  
  #GLFW_GAMEPAD_BUTTON_A               = 0
  #GLFW_GAMEPAD_BUTTON_B               = 1
  #GLFW_GAMEPAD_BUTTON_X               = 2
  #GLFW_GAMEPAD_BUTTON_Y               = 3
  #GLFW_GAMEPAD_BUTTON_LEFT_BUMPER     = 4
  #GLFW_GAMEPAD_BUTTON_RIGHT_BUMPER    = 5
  #GLFW_GAMEPAD_BUTTON_BACK            = 6
  #GLFW_GAMEPAD_BUTTON_START           = 7
  #GLFW_GAMEPAD_BUTTON_GUIDE           = 8
  #GLFW_GAMEPAD_BUTTON_LEFT_THUMB      = 9
  #GLFW_GAMEPAD_BUTTON_RIGHT_THUMB     = 10
  #GLFW_GAMEPAD_BUTTON_DPAD_UP         = 11
  #GLFW_GAMEPAD_BUTTON_DPAD_RIGHT      = 12
  #GLFW_GAMEPAD_BUTTON_DPAD_DOWN       = 13
  #GLFW_GAMEPAD_BUTTON_DPAD_LEFT       = 14
  #GLFW_GAMEPAD_BUTTON_LAST            = #GLFW_GAMEPAD_BUTTON_DPAD_LEFT
  
  #GLFW_GAMEPAD_BUTTON_CROSS       = #GLFW_GAMEPAD_BUTTON_A
  #GLFW_GAMEPAD_BUTTON_CIRCLE      = #GLFW_GAMEPAD_BUTTON_B
  #GLFW_GAMEPAD_BUTTON_SQUARE      = #GLFW_GAMEPAD_BUTTON_X
  #GLFW_GAMEPAD_BUTTON_TRIANGLE    = #GLFW_GAMEPAD_BUTTON_Y
  
  #GLFW_GAMEPAD_AXIS_LEFT_X        = 0
  #GLFW_GAMEPAD_AXIS_LEFT_Y        = 1
  #GLFW_GAMEPAD_AXIS_RIGHT_X       = 2
  #GLFW_GAMEPAD_AXIS_RIGHT_Y       = 3
  #GLFW_GAMEPAD_AXIS_LEFT_TRIGGER  = 4
  #GLFW_GAMEPAD_AXIS_RIGHT_TRIGGER = 5
  #GLFW_GAMEPAD_AXIS_LAST          = #GLFW_GAMEPAD_AXIS_RIGHT_TRIGGER
  
  #GLFW_NO_ERROR              = 0
  #GLFW_NOT_INITIALIZED       = $00010001
  #GLFW_NO_CURRENT_CONTEXT    = $00010002
  #GLFW_INVALID_ENUM          = $00010003
  #GLFW_INVALID_VALUE         = $00010004
  #GLFW_OUT_OF_MEMORY         = $00010005
  #GLFW_API_UNAVAILABLE       = $00010006
  #GLFW_VERSION_UNAVAILABLE   = $00010007
  #GLFW_PLATFORM_ERROR        = $00010008
  #GLFW_FORMAT_UNAVAILABLE      = $00010009
  #GLFW_NO_WINDOW_CONTEXT       = $0001000A
  #GLFW_FOCUSED                 = $00020001
  #GLFW_ICONIFIED               = $00020002
  #GLFW_RESIZABLE               = $00020003
  #GLFW_VISIBLE                 = $00020004
  #GLFW_DECORATED               = $00020005
  #GLFW_AUTO_ICONIFY            = $00020006
  #GLFW_FLOATING                = $00020007
  #GLFW_MAXIMIZED               = $00020008
  #GLFW_CENTER_CURSOR           = $00020009
  #GLFW_TRANSPARENT_FRAMEBUFFER = $0002000A
  #GLFW_HOVERED                 = $0002000B
  #GLFW_FOCUS_ON_SHOW           = $0002000C
  #GLFW_RED_BITS                = $00021001
  #GLFW_GREEN_BITS              = $00021002
  #GLFW_BLUE_BITS               = $00021003
  #GLFW_ALPHA_BITS              = $00021004
  #GLFW_DEPTH_BITS              = $00021005
  #GLFW_STENCIL_BITS            = $00021006
  #GLFW_ACCUM_RED_BITS          = $00021007
  #GLFW_ACCUM_GREEN_BITS        = $00021008
  #GLFW_ACCUM_BLUE_BITS         = $00021009
  #GLFW_ACCUM_ALPHA_BITS        = $0002100A
  #GLFW_AUX_BUFFERS             = $0002100B
  #GLFW_STEREO                  = $0002100C
  #GLFW_SAMPLES                 = $0002100D
  #GLFW_SRGB_CAPABLE            = $0002100E
  #GLFW_REFRESH_RATE            = $0002100F
  #GLFW_DOUBLEBUFFER            = $00021010
  #GLFW_CLIENT_API              = $00022001
  #GLFW_CONTEXT_VERSION_MAJOR   = $00022002
  #GLFW_CONTEXT_VERSION_MINOR   = $00022003
  #GLFW_CONTEXT_REVISION        = $00022004
  #GLFW_CONTEXT_ROBUSTNESS      = $00022005
  #GLFW_OPENGL_FORWARD_COMPAT   = $00022006
  #GLFW_OPENGL_DEBUG_CONTEXT    = $00022007
  #GLFW_OPENGL_PROFILE          = $00022008
  #GLFW_CONTEXT_RELEASE_BEHAVIOR = $00022009
  #GLFW_CONTEXT_NO_ERROR        = $0002200A
  #GLFW_CONTEXT_CREATION_API    = $0002200B
  #GLFW_SCALE_TO_MONITOR        = $0002200C
  #GLFW_COCOA_RETINA_FRAMEBUFFER = $00023001
  #GLFW_COCOA_FRAME_NAME         = $00023002
  #GLFW_COCOA_GRAPHICS_SWITCHING = $00023003
  #GLFW_X11_CLASS_NAME          = $00024001
  #GLFW_X11_INSTANCE_NAME       = $00024002
  
  #GLFW_NO_API                  =        0
  #GLFW_OPENGL_API              = $00030001
  #GLFW_OPENGL_ES_API           = $00030002
  
  #GLFW_NO_ROBUSTNESS           =        0
  #GLFW_NO_RESET_NOTIFICATION   = $00031001
  #GLFW_LOSE_CONTEXT_ON_RESET   = $00031002
  
  #GLFW_OPENGL_ANY_PROFILE      =        0
  #GLFW_OPENGL_CORE_PROFILE     = $00032001
  #GLFW_OPENGL_COMPAT_PROFILE   = $00032002
  
  #GLFW_CURSOR                  = $00033001
  #GLFW_STICKY_KEYS             = $00033002
  #GLFW_STICKY_MOUSE_BUTTONS    = $00033003
  #GLFW_LOCK_KEY_MODS           = $00033004
  #GLFW_RAW_MOUSE_MOTION        = $00033005
  
  #GLFW_CURSOR_NORMAL           = $00034001
  #GLFW_CURSOR_HIDDEN           = $00034002
  #GLFW_CURSOR_DISABLED         = $00034003
  
  #GLFW_ANY_RELEASE_BEHAVIOR    =        0
  #GLFW_RELEASE_BEHAVIOR_FLUSH  = $00035001
  #GLFW_RELEASE_BEHAVIOR_NONE   = $00035002
  
  #GLFW_NATIVE_CONTEXT_API      = $00036001
  #GLFW_EGL_CONTEXT_API         = $00036002
  #GLFW_OSMESA_CONTEXT_API      = $00036003
  
  #GLFW_ARROW_CURSOR            = $00036001
  #GLFW_IBEAM_CURSOR            = $00036002
  #GLFW_CROSSHAIR_CURSOR        = $00036003
  #GLFW_HAND_CURSOR             = $00036004
  #GLFW_HRESIZE_CURSOR          = $00036005
  #GLFW_VRESIZE_CURSOR          = $00036006
  #GLFW_CONNECTED               = $00040001
  #GLFW_DISCONNECTED            = $00040002
  
  #GLFW_JOYSTICK_HAT_BUTTONS    = $00050001
  
  #GLFW_COCOA_CHDIR_RESOURCES   = $00051001
  #GLFW_COCOA_MENUBAR           = $00051002
  
  #GLFW_DONT_CARE              = -1
  
  Structure GLFWvidmode
    
    Width.l
    Height.l
    RedBits.l
    GreenBits.l
    BlueBits.l
    RefreshRate.l
    
  EndStructure
  
  Structure GLFWgammaramp
    
    *Red
    *Green
    *Blue
    Size.l
    
  EndStructure
  
  Structure GLFWimage
    
    Width.l
    Height.l
    *Pixel
    
  EndStructure
  
  Structure GLFWgamepadstate
    
    Button.a[15]
    Axis.f[6]
    
  EndStructure
  
  CompilerSelect #PB_Compiler_OS
      
    CompilerCase #PB_OS_Windows 
      #LIB_GLFW_FILE_NAME = "glfw3dll.lib"
      
    CompilerCase #PB_OS_Linux
      #LIB_GLFW_FILE_NAME = "/usr/lib/x86_64-linux-gnu/libglfw.so.3.3"
      
    CompilerCase #PB_OS_MacOS
      #LIB_GLFW_FILE_NAME = ""
      
  CompilerEndSelect

  ImportC #LIB_GLFW_FILE_NAME
    
    glfwInit.l()
    glfwTerminate()
    glfwInitHint(hint.l, value.l)
    glfwGetVersion(*Major, *Minor, *Revision)
    glfwGetVersionString_() As "glfwGetVersionString"
    glfwGetError.l(Description.p-utf8)
    glfwGetMonitors.i(*Count)
    glfwGetPrimaryMonitor.i()
    glfwGetMonitorPos(*Monitor, *xpos, *ypos)
    glfwGetMonitorWorkarea(*Monitor, *xpos, *ypos, *width, *height)
    glfwGetMonitorPhysicalSize(*Monitor, *WidthMM, *HeightMM)
    glfwGetMonitorContentScale(*Monitor, *xscale, *yscale)
    glfwGetMonitorName_(*Monitor) As "glfwGetMonitorName"
    glfwSetMonitorUserPointer(*Monitor, *Pointer)
    glfwGetMonitorUserPointer.i(*Monitor)
    glfwSetMonitorCallback(*Callback)
    glfwGetVideoModes(*Monitor, *Count)
    glfwGetVideoMode(*Monitor)
    glfwSetGamma(*Monitor, Gamma.f)
    glfwGetGammaRamp.i(*Monitor)
    glfwSetGammaRamp(*Monitor, *Ramp.GLFWgammaramp)
    glfwDefaultWindowHints()
    glfwWindowHint(hint.l, value.l)
    glfwWindowHintString(hint.l, value.p-utf8)
    glfwCreateWindow.i(width.l, height.l, title.p-utf8, *Monitor, *Share)
    glfwDestroyWindow(*Window)
    glfwWindowShouldClose.l(*Window)
    glfwSetWindowShouldClose(*Window, value.l)
    glfwSetWindowTitle(*Window, Title.p-utf8)
    glfwSetWindowIcon(*Window, Count.l, *Images.GLFWimage)
    glfwGetWindowPos(*Window, *xpos, *ypos)
    glfwSetWindowPos(*Window, xpos.l, ypos.l)
    glfwGetWindowSize(*Window, *width, *height)
    glfwSetWindowSizeLimits(*Window, minwidth.l, minheight.l, maxwidth.l, maxheight.l)
    glfwSetWindowAspectRatio(*Window, numer.l, denom.l)
    glfwSetWindowSize(*Window, width.l, height.l)
    glfwGetFramebufferSize(*Window, *width, *height)
    glfwGetWindowFrameSize(*Window, *left, *top, *right, *bottom)
    glfwGetWindowContentScale(*Window, *xscale, *yscale)
    glfwGetWindowOpacity(*Window)
    glfwSetWindowOpacity(*Window, opacity.f)
    glfwIconifyWindow(*Window)
    glfwRestoreWindow(*Window)
    glfwMaximizeWindow(*Window)
    glfwShowWindow(*Window)
    glfwHideWindow(*Window)
    glfwFocusWindow(*Window)
    glfwRequestWindowAttention(*Window)
    glfwGetWindowMonitor.i(*Window)
    glfwSetWindowMonitor(*Window, *Monitor, xpos.l, ypos.l, width.l, height.l, refreshRate.l)
    glfwGetWindowAttrib.l(*Window, attrib.l)
    glfwSetWindowAttrib(*Window, attrib.l, value.l)
    glfwSetWindowUserPointer(*Window, *pointer)
    glfwGetWindowUserPointer.i(*Window)
    glfwSetWindowPosCallback(*Window, *Callback)
    glfwSetWindowSizeCallback(*Window, *Callback)
    glfwSetWindowCloseCallback(*Window, *Callback)
    glfwSetWindowRefreshCallback(*Window, *Callback)
    glfwSetWindowFocusCallback(*Window, *Callback)
    glfwSetWindowIconifyCallback(*Window, *Callback)
    glfwSetWindowMaximizeCallback(*Window, *Callback)
    glfwSetFramebufferSizeCallback(*Window, *Callback)
    glfwSetWindowContentScaleCallback(*Window, *Callback)
    glfwPollEvents()
    glfwWaitEvents()
    glfwWaitEventsTimeout(Timeout.d)
    glfwPostEmptyEvent()
    glfwGetInputMode.l(*Window, Mode.l)
    glfwSetInputMode(*Window, Mode.l, Value.l)
    glfwRawMouseMotionSupported.l()
    glfwGetKeyName_(key.l, scancode.l) As "glfwGetKeyName"
    glfwGetKeyScancode.l(key.l)
    glfwGetKey.l(*Window, key.l)
    glfwGetMouseButton.l(*Window, Button.l)
    glfwGetCursorPos(*Window, *xpos, *ypos)
    glfwSetCursorPos(*Window, xpos.d, ypos.d)
    glfwCreateCursor.i(*Image.GLFWimage, xhot.l, yhot.l)
    glfwCreateStandardCursor.i(shape.l)
    glfwDestroyCursor(*Cursor)
    glfwSetCursor(*Window, *Cursor)
    glfwSetKeyCallback(*Window, *Callback)
    glfwSetCharCallback(*Window, *Callback)
    glfwSetCharModsCallback(*Window, *Callback)
    glfwSetMouseButtonCallback(*Window, *Callback)
    glfwSetCursorPosCallback(*Window, *Callback)
    glfwSetCursorEnterCallback(*Window, *Callback)
    glfwSetScrollCallback(*Window, *Callback)
    glfwSetDropCallback(*Window, *Callback)
    glfwJoystickPresent.l(jid.l)
    glfwGetJoystickAxes.i(jid.l, *Count)
    glfwGetJoystickButtons.i(jid.l, *Count)
    glfwGetJoystickHats.i(jid.l, *Count)
    glfwGetJoystickName_(jid.l) As "glfwGetJoystickName"
    glfwGetJoystickGUID_(jid.l) As "glfwGetJoystickGUID"
    glfwSetJoystickUserPointer(jid.l, *Pointer)
    glfwGetJoystickUserPointer.i(jid.l)
    glfwJoystickIsGamepad.l(jid.l)
    glfwSetJoystickCallback(*Callback)
    glfwUpdateGamepadMappings(String.p-utf8)
    glfwGetGamepadName_(jid.l) As "glfwGetGamepadName"
    glfwGetGamepadState(jid.l, *State.GLFWgamepadstate)
    glfwSetClipboardString(*Window, String.p-utf8)
    glfwGetClipboardString_(*Window) As "glfwGetClipboardString"
    glfwGetTime.d()
    glfwSetTime(time.d)
    glfwGetTimerValue.q()
    glfwGetTimerFrequency.q()
    glfwMakeContextCurrent(*Window)
    glfwGetCurrentContext.i()
    glfwSwapBuffers(*Window)
    glfwSwapInterval(Interval.l)
    glfwExtensionSupported.i(Extension.p-utf8)
    glfwGetProcAddress.i(procname.p-utf8)
    glfwVulkanSupported.l()
    glfwGetRequiredInstanceExtensions.i(*Count)
    glfwGetInstanceProcAddress(*Instance, procname.p-utf8)
    glfwGetPhysicalDevicePresentationSupport.l(*Instance, *device, queuefamily.l)
    glfwCreateWindowSurface(*Instance, *Window, *Allocator, *Surface)
    
  EndImport
  
  Declare.s glfwGetVersionString()
  Declare.s glfwGetMonitorName(*Monitor)
  Declare.s glfwGetKeyName(key.l, scancode.l)
  Declare.s glfwGetJoystickName(jid.l)
  Declare.s glfwGetJoystickGUID(jid.l)
  Declare.s glfwGetGamepadName(jid.l)
  Declare.s glfwGetClipboardString(*Window)
  
EndDeclareModule

Module GLFW
  
  Procedure.s glfwGetVersionString()
    
    *VersionString = glfwGetVersionString_()
    
    If *VersionString <> #Null
      ProcedureReturn PeekS(*VersionString, -1, #PB_Ascii)
    EndIf
    
  EndProcedure
  
  Procedure.s glfwGetMonitorName(*Monitor)
    
    *MonitorName = glfwGetMonitorName_(*Monitor)
    
    If *MonitorName <> #Null
      ProcedureReturn PeekS(*MonitorName, -1, #PB_UTF8)
    EndIf
    
  EndProcedure
  
  Procedure.s glfwGetKeyName(key.l, scancode.l)
    
    *KeyName = glfwGetKeyName_(key, scancode)
    
    If *KeyName <> #Null
      ProcedureReturn PeekS(*KeyName, -1, #PB_UTF8)
    EndIf
    
  EndProcedure
  
  Procedure.s glfwGetJoystickName(jid.l)
    
    *Name = glfwGetJoystickName_(jid)
    
    If *Name <> #Null
      ProcedureReturn PeekS(*Name, -1, #PB_UTF8)
    EndIf
    
  EndProcedure
  
  Procedure.s glfwGetJoystickGUID(jid.l)
    
    *GUID = glfwGetJoystickGUID_(jid)
    
    If *GUID <> #Null
      ProcedureReturn PeekS(*GUID, -1, #PB_UTF8)
    EndIf
    
  EndProcedure
  
  Procedure.s glfwGetGamepadName(jid.l)
    
    *GamepadName = glfwGetGamepadName_(jid)
    
    If *GamepadName <> #Null 
      ProcedureReturn PeekS(*GamepadName, -1, #PB_UTF8)
    EndIf
    
  EndProcedure
  
  Procedure.s glfwGetClipboardString(*Window)
    
    *ClipboardString = glfwGetClipboardString_(*Window)
    
    If *ClipboardString <> #Null
      ProcedureReturn PeekS(*ClipboardString, -1, #PB_UTF8)
    EndIf
    
  EndProcedure
  
EndModule

CompilerIf #PB_Compiler_IsMainFile
  
  GLFW::glfwInit()
  Debug GLFW::glfwGetVersionString()
  
  *Window = GLFW::glfwCreateWindow(800, 600, "Joysyick Test", #Null, #Null)
  
  If GLFW::glfwJoystickPresent(GLFW::#GLFW_JOYSTICK_1)
    
    Debug GLFW::glfwGetJoystickName(GLFW::#GLFW_JOYSTICK_1)
    
  EndIf
  
  GLFW::glfwTerminate()
  
CompilerEndIf

; <<<<<<<<<<<<<<<<<<<<<<<
; <<<<< END OF FILE <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<
; IDE Options = PureBasic 6.00 LTS (Linux - x64)
; Folding = ---
; EnableXP
; LinkerOptions = linker options
; CompileSourceDirectory