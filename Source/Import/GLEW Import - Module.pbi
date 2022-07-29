; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; Project name : GLEW Import Module
; File Name : GLEW Import - Module.pb
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

DeclareModule OGL
  
  ;   #GL_INC                             = 1
  ;   #GL_VERSION_1_1                     = 1
  ;   #GL_ACCUM                           = $0100
  ;   #GL_LOAD                            = $0101
  ;   #GL_RETURN                          = $0102
  ;   #GL_MULT                            = $0103
  ;   #GL_ADD                             = $0104
  ;   #GL_NEVER                           = $0200
  ;   #GL_LESS                            = $0201
  ;   #GL_EQUAL                           = $0202
    #GL_LEQUAL                          = $0203
  ;   #GL_GREATER                         = $0204
  ;   #GL_NOTEQUAL                        = $0205
  ;   #GL_GEQUAL                          = $0206
  ;   #GL_ALWAYS                          = $0207
  ;   #GL_CURRENT_BIT                     = $00000001
  ;   #GL_POINT_BIT                       = $00000002
  ;   #GL_LINE_BIT                        = $00000004
  ;   #GL_POLYGON_BIT                     = $00000008
  ;   #GL_POLYGON_STIPPLE_BIT             = $00000010
  ;   #GL_PIXEL_MODE_BIT                  = $00000020
  ;   #GL_LIGHTING_BIT                    = $00000040
  ;   #GL_FOG_BIT                         = $00000080
   #GL_DEPTH_BUFFER_BIT                = $00000100
  ;   #GL_ACCUM_BUFFER_BIT                = $00000200
  ;   #GL_STENCIL_BUFFER_BIT              = $00000400
  ;   #GL_VIEWPORT_BIT                    = $00000800
  ;   #GL_TRANSFORM_BIT                   = $00001000
  ;   #GL_ENABLE_BIT                      = $00002000
   #GL_COLOR_BUFFER_BIT                = $00004000
  ;   #GL_HINT_BIT                        = $00008000
  ;   #GL_EVAL_BIT                        = $00010000
  ;   #GL_LIST_BIT                        = $00020000
  ;   #GL_TEXTURE_BIT                     = $00040000
  ;   #GL_SCISSOR_BIT                     = $00080000
  ;   #GL_ALL_ATTRIB_BITS                 = $000FFFFF
  ;   #GL_POINTS                          = $0000
  ;   #GL_LINES                           = $0001
  ;   #GL_LINE_LOOP                       = $0002
  ;   #GL_LINE_STRIP                      = $0003
  ;   #GL_TRIANGLES                       = $0004
  ;   #GL_TRIANGLE_STRIP                  = $0005
  ;   #GL_TRIANGLE_FAN                    = $0006
  ;   #GL_QUADS                           = $0007
  ;   #GL_QUAD_STRIP                      = $0008
  ;   #GL_POLYGON                         = $0009
  ;   #GL_ZERO                            = 0
  ;   #GL_ONE                             = 1
  ;   #GL_SRC_COLOR                       = $0300
  ;   #GL_ONE_MINUS_SRC_COLOR             = $0301
  ;   #GL_SRC_ALPHA                       = $0302
  ;   #GL_ONE_MINUS_SRC_ALPHA             = $0303
  ;   #GL_DST_ALPHA                       = $0304
  ;   #GL_ONE_MINUS_DST_ALPHA             = $0305
  ;   #GL_DST_COLOR                       = $0306
  ;   #GL_ONE_MINUS_DST_COLOR             = $0307
  ;   #GL_SRC_ALPHA_SATURATE              = $0308
  ;   #GL_TRUE                            = 1
  ;   #GL_FALSE                           = 0
  ;   #GL_CLIP_PLANE0                     = $3000
  ;   #GL_CLIP_PLANE1                     = $3001
  ;   #GL_CLIP_PLANE2                     = $3002
  ;   #GL_CLIP_PLANE3                     = $3003
  ;   #GL_CLIP_PLANE4                     = $3004
  ;   #GL_CLIP_PLANE5                     = $3005
  ;   #GL_BYTE                            = $1400
  ;   #GL_UNSIGNED_BYTE                   = $1401
  ;   #GL_SHORT                           = $1402
  ;   #GL_UNSIGNED_SHORT                  = $1403
  ;   #GL_INT                             = $1404
  ;   #GL_LONG                            = $1404
  ;   #GL_UNSIGNED_INT                    = $1405
  ;   #GL_FLOAT                           = $1406
  ;   #GL_2_BYTES                         = $1407
  ;   #GL_3_BYTES                         = $1408
  ;   #GL_4_BYTES                         = $1409
  ;   #GL_DOUBLE                          = $140A
     #GL_NONE                            = 0
  ;   #GL_FRONT_LEFT                      = $0400
  ;   #GL_FRONT_RIGHT                     = $0401
  ;   #GL_BACK_LEFT                       = $0402
  ;   #GL_BACK_RIGHT                      = $0403
  ;   #GL_FRONT                           = $0404
  ;   #GL_BACK                            = $0405
  ;   #GL_LEFT                            = $0406
  ;   #GL_RIGHT                           = $0407
  ;   #GL_FRONT_AND_BACK                  = $0408
  ;   #GL_AUX0                            = $0409
  ;   #GL_AUX1                            = $040A
  ;   #GL_AUX2                            = $040B
  ;   #GL_AUX3                            = $040C
  ;   #GL_NO_ERROR                        = 0
  ;   #GL_INVALID_ENUM                    = $0500
  ;   #GL_INVALID_VALUE                   = $0501
  ;   #GL_INVALID_OPERATION               = $0502
  ;   #GL_STACK_OVERFLOW                  = $0503
  ;   #GL_STACK_UNDERFLOW                 = $0504
  ;   #GL_OUT_OF_MEMORY                   = $0505
  ;   #GL_2D                              = $0600
  ;   #GL_3D                              = $0601
  ;   #GL_3D_COLOR                        = $0602
  ;   #GL_3D_COLOR_TEXTURE                = $0603
  ;   #GL_4D_COLOR_TEXTURE                = $0604
  ;   #GL_PASS_THROUGH_TOKEN              = $0700
  ;   #GL_POINT_TOKEN                     = $0701
  ;   #GL_LINE_TOKEN                      = $0702
  ;   #GL_POLYGON_TOKEN                   = $0703
  ;   #GL_BITMAP_TOKEN                    = $0704
  ;   #GL_DRAW_PIXEL_TOKEN                = $0705
  ;   #GL_COPY_PIXEL_TOKEN                = $0706
  ;   #GL_LINE_RESET_TOKEN                = $0707
  ;   #GL_EXP                             = $0800
  ;   #GL_EXP2                            = $0801
  ;   #GL_CW                              = $0900
  ;   #GL_CCW                             = $0901
  ;   #GL_COEFF                           = $0A00
  ;   #GL_ORDER                           = $0A01
  ;   #GL_DOMAIN                          = $0A02
  ;   #GL_CURRENT_COLOR                   = $0B00
  ;   #GL_CURRENT_INDEX                   = $0B01
  ;   #GL_CURRENT_NORMAL                  = $0B02
  ;   #GL_CURRENT_TEXTURE_COORDS          = $0B03
  ;   #GL_CURRENT_RASTER_COLOR            = $0B04
  ;   #GL_CURRENT_RASTER_INDEX            = $0B05
  ;   #GL_CURRENT_RASTER_TEXTURE_COORDS   = $0B06
  ;   #GL_CURRENT_RASTER_POSITION         = $0B07
  ;   #GL_CURRENT_RASTER_POSITION_VALID   = $0B08
  ;   #GL_CURRENT_RASTER_DISTANCE         = $0B09
  ;   #GL_POINT_SMOOTH                    = $0B10
  ;   #GL_POINT_SIZE                      = $0B11
  ;   #GL_POINT_SIZE_RANGE                = $0B12
  ;   #GL_POINT_SIZE_GRANULARITY          = $0B13
  ;   #GL_LINE_SMOOTH                     = $0B20
  ;   #GL_LINE_WIDTH                      = $0B21
  ;   #GL_LINE_WIDTH_RANGE                = $0B22
  ;   #GL_LINE_WIDTH_GRANULARITY          = $0B23
  ;   #GL_LINE_STIPPLE                    = $0B24
  ;   #GL_LINE_STIPPLE_PATTERN            = $0B25
  ;   #GL_LINE_STIPPLE_REPEAT             = $0B26
  ;   #GL_LIST_MODE                       = $0B30
  ;   #GL_MAX_LIST_NESTING                = $0B31
  ;   #GL_LIST_BASE                       = $0B32
  ;   #GL_LIST_INDEX                      = $0B33
  ;   #GL_POLYGON_MODE                    = $0B40
  ;   #GL_POLYGON_SMOOTH                  = $0B41
  ;   #GL_POLYGON_STIPPLE                 = $0B42
  ;   #GL_EDGE_FLAG                       = $0B43
  ;   #GL_CULL_FACE                       = $0B44
  ;   #GL_CULL_FACE_MODE                  = $0B45
  ;   #GL_FRONT_FACE                      = $0B46
  ;   #GL_LIGHTING                        = $0B50
  ;   #GL_LIGHT_MODEL_LOCAL_VIEWER        = $0B51
  ;   #GL_LIGHT_MODEL_TWO_SIDE            = $0B52
  ;   #GL_LIGHT_MODEL_AMBIENT             = $0B53
  ;   #GL_SHADE_MODEL                     = $0B54
  ;   #GL_COLOR_MATERIAL_FACE             = $0B55
  ;   #GL_COLOR_MATERIAL_PARAMETER        = $0B56
  ;   #GL_COLOR_MATERIAL                  = $0B57
  ;   #GL_FOG                             = $0B60
  ;   #GL_FOG_INDEX                       = $0B61
  ;   #GL_FOG_DENSITY                     = $0B62
  ;   #GL_FOG_START                       = $0B63
  ;   #GL_FOG_END                         = $0B64
  ;   #GL_FOG_MODE                        = $0B65
  ;   #GL_FOG_COLOR                       = $0B66
  ;   #GL_DEPTH_RANGE                     = $0B70
  ;   #GL_DEPTH_TEST                      = $0B71
  ;   #GL_DEPTH_WRITEMASK                 = $0B72
  ;   #GL_DEPTH_CLEAR_VALUE               = $0B73
  ;   #GL_DEPTH_FUNC                      = $0B74
  ;   #GL_ACCUM_CLEAR_VALUE               = $0B80
  ;   #GL_STENCIL_TEST                    = $0B90
  ;   #GL_STENCIL_CLEAR_VALUE             = $0B91
  ;   #GL_STENCIL_FUNC                    = $0B92
  ;   #GL_STENCIL_VALUE_MASK              = $0B93
  ;   #GL_STENCIL_FAIL                    = $0B94
  ;   #GL_STENCIL_PASS_DEPTH_FAIL         = $0B95
  ;   #GL_STENCIL_PASS_DEPTH_PASS         = $0B96
  ;   #GL_STENCIL_REF                     = $0B97
  ;   #GL_STENCIL_WRITEMASK               = $0B98
  ;   #GL_MATRIX_MODE                     = $0BA0
  ;   #GL_NORMALIZE                       = $0BA1
  ;   #GL_VIEWPORT                        = $0BA2
  ;   #GL_MODELVIEW_STACK_DEPTH           = $0BA3
  ;   #GL_PROJECTION_STACK_DEPTH          = $0BA4
  ;   #GL_TEXTURE_STACK_DEPTH             = $0BA5
  ;   #GL_MODELVIEW_MATRIX                = $0BA6
  ;   #GL_PROJECTION_MATRIX               = $0BA7
  ;   #GL_TEXTURE_MATRIX                  = $0BA8
  ;   #GL_ATTRIB_STACK_DEPTH              = $0BB0
  ;   #GL_CLIENT_ATTRIB_STACK_DEPTH       = $0BB1
  ;   #GL_ALPHA_TEST                      = $0BC0
  ;   #GL_ALPHA_TEST_FUNC                 = $0BC1
  ;   #GL_ALPHA_TEST_REF                  = $0BC2
  ;   #GL_DITHER                          = $0BD0
  ;   #GL_BLEND_DST                       = $0BE0
  ;   #GL_BLEND_SRC                       = $0BE1
   #GL_BLEND                           = $0BE2
  ;   #GL_LOGIC_OP_MODE                   = $0BF0
  ;   #GL_INDEX_LOGIC_OP                  = $0BF1
  ;   #GL_COLOR_LOGIC_OP                  = $0BF2
  ;   #GL_AUX_BUFFERS                     = $0C00
  ;   #GL_DRAW_BUFFER                     = $0C01
  ;   #GL_READ_BUFFER                     = $0C02
  ;   #GL_SCISSOR_BOX                     = $0C10
  ;   #GL_SCISSOR_TEST                    = $0C11
  ;   #GL_INDEX_CLEAR_VALUE               = $0C20
  ;   #GL_INDEX_WRITEMASK                 = $0C21
  ;   #GL_COLOR_CLEAR_VALUE               = $0C22
  ;   #GL_COLOR_WRITEMASK                 = $0C23
  ;   #GL_INDEX_MODE                      = $0C30
  ;   #GL_RGBA_MODE                       = $0C31
  ;   #GL_DOUBLEBUFFER                    = $0C32
  ;   #GL_STEREO                          = $0C33
  ;   #GL_RENDER_MODE                     = $0C40
  ;   #GL_PERSPECTIVE_CORRECTION_HINT     = $0C50
  ;   #GL_POINT_SMOOTH_HINT               = $0C51
  ;   #GL_LINE_SMOOTH_HINT                = $0C52
  ;   #GL_POLYGON_SMOOTH_HINT             = $0C53
  ;   #GL_FOG_HINT                        = $0C54
  ;   #GL_TEXTURE_GEN_S                   = $0C60
  ;   #GL_TEXTURE_GEN_T                   = $0C61
  ;   #GL_TEXTURE_GEN_R                   = $0C62
  ;   #GL_TEXTURE_GEN_Q                   = $0C63
  ;   #GL_PIXEL_MAP_I_TO_I                = $0C70
  ;   #GL_PIXEL_MAP_S_TO_S                = $0C71
  ;   #GL_PIXEL_MAP_I_TO_R                = $0C72
  ;   #GL_PIXEL_MAP_I_TO_G                = $0C73
  ;   #GL_PIXEL_MAP_I_TO_B                = $0C74
  ;   #GL_PIXEL_MAP_I_TO_A                = $0C75
  ;   #GL_PIXEL_MAP_R_TO_R                = $0C76
  ;   #GL_PIXEL_MAP_G_TO_G                = $0C77
  ;   #GL_PIXEL_MAP_B_TO_B                = $0C78
  ;   #GL_PIXEL_MAP_A_TO_A                = $0C79
  ;   #GL_PIXEL_MAP_I_TO_I_SIZE           = $0CB0
  ;   #GL_PIXEL_MAP_S_TO_S_SIZE           = $0CB1
  ;   #GL_PIXEL_MAP_I_TO_R_SIZE           = $0CB2
  ;   #GL_PIXEL_MAP_I_TO_G_SIZE           = $0CB3
  ;   #GL_PIXEL_MAP_I_TO_B_SIZE           = $0CB4
  ;   #GL_PIXEL_MAP_I_TO_A_SIZE           = $0CB5
  ;   #GL_PIXEL_MAP_R_TO_R_SIZE           = $0CB6
  ;   #GL_PIXEL_MAP_G_TO_G_SIZE           = $0CB7
  ;   #GL_PIXEL_MAP_B_TO_B_SIZE           = $0CB8
  ;   #GL_PIXEL_MAP_A_TO_A_SIZE           = $0CB9
  ;   #GL_UNPACK_SWAP_BYTES               = $0CF0
  ;   #GL_UNPACK_LSB_FIRST                = $0CF1
  ;   #GL_UNPACK_ROW_LENGTH               = $0CF2
  ;   #GL_UNPACK_SKIP_ROWS                = $0CF3
  ;   #GL_UNPACK_SKIP_PIXELS              = $0CF4
  ;   #GL_UNPACK_ALIGNMENT                = $0CF5
  ;   #GL_PACK_SWAP_BYTES                 = $0D00
  ;   #GL_PACK_LSB_FIRST                  = $0D01
  ;   #GL_PACK_ROW_LENGTH                 = $0D02
  ;   #GL_PACK_SKIP_ROWS                  = $0D03
  ;   #GL_PACK_SKIP_PIXELS                = $0D04
  ;   #GL_PACK_ALIGNMENT                  = $0D05
  ;   #GL_MAP_COLOR                       = $0D10
  ;   #GL_MAP_STENCIL                     = $0D11
  ;   #GL_INDEX_SHIFT                     = $0D12
  ;   #GL_INDEX_OFFSET                    = $0D13
  ;   #GL_RED_SCALE                       = $0D14
  ;   #GL_RED_BIAS                        = $0D15
  ;   #GL_ZOOM_X                          = $0D16
  ;   #GL_ZOOM_Y                          = $0D17
  ;   #GL_GREEN_SCALE                     = $0D18
  ;   #GL_GREEN_BIAS                      = $0D19
  ;   #GL_BLUE_SCALE                      = $0D1A
  ;   #GL_BLUE_BIAS                       = $0D1B
  ;   #GL_ALPHA_SCALE                     = $0D1C
  ;   #GL_ALPHA_BIAS                      = $0D1D
  ;   #GL_DEPTH_SCALE                     = $0D1E
  ;   #GL_DEPTH_BIAS                      = $0D1F
  ;   #GL_MAX_EVAL_ORDER                  = $0D30
  ;   #GL_MAX_LIGHTS                      = $0D31
  ;   #GL_MAX_CLIP_PLANES                 = $0D32
  ;   #GL_MAX_TEXTURE_SIZE                = $0D33
  ;   #GL_MAX_PIXEL_MAP_TABLE             = $0D34
  ;   #GL_MAX_ATTRIB_STACK_DEPTH          = $0D35
  ;   #GL_MAX_MODELVIEW_STACK_DEPTH       = $0D36
  ;   #GL_MAX_NAME_STACK_DEPTH            = $0D37
  ;   #GL_MAX_PROJECTION_STACK_DEPTH      = $0D38
  ;   #GL_MAX_TEXTURE_STACK_DEPTH         = $0D39
  ;   #GL_MAX_VIEWPORT_DIMS               = $0D3A
  ;   #GL_MAX_CLIENT_ATTRIB_STACK_DEPTH   = $0D3B
  ;   #GL_SUBPIXEL_BITS                   = $0D50
  ;   #GL_INDEX_BITS                      = $0D51
  ;   #GL_RED_BITS                        = $0D52
  ;   #GL_GREEN_BITS                      = $0D53
  ;   #GL_BLUE_BITS                       = $0D54
  ;   #GL_ALPHA_BITS                      = $0D55
  ;   #GL_DEPTH_BITS                      = $0D56
  ;   #GL_STENCIL_BITS                    = $0D57
  ;   #GL_ACCUM_RED_BITS                  = $0D58
  ;   #GL_ACCUM_GREEN_BITS                = $0D59
  ;   #GL_ACCUM_BLUE_BITS                 = $0D5A
  ;   #GL_ACCUM_ALPHA_BITS                = $0D5B
  ;   #GL_NAME_STACK_DEPTH                = $0D70
  ;   #GL_AUTO_NORMAL                     = $0D80
  ;   #GL_MAP1_COLOR_4                    = $0D90
  ;   #GL_MAP1_INDEX                      = $0D91
  ;   #GL_MAP1_NORMAL                     = $0D92
  ;   #GL_MAP1_TEXTURE_COORD_1            = $0D93
  ;   #GL_MAP1_TEXTURE_COORD_2            = $0D94
  ;   #GL_MAP1_TEXTURE_COORD_3            = $0D95
  ;   #GL_MAP1_TEXTURE_COORD_4            = $0D96
  ;   #GL_MAP1_VERTEX_3                   = $0D97
  ;   #GL_MAP1_VERTEX_4                   = $0D98
  ;   #GL_MAP2_COLOR_4                    = $0DB0
  ;   #GL_MAP2_INDEX                      = $0DB1
  ;   #GL_MAP2_NORMAL                     = $0DB2
  ;   #GL_MAP2_TEXTURE_COORD_1            = $0DB3
  ;   #GL_MAP2_TEXTURE_COORD_2            = $0DB4
  ;   #GL_MAP2_TEXTURE_COORD_3            = $0DB5
  ;   #GL_MAP2_TEXTURE_COORD_4            = $0DB6
  ;   #GL_MAP2_VERTEX_3                   = $0DB7
  ;   #GL_MAP2_VERTEX_4                   = $0DB8
  ;   #GL_MAP1_GRID_DOMAIN                = $0DD0
  ;   #GL_MAP1_GRID_SEGMENTS              = $0DD1
  ;   #GL_MAP2_GRID_DOMAIN                = $0DD2
  ;   #GL_MAP2_GRID_SEGMENTS              = $0DD3
  ;   #GL_TEXTURE_1D                      = $0DE0
    #GL_TEXTURE_2D                      = $0DE1
  ;   #GL_FEEDBACK_BUFFER_POINTER         = $0DF0
  ;   #GL_FEEDBACK_BUFFER_SIZE            = $0DF1
  ;   #GL_FEEDBACK_BUFFER_TYPE            = $0DF2
  ;   #GL_SELECTION_BUFFER_POINTER        = $0DF3
  ;   #GL_SELECTION_BUFFER_SIZE           = $0DF4
  ;   #GL_TEXTURE_WIDTH                   = $1000
  ;   #GL_TEXTURE_HEIGHT                  = $1001
  ;   #GL_TEXTURE_INTERNAL_FORMAT         = $1003
  ;   #GL_TEXTURE_BORDER_COLOR            = $1004
  ;   #GL_TEXTURE_BORDER                  = $1005
  ;   #GL_DONT_CARE                       = $1100
  ;   #GL_FASTEST                         = $1101
  ;   #GL_NICEST                          = $1102
  ;   #GL_LIGHT0                          = $4000
  ;   #GL_LIGHT1                          = $4001
  ;   #GL_LIGHT2                          = $4002
  ;   #GL_LIGHT3                          = $4003
  ;   #GL_LIGHT4                          = $4004
  ;   #GL_LIGHT5                          = $4005
  ;   #GL_LIGHT6                          = $4006
  ;   #GL_LIGHT7                          = $4007
  ;   
  ;   ; /* Buffer Objects */
  ;   
  #GL_ARRAY_BUFFER                   = $8892
  #GL_ELEMENT_ARRAY_BUFFER           = $8893
  ;   #GL_ARRAY_BUFFER_BINDING               = $8894
  ;   #GL_ELEMENT_ARRAY_BUFFER_BINDING       = $8895
  ;   #GL_VERTEX_ARRAY_BUFFER_BINDING        = $8896
  ;   #GL_NORMAL_ARRAY_BUFFER_BINDING        = $8897
  ;   #GL_COLOR_ARRAY_BUFFER_BINDING         = $8898
  ;   #GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING = $889A
  #GL_STREAM_DRAW                    = $88E0
  #GL_STATIC_DRAW                    = $88E4
  #GL_DYNAMIC_DRAW                   = $88E8
  ;   #GL_BUFFER_SIZE                    = $8764
  ;   #GL_BUFFER_USAGE                   = $8765
  ;   #GL_AMBIENT                         = $1200
  ;   #GL_DIFFUSE                         = $1201
  ;   #GL_SPECULAR                        = $1202
  ;   #GL_POSITION                        = $1203
  ;   #GL_SPOT_DIRECTION                  = $1204
  ;   #GL_SPOT_EXPONENT                   = $1205
  ;   #GL_SPOT_CUTOFF                     = $1206
  ;   #GL_CONSTANT_ATTENUATION            = $1207
  ;   #GL_LINEAR_ATTENUATION              = $1208
  ;   #GL_QUADRATIC_ATTENUATION           = $1209
  ;   #GL_COMPILE                         = $1300
  ;   #GL_COMPILE_AND_EXECUTE             = $1301
  ;   #GL_CLEAR                           = $1500
  ;   #GL_AND                             = $1501
  ;   #GL_AND_REVERSE                     = $1502
  ;   #GL_COPY                            = $1503
  ;   #GL_AND_INVERTED                    = $1504
  ;   #GL_NOOP                            = $1505
  ;   #GL_XOR                             = $1506
  ;   #GL_OR                              = $1507
  ;   #GL_NOR                             = $1508
  ;   #GL_EQUIV                           = $1509
  ;   #GL_INVERT                          = $150A
  ;   #GL_OR_REVERSE                      = $150B
  ;   #GL_COPY_INVERTED                   = $150C
  ;   #GL_OR_INVERTED                     = $150D
  ;   #GL_NAND                            = $150E
  ;   #GL_SET                             = $150F
  ;   #GL_EMISSION                        = $1600
  ;   #GL_SHININESS                       = $1601
  ;   #GL_AMBIENT_AND_DIFFUSE             = $1602
  ;   #GL_COLOR_INDEXES                   = $1603
  ;   #GL_MODELVIEW                       = $1700
  ;   #GL_PROJECTION                      = $1701
  ;   #GL_TEXTURE                         = $1702
  ;   #GL_COLOR                           = $1800
  ;   #GL_DEPTH                           = $1801
  ;   #GL_STENCIL                         = $1802
  ;   #GL_COLOR_INDEX                     = $1900
  ;   #GL_STENCIL_INDEX                   = $1901
  ;   #GL_DEPTH_COMPONENT                 = $1902
  ;   #GL_RED                             = $1903
  ;   #GL_GREEN                           = $1904
  ;   #GL_BLUE                            = $1905
  ;   #GL_ALPHA                           = $1906
  ;   #GL_RGB                             = $1907
  #GL_RGBA                            = $1908
  
  ;   #GL_LUMINANCE                       = $1909
  ;   #GL_LUMINANCE_ALPHA                 = $190A
  ;   #GL_BITMAP                          = $1A00
  ;   #GL_POINT                           = $1B00
  ;   #GL_LINE                            = $1B01
  ;   #GL_FILL                            = $1B02
  ;   #GL_RENDER                          = $1C00
  ;   #GL_FEEDBACK                        = $1C01
  ;   #GL_SELECT                          = $1C02
  ;   #GL_FLAT                            = $1D00
  ;   #GL_SMOOTH                          = $1D01
  ;   #GL_KEEP                            = $1E00
  ;   #GL_REPLACE                         = $1E01
  ;   #GL_INCR                            = $1E02
  ;   #GL_DECR                            = $1E03
  ;   #GL_VENDOR                          = $1F00
  ;   #GL_RENDERER                        = $1F01
  ;   #GL_VERSION                         = $1F02
  
  ;   #GL_EXTENSIONS                      = $1F03
  #GL_NUM_EXTENSIONS                    = $821D
  #GL_SHADING_LANGUAGE_VERSION      = $8B8C
  
  #GL_DELETE_STATUS                = $8B80
  #GL_COMPILE_STATUS                 = $8B81
  #GL_LINK_STATUS                    = $8B82
  #GL_VALIDATE_STATUS                = $8B83
  #GL_INFO_LOG_LENGTH                = $8B84
  #GL_ATTACHED_SHADERS               = $8B85
  #GL_ACTIVE_UNIFORMS                = $8B86
  #GL_ACTIVE_UNIFORM_MAX_LENGTH      = $8B87
  #GL_SHADER_SOURCE_LENGTH           = $8B88
  #GL_ACTIVE_ATTRIBUTES              = $8B89
  #GL_FRAGMENT_SHADER                = $8B30
  #GL_VERTEX_SHADER                  = $8B31
  #GL_GEOMETRY_SHADER                = $8DD9
  
  ;   #GL_S                               = $2000
  ;   #GL_T                               = $2001
  ;   #GL_R                               = $2002
  ;   #GL_Q                               = $2003
  ;   #GL_MODULATE                        = $2100
  ;   #GL_DECAL                           = $2101
  ;   #GL_TEXTURE_ENV_MODE                = $2200
  ;   #GL_TEXTURE_ENV_COLOR               = $2201
  ;   #GL_TEXTURE_ENV                     = $2300
  ;   #GL_EYE_LINEAR                      = $2400
  ;   #GL_OBJECT_LINEAR                   = $2401
  ;   #GL_SPHERE_MAP                      = $2402
  ;   #GL_TEXTURE_GEN_MODE                = $2500
  ;   #GL_OBJECT_PLANE                    = $2501
  ;   #GL_EYE_PLANE                       = $2502
     #GL_NEAREST                         = $2600
  ;   #GL_LINEAR                          = $2601
  ;   #GL_NEAREST_MIPMAP_NEAREST          = $2700
  ;   #GL_LINEAR_MIPMAP_NEAREST           = $2701
  ;   #GL_NEAREST_MIPMAP_LINEAR           = $2702
  ;   #GL_LINEAR_MIPMAP_LINEAR            = $2703
  ;   #GL_TEXTURE_MAG_FILTER              = $2800
  ;   #GL_TEXTURE_MIN_FILTER              = $2801
  ;   #GL_TEXTURE_WRAP_S                  = $2802
  ;   #GL_TEXTURE_WRAP_T                  = $2803
  ;   #GL_CLAMP                           = $2900
  ;   #GL_REPEAT                          = $2901
  ;   #GL_CLIENT_PIXEL_STORE_BIT          = $00000001
  ;   #GL_CLIENT_VERTEX_ARRAY_BIT         = $00000002
  ;   #GL_CLIENT_ALL_ATTRIB_BITS          = $FFFFFFFF
  ;   #GL_POLYGON_OFFSET_FACTOR           = $8038
  ;   #GL_POLYGON_OFFSET_UNITS            = $2A00
  ;   #GL_POLYGON_OFFSET_POINT            = $2A01
  ;   #GL_POLYGON_OFFSET_LINE             = $2A02
  #GL_POLYGON_OFFSET_FILL             = $8037
  ;   #GL_ALPHA4                          = $803B
  ;   #GL_ALPHA8                          = $803C
  ;   #GL_ALPHA12                         = $803D
  ;   #GL_ALPHA16                         = $803E
  ;   #GL_LUMINANCE4                      = $803F
  ;   #GL_LUMINANCE8                      = $8040
  ;   #GL_LUMINANCE12                     = $8041
  ;   #GL_LUMINANCE16                     = $8042
  ;   #GL_LUMINANCE4_ALPHA4               = $8043
  ;   #GL_LUMINANCE6_ALPHA2               = $8044
  ;   #GL_LUMINANCE8_ALPHA8               = $8045
  ;   #GL_LUMINANCE12_ALPHA4              = $8046
  ;   #GL_LUMINANCE12_ALPHA12             = $8047
  ;   #GL_LUMINANCE16_ALPHA16             = $8048
  ;   #GL_INTENSITY                       = $8049
  ;   #GL_INTENSITY4                      = $804A
  ;   #GL_INTENSITY8                      = $804B
  ;   #GL_INTENSITY12                     = $804C
  ;   #GL_INTENSITY16                     = $804D
  ;   #GL_R3_G3_B2                        = $2A10
  ;   #GL_RGB4                            = $804F
  ;   #GL_RGB5                            = $8050
    #GL_RGB8                            = $8051
  ;   #GL_RGB10                           = $8052
  ;   #GL_RGB12                           = $8053
  ;   #GL_RGB16                           = $8054
  ;   #GL_RGBA2                           = $8055
  ;   #GL_RGBA4                           = $8056
  ;   #GL_RGB5_A1                         = $8057
  #GL_RGBA8 = 32856
  ;   #GL_RGB10_A2                        = $8059
  ;   #GL_RGBA12                          = $805A
  ;   #GL_RGBA16                          = $805B
  ;   #GL_TEXTURE_RED_SIZE                = $805C
  ;   #GL_TEXTURE_GREEN_SIZE              = $805D
  ;   #GL_TEXTURE_BLUE_SIZE               = $805E
  ;   #GL_TEXTURE_ALPHA_SIZE              = $805F
  ;   #GL_TEXTURE_LUMINANCE_SIZE          = $8060
  ;   #GL_TEXTURE_INTENSITY_SIZE          = $8061
  ;   #GL_PROXY_TEXTURE_1D                = $8063
  ;   #GL_PROXY_TEXTURE_2D                = $8064
  ;   #GL_TEXTURE_PRIORITY                = $8066
  ;   #GL_TEXTURE_RESIDENT                = $8067
  ;   #GL_TEXTURE_BINDING_1D              = $8068
  ;   #GL_TEXTURE_BINDING_2D              = $8069
  ;   #GL_VERTEX_ARRAY                    = $8074
  ;   #GL_NORMAL_ARRAY                    = $8075
  ;   #GL_COLOR_ARRAY                     = $8076
  ;   #GL_INDEX_ARRAY                     = $8077
  ;   #GL_TEXTURE_COORD_ARRAY             = $8078
  ;   #GL_EDGE_FLAG_ARRAY                 = $8079
  ;   #GL_VERTEX_ARRAY_SIZE               = $807A
  ;   #GL_VERTEX_ARRAY_TYPE               = $807B
  ;   #GL_VERTEX_ARRAY_STRIDE             = $807C
  ;   #GL_NORMAL_ARRAY_TYPE               = $807E
  ;   #GL_NORMAL_ARRAY_STRIDE             = $807F
  ;   #GL_COLOR_ARRAY_SIZE                = $8081
  ;   #GL_COLOR_ARRAY_TYPE                = $8082
  ;   #GL_COLOR_ARRAY_STRIDE              = $8083
  ;   #GL_INDEX_ARRAY_TYPE                = $8085
  ;   #GL_INDEX_ARRAY_STRIDE              = $8086
  ;   #GL_TEXTURE_COORD_ARRAY_SIZE        = $8088
  ;   #GL_TEXTURE_COORD_ARRAY_TYPE        = $8089
  ;   #GL_TEXTURE_COORD_ARRAY_STRIDE      = $808A
  ;   #GL_EDGE_FLAG_ARRAY_STRIDE          = $808C
  ;   #GL_VERTEX_ARRAY_POINTER            = $808E
  ;   #GL_NORMAL_ARRAY_POINTER            = $808F
  ;   #GL_COLOR_ARRAY_POINTER             = $8090
  ;   #GL_INDEX_ARRAY_POINTER             = $8091
  ;   #GL_TEXTURE_COORD_ARRAY_POINTER     = $8092
  ;   #GL_EDGE_FLAG_ARRAY_POINTER         = $8093
  ;   #GL_V2F                             = $2A20
  ;   #GL_V3F                             = $2A21
  ;   #GL_C4UB_V2F                        = $2A22
  ;   #GL_C4UB_V3F                        = $2A23
  ;   #GL_C3F_V3F                         = $2A24
  ;   #GL_N3F_V3F                         = $2A25
  ;   #GL_C4F_N3F_V3F                     = $2A26
  ;   #GL_T2F_V3F                         = $2A27
  ;   #GL_T4F_V4F                         = $2A28
  ;   #GL_T2F_C4UB_V3F                    = $2A29
  ;   #GL_T2F_C3F_V3F                     = $2A2A
  ;   #GL_T2F_N3F_V3F                     = $2A2B
  ;   #GL_T2F_C4F_N3F_V3F                 = $2A2C
  ;   #GL_T4F_C4F_N3F_V4F                 = $2A2D
  ;   #GL_EXT_vertex_array                = 1
  ;   #GL_EXT_bgra                        = 1
  ;   #GL_EXT_paletted_texture            = 1
  ;   #GL_WIN_swap_hint                   = 1
  ;   #GL_WIN_draw_range_elements         = 1
  ;   #GL_VERTEX_ARRAY_EXT                = $8074
  ;   #GL_NORMAL_ARRAY_EXT                = $8075
  ;   #GL_COLOR_ARRAY_EXT                 = $8076
  ;   #GL_INDEX_ARRAY_EXT                 = $8077
  ;   #GL_TEXTURE_COORD_ARRAY_EXT         = $8078
  ;   #GL_EDGE_FLAG_ARRAY_EXT             = $8079
  ;   #GL_VERTEX_ARRAY_SIZE_EXT           = $807A
  ;   #GL_VERTEX_ARRAY_TYPE_EXT           = $807B
  ;   #GL_VERTEX_ARRAY_STRIDE_EXT         = $807C
  ;   #GL_VERTEX_ARRAY_COUNT_EXT          = $807D
  ;   #GL_NORMAL_ARRAY_TYPE_EXT           = $807E
  ;   #GL_NORMAL_ARRAY_STRIDE_EXT         = $807F
  ;   #GL_NORMAL_ARRAY_COUNT_EXT          = $8080
  ;   #GL_COLOR_ARRAY_SIZE_EXT            = $8081
  ;   #GL_COLOR_ARRAY_TYPE_EXT            = $8082
  ;   #GL_COLOR_ARRAY_STRIDE_EXT          = $8083
  ;   #GL_COLOR_ARRAY_COUNT_EXT           = $8084
  ;   #GL_INDEX_ARRAY_TYPE_EXT            = $8085
  ;   #GL_INDEX_ARRAY_STRIDE_EXT          = $8086
  ;   #GL_INDEX_ARRAY_COUNT_EXT           = $8087
  ;   #GL_TEXTURE_COORD_ARRAY_SIZE_EXT    = $8088
  ;   #GL_TEXTURE_COORD_ARRAY_TYPE_EXT    = $8089
  ;   #GL_TEXTURE_COORD_ARRAY_STRIDE_EXT  = $808A
  ;   #GL_TEXTURE_COORD_ARRAY_COUNT_EXT   = $808B
  ;   #GL_EDGE_FLAG_ARRAY_STRIDE_EXT      = $808C
  ;   #GL_EDGE_FLAG_ARRAY_COUNT_EXT       = $808D
  ;   #GL_VERTEX_ARRAY_POINTER_EXT        = $808E
  ;   #GL_NORMAL_ARRAY_POINTER_EXT        = $808F
  ;   #GL_COLOR_ARRAY_POINTER_EXT         = $8090
  ;   #GL_INDEX_ARRAY_POINTER_EXT         = $8091
  ;   #GL_TEXTURE_COORD_ARRAY_POINTER_EXT = $8092
  ;   #GL_EDGE_FLAG_ARRAY_POINTER_EXT     = $8093
  ;   #GL_DOUBLE_EXT                      = #GL_DOUBLE
  ;   #GL_BGR_EXT                         = $80E0
  ;   #GL_BGRA_EXT                        = $80E1
  ;   #GL_COLOR_TABLE_FORMAT_EXT          = $80D8
  ;   #GL_COLOR_TABLE_WIDTH_EXT           = $80D9
  ;   #GL_COLOR_TABLE_RED_SIZE_EXT        = $80DA
  ;   #GL_COLOR_TABLE_GREEN_SIZE_EXT      = $80DB
  ;   #GL_COLOR_TABLE_BLUE_SIZE_EXT       = $80DC
  ;   #GL_COLOR_TABLE_ALPHA_SIZE_EXT      = $80DD
  ;   #GL_COLOR_TABLE_LUMINANCE_SIZE_EXT  = $80DE
  ;   #GL_COLOR_TABLE_INTENSITY_SIZE_EXT  = $80DF
  ;   #GL_COLOR_INDEX1_EXT                = $80E2
  ;   #GL_COLOR_INDEX2_EXT                = $80E3
  ;   #GL_COLOR_INDEX4_EXT                = $80E4
  ;   #GL_COLOR_INDEX8_EXT                = $80E5
  ;   #GL_COLOR_INDEX12_EXT               = $80E6
  ;   #GL_COLOR_INDEX16_EXT               = $80E7
  ;   #GL_MAX_ELEMENTS_VERTICES_WIN       = $80E8
  ;   #GL_MAX_ELEMENTS_INDICES_WIN        = $80E9
  ;   #GL_PHONG_WIN                       = $80EA
  ;   #GL_PHONG_HINT_WIN                  = $80EB
  ;   #GL_FOG_SPECULAR_TEXTURE_WIN        = $80EC
  ;   #GL_LOGIC_OP                        = #GL_INDEX_LOGIC_OP
  ;   #GL_TEXTURE_COMPONENTS              = #GL_TEXTURE_INTERNAL_FORMAT
    #GL_FRAMEBUFFER                 = $8D40
    #GL_RENDERBUFFER               = $8D41
  ;   #GL_STENCIL_INDEX1_EXT              = $8D46
  ;   #GL_STENCIL_INDEX4_EXT              = $8D47
  ;   #GL_STENCIL_INDEX8_EXT              = $8D48
  ;   #GL_STENCIL_INDEX16_EXT             = $8D49
  ;   #GL_RENDERBUFFER_WIDTH_EXT            = $8D42
  ;   #GL_RENDERBUFFER_HEIGHT_EXT           = $8D43
  ;   #GL_RENDERBUFFER_INTERNAL_FORMAT_EXT  = $8D44
  ;   #GL_RENDERBUFFER_RED_SIZE_EXT         = $8D50
  ;   #GL_RENDERBUFFER_GREEN_SIZE_EXT       = $8D51
  ;   #GL_RENDERBUFFER_BLUE_SIZE_EXT        = $8D52
  ;   #GL_RENDERBUFFER_ALPHA_SIZE_EXT       = $8D53
  ;   #GL_RENDERBUFFER_DEPTH_SIZE_EXT       = $8D54
  ;   #GL_RENDERBUFFER_STENCIL_SIZE_EXT     = $8D55
  ;   #GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE_EXT            = $8CD0
  ;   #GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME_EXT            = $8CD1
  ;   #GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL_EXT          = $8CD2
  ;   #GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE_EXT  = $8CD3
  ;   #GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_3D_ZOFFSET_EXT     = $8CD4
    
    #GL_COLOR_ATTACHMENT0                             = $8CE0
    #GL_COLOR_ATTACHMENT1                             = $8CE1
    #GL_COLOR_ATTACHMENT2                             = $8CE2
    #GL_COLOR_ATTACHMENT3                             = $8CE3
    #GL_COLOR_ATTACHMENT4                             = $8CE4
    #GL_COLOR_ATTACHMENT5                             = $8CE5
    #GL_COLOR_ATTACHMENT6                             = $8CE6
    #GL_COLOR_ATTACHMENT7                             = $8CE7
    #GL_COLOR_ATTACHMENT8                             = $8CE8
    #GL_COLOR_ATTACHMENT9                             = $8CE9
    #GL_COLOR_ATTACHMENT10                            = $8CEA
    #GL_COLOR_ATTACHMENT11                            = $8CEB
    #GL_COLOR_ATTACHMENT12                            = $8CEC
    #GL_COLOR_ATTACHMENT13                            = $8CED
    #GL_COLOR_ATTACHMENT14                            = $8CEE
    #GL_COLOR_ATTACHMENT15                            = $8CEF
    #GL_DEPTH_ATTACHMENT                              = $8D00
    
  ;   #GL_STENCIL_ATTACHMENT_EXT                            = $8D20
  ;   #GL_FRAMEBUFFER_COMPLETE_EXT                          = $8CD5
  ;   #GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT_EXT             = $8CD6
  ;   #GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT_EXT     = $8CD7
  ;   #GL_FRAMEBUFFER_INCOMPLETE_DIMENSIONS_EXT             = $8CD9
  ;   #GL_FRAMEBUFFER_INCOMPLETE_FORMATS_EXT                = $8CDA
  ;   #GL_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER_EXT            = $8CDB
  ;   #GL_FRAMEBUFFER_INCOMPLETE_READ_BUFFER_EXT            = $8CDC
  ;   #GL_FRAMEBUFFER_UNSUPPORTED_EXT                       = $8CDD
  ;   #GL_FRAMEBUFFER_BINDING_EXT                           = $8CA6
  ;   #GL_RENDERBUFFER_BINDING_EXT                          = $8CA7
  ;   #GL_MAX_COLOR_ATTACHMENTS_EXT                         = $8CDF
  ;   #GL_MAX_RENDERBUFFER_SIZE_EXT                         = $84E8
  ;   #GL_INVALID_FRAMEBUFFER_OPERATION_EXT                 = $0506
  
  #GL_TEXTURE_CUBE_MAP                = $8513
  #GL_TEXTURE_BINDING_CUBE_MAP        = $8514
  #GL_TEXTURE_CUBE_MAP_POSITIVE_X     = $8515
  #GL_TEXTURE_CUBE_MAP_NEGATIVE_X     = $8516
  #GL_TEXTURE_CUBE_MAP_POSITIVE_Y     = $8517
  #GL_TEXTURE_CUBE_MAP_NEGATIVE_Y     = $8518
  #GL_TEXTURE_CUBE_MAP_POSITIVE_Z     = $8519
  #GL_TEXTURE_CUBE_MAP_NEGATIVE_Z     = $851A
  
  #GL_TEXTURE0                        = $84C0
  #GL_TEXTURE1                        = $84C1
  #GL_TEXTURE2                        = $84C2
  #GL_TEXTURE3                        = $84C3
  #GL_TEXTURE4                        = $84C4
  #GL_TEXTURE5                        = $84C5
  #GL_TEXTURE6                        = $84C6
  #GL_TEXTURE7                        = $84C7
  #GL_TEXTURE8                        = $84C8
  #GL_TEXTURE9                        = $84C9
  #GL_TEXTURE10                       = $84CA
  #GL_TEXTURE11                       = $84CB
  #GL_TEXTURE12                       = $84CC
  #GL_TEXTURE13                       = $84CD
  #GL_TEXTURE14                       = $84CE
  #GL_TEXTURE15                       = $84CF
  #GL_TEXTURE16                       = $84D0
  #GL_TEXTURE17                       = $84D1
  #GL_TEXTURE18                       = $84D2
  #GL_TEXTURE19                       = $84D3
  #GL_TEXTURE20                       = $84D4
  #GL_TEXTURE21                       = $84D5
  #GL_TEXTURE22                       = $84D6
  #GL_TEXTURE23                       = $84D7
  #GL_TEXTURE24                       = $84D8
  #GL_TEXTURE25                       = $84D9
  #GL_TEXTURE26                       = $84DA
  #GL_TEXTURE27                       = $84DB
  #GL_TEXTURE28                       = $84DC
  #GL_TEXTURE29                       = $84DD
  #GL_TEXTURE30                       = $84DE
  #GL_TEXTURE31                       = $84DF
  #GL_ACTIVE_TEXTURE                  = $84E0
  #GL_DEPTH_CLAMP                     = 34383
  #GL_TEXTURE_LOD_BIAS                = 34049
  #GL_DEPTH_COMPONENT                 = 6402
  #GL_DEPTH_COMPONENT16               = 33189
  #GL_DEPTH_COMPONENT24               = 33190
  #GL_DEPTH_COMPONENT32               = 33191  
  #GL_MULTISAMPLE                     = 32925
  #GL_FRAMEBUFFER_BINDING             = 36006
  #GL_DRAW_FRAMEBUFFER                = 36009
  #GL_READ_FRAMEBUFFER                = 36008
  #GL_MAX_INTEGER_SAMPLES             = 37136 
  #GL_FRAMEBUFFER_COMPLETE            = 36053
  #GL_RG32F                           = 33328
  #GL_TEXTURE_COMPARE_MODE            = 34892
  #GL_TEXTURE_COMPARE_FUNC            = 34893
  #GL_COMPARE_REF_TO_TEXTURE          = 34894
  #GL_VERTEX_ARRAY_BINDING            = 34229
  
EndDeclareModule

Module OGL
  
EndModule

DeclareModule GLEW
  
  #GLEW_OK = 0
  #GLEW_NOERROR = 0
  #GLEW_ERROR_NO_GL_VERSION = 1
  #GLEW_ERROR_GL_VERSION_10_ONLY = 2
  #GLEW_ERROR_GLX_VERSION_11_ONLY = 3
  #GLEW_ERROR_NO_GLX_DISPLAY = 4
  #GLEW_VERSION = 1
  #GLEW_VERSION_MAJOR = 2
  #GLEW_VERSION_MINOR = 3
  #GLEW_VERSION_MICRO = 4
  
  CompilerSelect #PB_Compiler_OS
      
    CompilerCase #PB_OS_Windows 
      #LIB_GLEW_FILE_NAME = ""
      
    CompilerCase #PB_OS_Linux
      #LIB_GLEW_FILE_NAME = "-lGLEW -lGLU -lGL"
      
    CompilerCase #PB_OS_MacOS
      #LIB_GLEW_FILE_NAME = ""
      
  CompilerEndSelect
  
  ImportC #LIB_GLEW_FILE_NAME
    
    glewInit.l()
    glewIsSupported.i(Name.p-ascii)
    glewGetExtension.i(Name.p-ascii)
    glewGetErrorString_(Error.l) As "glewGetErrorString"
    glewGetString_(Name.l) As "glewGetString"
    
  EndImport 
  
  Declare.s glewGetErrorString(Error.l)
  Declare.s glewGetString(Name.l)
  
EndDeclareModule

Module GLEW
  
  Procedure.s glewGetErrorString(Error.l)
    
    ProcedureReturn PeekS(glewGetErrorString_(Error), -1, #PB_Ascii)
  EndProcedure
  
  Procedure.s glewGetString(Name.l)
    
    ProcedureReturn PeekS(glewGetString_(Name), -1, #PB_Ascii)
  EndProcedure
  
EndModule

DeclareModule GL20
  
  ImportC GLEW::#LIB_GLEW_FILE_NAME
    
    glActiveTexture(Texture.l)
    glAttachShader(Program.l, Shader.l)
    
    glBeginQuery(Target.l, ID.l)
    
    glBindAttribLocation(Program.l, Index.l, Name.p-ascii)
    glBindBuffer(Target.l, Buffer.l)
    
    glBlendColor(Red.f, Green.f, Blue.f, Alpha.f)
    glBlendEquation(Mode.l)
    glBlendEquationSeparate(ModeRGB.l, ModeAlpha.l)
    glBlendFunc(SourceFactor.l, DestinationFactor.l)
    glBlendFuncSeparate(SrcRGB.l, DstRGB.l, SrcAlpha.l, DstAlpha.l)
    
    glBufferData(Target.l, Size.l, *Data_, Usage.l)
    glBufferSubData(Target.l, Offset.l, Size.l, *Data_)
    
    glClear(Mask.l)
    glClearColor(Red.f, Green.f, Blue.f, Alpha.f)
    glClearDepth(Depth.d)
    glClearStencil(Stencil.l)
    
    glColorMask(Red.l, Green.l, Blue.l, Alpha.l)
    
    glCompileShader(Shader.l)
    
    glCompressedTexImage1D(Target.l, Level.l, InternalFormat.l, Width.l, Border.l, ImageSize.l, *Data_)
    glCompressedTexImage2D(Target.l, Level.l, InternalFormat.l, Width.l, Height.l, Border.l, ImageSize.l, *Data_)
    glCompressedTexImage3D(Target.l, Level.l, InternalFormat.l, Width.l, Height.l, Depth.l, Border.l, ImageSize.l, *Data_)
    
    glCompressedTexSubImage1D(Target.l, Level.l, XOffset.l, Width.l, Format.l, ImageSize.l, *Data_)
    glCompressedTexSubImage2D(Target.l, Level.l, XOffset.l, YOffset.l, Width.l, Height.l, Format.l, ImageSize.l, *Data_)
    glCompressedTexSubImage3D(Target.l, Level.l, XOffset.l, YOffset.l, ZOffset.l, Width.l, Height.l, Depth.l, Format.l, ImageSize.l, *Data_)
    
    glCreateProgram()
    glCreateShader(ShaderType.l)

    glCullFace(Mode.l)
    
    glDeleteBuffers(n.l, *Buffers)
    glDeleteProgram(Program.l)
    glDeleteQueries(n.l, *ids)
    glDeleteShader(Shader.l)
    glDeleteTextures(n.l, *TextureID)
    
    glDepthFunc(DepthFunc.l)
    glDepthMask(Flag.l)
    glDepthRange(Near.d, Far.d)
    
    glDetachShader(Program.l, Shader.l)
    glDisable(Capability.l)
    glDisableVertexAttribArray(Index.l)
    
    glDrawArrays(Mode.l, First.l, Count.l)
    glDrawBuffer(Mode.l)
    glDrawBuffers(n.l, *Buffers)
    glDrawElements(Mode.l, Count.l, Type.l, *Indices)
    glDrawRangeElements(Mode.l, Start.l, End_.l, Count.l, Type.l, *Indices)
    
    glEnable(Capability.l)
    glEnableVertexAttribArray(Index.l)
    
    glEndQuery(Target.l)
    
    glFinish()
    glFlush()
    
    glFrontFace(Mode.l)
    
    glGenBuffers(n.l, *Buffers)
    glGenerateMipmap(Target.l)
    glGenTextures(n.l, *TextureID)
    glGenQueries(n.l, *ids)
    
    glGetActiveAttrib(Program.l, Index.l, BufferSize, Length.l, Size.l, Type.l, Name.p-ascii)
    glGetActiveUniform(Program.l, Index.l, BufferSize, Length.l, Size.l, Type.l, Name.p-ascii)
    glGetAttachedShaders(Program.l, MaxCount.l, *Count, *Shaders)
    glGetAttribLocation(Program.l, Name.p-ascii)

    glGetBooleanv(Pname.l, *Params)
    glGetBufferParameteriv(Target.l, Value.l, *Data_)
    glGetBufferPointerv(Target.l, Pname.l, *Params)
    glGetBufferSubData(Target.l, Offset.l, Size.l, *Data_)
    glGetCompressedTexImage(Target.l, Lod.l, *Image)

    glGetDoublev(Pname.l, *Params)
    glGetFloatv(Pname.l, *Params)
    glGetIntegerv(Pname.l, *Params)
    
    glGetError()
    
    glGetString__(Name.l) As "glGetString"
    
    glGetProgramiv(Program.l, Pname.l, *Params)
    glGetProgramInfoLog(Program.l, MaxLength.l, *Length, *InfoLog)
    
    glGetShaderiv(Shader.l, Pname.l, *Params)
    glGetShaderInfoLog(Shader.l, MaxLength.l, *Length, *InfoLog)
    
    glGetUniformLocation(Program.l, Name.p-ascii)
    
    glGetVertexAttribdv(Index.l, Pname.l, *Params)
    glGetVertexAttribfv(Index.l, Pname.l, *Params)
    glGetVertexAttribiv(Index.l, Pname.l, *Params)
    glGetVertexAttribPointerv(Index.l, Pname.l, *Pointer)
    
    glHint(Target.l, Mode.l)
    
    glIsBuffer(Buffer.l)
    glIsEnabled(Capability.l)
    glIsProgram(Program.l)
    glIsQuery(ID.l)
    glIsShader(Shader.l)
    glIsTexture(TextureID.l)
    
    glLineWidth(Width.f)
    glLinkProgram(Program.l)
    glLogicOp(OperationCode.l)
    
    glMapBuffer(Target.l, Access.l)
    glMultiDrawArrays(Mode.l, *First, *Count, Primcount.l)
    glMultiDrawElements(Mode.l, *Count, Type.l, *Indices, Primcount.l)
    
    glPixelStoref(Pname.l, Param.f)
    glPixelStorei(Pname.l, Param.l)
    
    glPointParameterf(Pname.l, Param.f)
    glPointParameteri(Pname.l, Param.l)
    glPointParameterfv(Pname.l, *Params)
    glPointParameteriv(Pname.l, *Params)
    glPointSize(Size.f)
    
    glPolygonMode(Face.l, Mode.l)
    glPolygonOffset(Factor.f, Units.f)
    
    glReadBuffer(Mode.l)
    glReadPixels(x.l, y.l, Width.l, Height.l, Format.l, Type.l, *Pixels)
    
    glSampleCoverage(Value.f, Invert.l)
    
    glScissor(x.l, y.l, Width.l, Height.l)
    
    glShaderSource(Shader.l, Count.l, *String, *Length)
    
    glStencilFunc(Func.l, Ref.l, Mask.l)
    glStencilFuncSeparate(Face.l, Func.l, Ref.l, Mask.l)
    glStencilMask(Mask.l)
    glStencilMaskSeparate(Face.l, Mask.l)
    glStencilOp(Fail.l, zfail.l, zpass.l)
    glStencilOpSeparate(Face.l, StencilFail.l, DepthFail.l, DepthPass.l)
    
    glTexImage1D(Target.l, Level.l, Components.l, Width.l, Border.l, Format.l, Type.l, *Pixels)
    glTexImage2D(Target.l, Level.l, Components.l, Width.l, Height.l, Border.l, Format.l, Type.l, *Pixels)
    glTexImage3D(Target.l, Level.l, Components.l, Width.l, Height.l, Depth.l, Border.l, Format.l, Type.l, *Pixels)
    
    glTexParameterf(Target.l, Pname.l, Param.f)
    glTexParameteri(Target.l, Pname.l, Param.l)
    glTexParameterfv(Target.l, Pname.l, *Params)
    glTexParameteriv(Target.l, Pname.l, *Params)
    
    glTexSubImage1D(Target.l, Level.l, XOffset.l, Width.l, Format.l, Type.l, *Data_)
    glTexSubImage2D(Target.l, Level.l, XOffset.l, YOffset.l, Width.l, Height.l, Format.l, Type.l, *Data_)
    glTexSubImage3D(Target.l, Level.l, XOffset.l, YOffset.l, ZOffset.l, Width.l, Height.l, Depth.l, Format.l, Type.l, *Data_)
    
    glUniform1f(Location.l, v0.f)
    glUniform2f(Location.l, v0.f, v1.f)
    glUniform3f(Location.l, v0.f, v1.f, v2.f)
    glUniform4f(Location.l, v0.f, v1.f, v2.f, v3.f)
    glUniform1i(Location.l, v0.l)
    glUniform2i(Location.l, v0.l, v1.l)
    glUniform3i(Location.l, v0.l, v1.l, v2.l)
    glUniform4i(Location.l, v0.l, V1.l, v2.l, v3.l)
    glUniform1fv(Location.l, Count.l, *Value)
    glUniform2fv(Location.l, Count.l, *Value)
    glUniform3fv(Location.l, Count.l, *Value)
    glUniform4fv(Location.l, Count.l, *Value)
    glUniform1iv(Location.l, Count.l, *Value)
    glUniform2iv(Location.l, Count.l, *Value)
    glUniform3iv(Location.l, Count.l, *Value)
    glUniform4iv(Location.l, Count.l, *Value)
    glUniformMatrix2fv(Location.l, Count.l, Transpose.a, *Value)
    glUniformMatrix3fv(Location.l, Count.l, Transpose.a, *Value)
    glUniformMatrix4fv(Location.l, Count.l, Transpose.a, *Value)
    
    glUnmapBuffer(Target.l)
    glUseProgram(Program.l)
    
    glValidateProgram(Program.l)
    
    glVertexAttrib1f(Index.l, v0.f)
    glVertexAttrib1s(Index.l, v0.w)
    glVertexAttrib1d(Index.l, v0.d)
    glVertexAttrib2f(Index.l, v0.f, v1.f)
    glVertexAttrib2s(Index.l, v0.w, v1.w)
    glVertexAttrib2d(Index.l, v0.d, v1.d)
    glVertexAttrib3f(Index.l, v0.f, v1.f, v2.f)
    glVertexAttrib3s(Index.l, v0.w, v1.w, v2.w)
    glVertexAttrib3d(Index.l, v0.d, v1.d, v2.d)
    glVertexAttrib4f(Index.l, v0.f, v1.f, v2.f, v3.f)
    glVertexAttrib4s(Index.l, v0.w, v1.w, v2.w, v3.w)
    glVertexAttrib4d(Index.l, v0.d, v1.d, v2.d, v3.d)
    glVertexAttrib4Nub(Index.l, v0.a, v1.a, v2.a, v3.a)
    glVertexAttrib1fv(Index.l, *Vector)
    glVertexAttrib1sv(Index.l, *Vector)
    glVertexAttrib1dv(Index.l, *Vector)
    glVertexAttrib2fv(Index.l, *Vector)
    glVertexAttrib2sv(Index.l, *Vector)
    glVertexAttrib2dv(Index.l, *Vector)
    glVertexAttrib3fv(Index.l, *Vector)
    glVertexAttrib3sv(Index.l, *Vector)
    glVertexAttrib3dv(Index.l, *Vector)
    glVertexAttrib4fv(Index.l, *Vector)
    glVertexAttrib4sv(Index.l, *Vector)
    glVertexAttrib4dv(Index.l, *Vector)
    glVertexAttrib4iv(Index.l, *Vector)
    glVertexAttrib4bv(Index.l, *Vector)
    glVertexAttrib4ubv(Index.l, *Vector)
    glVertexAttrib4usv(Index.l, *Vector)
    glVertexAttrib4uiv(Index.l, *Vector)
    glVertexAttrib4Nbv(Index.l, *Vector)
    glVertexAttrib4Nsv(Index.l, *Vector)
    glVertexAttrib4Niv(Index.l, *Vector)
    glVertexAttrib4Nubv(Index.l, *Vector)
    glVertexAttrib4Nusv(Index.l, *Vector)
    glVertexAttrib4Nuiv(Index.l, *Vector)
    
    glVertexAttribPointer(Index.l, Size.l, Type.l, Normalized.l, Stride.l, *Pointer)
    
    glViewport(x.l, y.l, width.l, height.l)
    
  EndImport
  
  Declare.s glGetString(Name.l)
  Declare.s glGetErrorMessage()
  
EndDeclareModule 

Module GL20
  
  Procedure.s glGetString(Name.l)
    
    *Ptr = glGetString__(Name)
    
    If *Ptr <> #Null
      Output.s = PeekS(*Ptr, -1, #PB_Ascii)
    Else
      Output = glGetErrorMessage()
    EndIf
    
    ProcedureReturn Output
  EndProcedure
  
  Procedure.s glGetErrorMessage()
    
    Select glGetError()
        
      Case #GL_NO_ERROR
        ErrorMessage.s = "#GL_NO_ERROR (" + Str(#GL_NO_ERROR) + ")"
        
      Case #GL_INVALID_ENUM
        ErrorMessage = "#GL_INVALID_ENUM (" + Str(#GL_INVALID_ENUM) + ")"
        
      Case #GL_INVALID_VALUE
        ErrorMessage = "#GL_INVALID_VALUE (" + Str(#GL_INVALID_VALUE) + ")"
        
      Case #GL_INVALID_OPERATION
        ErrorMessage = "#GL_INVALID_OPERATION (" + Str(#GL_INVALID_OPERATION) + ")"
        
      Case #GL_STACK_OVERFLOW 
        ErrorMessage = "#GL_STACK_OVERFLOW (" + Str(#GL_STACK_OVERFLOW) + ")"
        
      Case #GL_STACK_UNDERFLOW
        ErrorMessage = "#GL_STACK_UNDERFLOW (" + Str(#GL_STACK_UNDERFLOW) + ")"
        
      Case #GL_OUT_OF_MEMORY 
        ErrorMessage = "#GL_OUT_OF_MEMORY (" + Str(#GL_OUT_OF_MEMORY) + ")"
        
    EndSelect
    
    ProcedureReturn ErrorMessage
  EndProcedure
  
EndModule

DeclareModule GL21
  
  ImportC GLEW::#LIB_GLEW_FILE_NAME
    
    glUniformMatrix2x3fv(Location.l, Count.l, Transpose.a, *Value)
    glUniformMatrix3x2fv(Location.l, Count.l, Transpose.a, *Value)
    glUniformMatrix2x4fv(Location.l, Count.l, Transpose.a, *Value)
    glUniformMatrix4x2fv(Location.l, Count.l, Transpose.a, *Value)
    glUniformMatrix3x4fv(Location.l, Count.l, Transpose.a, *Value)
    glUniformMatrix4x3fv(Location.l, Count.l, Transpose.a, *Value)
    
  EndImport
  
EndDeclareModule

Module GL21
  
EndModule

DeclareModule GL30
  
  ImportC GLEW::#LIB_GLEW_FILE_NAME
    
    glBeginConditionalRender(ID.l, Mode.l)
    glBeginTransformFeedback(PrimitiveMode.l)
    glBindBufferBase(Target.l, Index.l, Buffer.l)
    glBindBufferRange(Target.l, Index.l, Buffer.l, Offset.i, Size.l)
    glBindFragDataLocation(Program.l, ColorNumber.l, Name.p-ascii)
    
    glBindFramebuffer(Target.l, Framebuffer.l)
    glBindRenderbuffer(Target.l, Renderbuffer.l)
    glBindTexture(Target.l, TextureID.l)
    glBindVertexArray(VertexArray.l)
    
    glBlitFramebuffer(srcX0.l, srcY0.l, srcX1.l, srcY1.l, dstX0.l, dstY0.l, dstX1.l, dstY1.l, mask.l, filter.l)
    
    glCheckFramebufferStatus(Target.l)
    
    glClampColor(Target.l, Clamp.l)
    
    glClearBufferiv(Buffer.l, DrawBuffer.l, *Value)
    glClearBufferuiv(Buffer.l, DrawBuffer.l, *Value)
    glClearBufferfv(Buffer.l, DrawBuffer.l, *Value)
    glClearBufferfi(Buffer.l, DrawBuffer.l, Depth.f,  Stencil.l)
    
    glColorMaski(Buffer.l, Red.l, Green.l, Blue.l, Alpha.l)
    
    glDeleteFramebuffers(n.l, *Framebuffers)
    glDeleteRenderbuffers(n.l, *Renderbuffers)
    glDeleteVertexArrays(n.l, *VertexArrays)
    
    glDisablei(Capability.l, Index.l)
    
    glEnablei(Capability.l, Index.l)
    
    glEndConditionalRender()
    glEndTransformFeedback()
     
    glFlushMappedBufferRange(Target.l, Offset.l, Length.l)
    
    glFramebufferRenderbuffer(Target.l, Attachment.l, RenderBufferTarget.l, Renderbuffer.l)
    glFramebufferTexture1D(Target.l, Attachment.l,  TextureTarget.l, Texture.l, Level.l)
    glFramebufferTexture2D(Target.l, Attachment.l,  TextureTarget.l, Texture.l, Level.l)
    glFramebufferTexture3D(Target.l, Attachment.l,  TextureTarget.l, Texture.l, Level.l, Layer.l)
    glFramebufferTextureLayer(Target.l, Attachment.l, Texture.l, Level.l, Layer.l)
    
    glGenFramebuffers(n.l, *Framebuffers)
    glGenRenderbuffers(n.l, *RenderBuffers)
    glGenVertexArrays(n.l, *VertexArrays)
    
    glGetBooleani_v(Target.l, Index.l, *Data_Ascii)
    glGetIntegeri_v(Target.l, Index.l, *Data_Long)
    
    glGetFragDataLocation(Program.l, Name.p-ascii)
    glGetFramebufferAttachmentParameteriv(Target.l, Attachment.l, Pname.l, *Params)
    
    glGetStringi__(Name.l, Index.l) As "glGetStringi"
    
    glGetVertexAttribIiv(Index.l, Pname.l, *Params)
    glGetVertexAttribIuiv(Index.l, Pname.l, *Params)
    
    glIsEnabledi(Capacity.l, Index.l)
    glIsFramebuffer(FrameBuffer.l)
    glIsRenderbuffer(RenderBuffer.l)
    glIsSampler(ID.l)
    glIsVertexArray(VertexArray.l)
    
    glMapBufferRange(Target.l, Offset.l, Length.l, Access.l)
    
    glRenderbufferStorage(Target.l, InternalFormat.l, Width.l, Height.l)
    glRenderbufferStorageMultisample(Target.l, Samples.l, InternalFormat.l, Width.l, Height.l)
    
    glTexParameterIiv(Target.l, Pname.l, *Params)
    glTexParameterIuiv(Target.l, Pname.l, *Params)
    
    glTransformFeedbackVaryings(Program.l, Count.l, *Varyings, BufferMode.l)
    
    glUniform1ui(Location.l, v0.l)
    glUniform2ui(Location.l, v0.l, v1.l)
    glUniform3ui(Location.l, v0.l, v1.l, v2.l)
    glUniform4ui(Location.l, v0.l, v1.l, v2.l, v3.l)
    
    glUniform1uiv(Location.l, Count.l, *Value)
    glUniform2uiv(Location.l, Count.l, *Value)
    glUniform3uiv(Location.l, Count.l, *Value)
    glUniform4uiv(Location.l, Count.l, *Value)
    
    glVertexAttribI4bv(Index.l, *Vector)
    glVertexAttribI4ubv(Index.l, *Vector)
    glVertexAttribI4sv(Index.l, *Vector)
    glVertexAttribI4usv(Index.l, *Vector)
    glVertexAttribI4iv(Index.l, *Vector)
    glVertexAttribI4uiv(Index.l, *Vector)
    
    glVertexAttribIPointer(Index.l, Size.l, Type.l, Stride.l, *Pointer)
    
  EndImport
  
  Declare.s glGetStringi(Name.l, Index.l)
  
EndDeclareModule 

Module GL30
  
  Procedure.s glGetStringi(Name.l, Index.l)
    
    *Ptr = glGetStringi__(Name, Index)
    
    If *Ptr <> #Null
      Output.s = PeekS(*Ptr, -1, #PB_Ascii)
    Else
      Output = GL20::glGetErrorMessage()
    EndIf
    
    ProcedureReturn Output
  EndProcedure
  
EndModule

DeclareModule GL31
  
  ImportC GLEW::#LIB_GLEW_FILE_NAME
    
    glDrawElementsInstanced(Mode.l, Count.l, Type.l, *Indices, InstanceCount.l)
    
    glGetActiveUniformBlockiv(Program.l, UniformBlockIndex.l, Pname.l,  Params.l)
    glGetActiveUniformBlockName(Program.l, UniformBlockIndex.l, BufferSize.l, *Length, *IniformBlockName)
    glGetActiveUniformName(Program.l, UniformIndex.l, BufferSize.l, *Length, *UniformName)
    glGetActiveUniformsiv(Program.l, UniformCount.l, *UniformIndices,  Pname.l,  *Params)
    
    glPrimitiveRestartIndex(Index.l)
    
    glTexBuffer(Target.l, InternalFormat.l, Buffer.l)
    
    glUniformBlockBinding(Program.l, UniformBlockIndex.l, UniformBlockBinding.l)
    
  EndImport
  
EndDeclareModule 

Module GL31
  
EndModule

DeclareModule GL32
  
  ImportC GLEW::#LIB_GLEW_FILE_NAME
    
    glBindFragDataLocationIndexed(ProgramID.l, ColorNumber.l, Index.l, Name.p-ascii)
    
    glClientWaitSync(Sync.l, Flags.l, Timeout.q)
    
    glCopyBufferSubData(ReadTarget.l, WriteTarget.l, ReadOffset.l, WriteOffset.l, Size.l)
    
    glDrawElementsInstancedBaseVertex(Mode.l, Count.l, Type.l, *Indices, InstanceCount, BaseVertex.l)
    glDrawRangeElementsBaseVertex(Mode.l, Start.l, End_.l, Count.l, Type.l, *Indices, BaseVertex.l)
    
    glDeleteSync(Sync.l)
    
    glFenceSync(Condition.l, Flags.l)
    glFramebufferTexture(Target.l, Attachment.l, Texture.l, Level.l)
    
    glGetBufferParameteri64v(Target.l, Value.l, *Data_Quad)
    
    glGetInteger64i_v(Target.l, Index.l, *Data_Quad)
    glGetInteger64v(Pname.l, *Data_Quad)
    
    glGetFragDataIndex(Program.l, Name.p-ascii)
    glGetMultisamplefv(Pname.l, Index.l, *Values)
    
    glIsSync(Sync.l)
    
    glMultiDrawElementsBaseVertex(Mode.l, *Count, Type.l, *Indices, Primcount.l, *BaseVertex)
    
    glProvokingVertex(ProvokeMode.l)
    
    glQueryCounter(ID.l, Target.l)
    
    glSampleMaski(MaskNumber.l, Mask.l)
   
    glSamplerParameterf(Sampler.l, Pname.l, Param.f)
    glSamplerParameteri(Sampler.l, Pname.l, Param.l)
    glSamplerParameterfv(Sampler.l, Pname.l, *Param_Floats)
    glSamplerParameteriv(Sampler.l, Pname.l, *Param_Longs)
    glSamplerParameterIiv(Sampler.l, Pname.l, *Param_Longs)
    glSamplerParameterIuiv(Sampler.l, Pname.l, *Param_Longs)
    
    glTexImage2DMultisample(Target.l, Samples.l, InternalFormat.l, Width.l, Height.l, FixedSampleLocations.l)
    glTexImage3DMultisample(Target.l, Samples.l, InternalFormat.l, Width.l, Height.l, Depth.l, FixedSampleLocations.l)
    
    glWaitSync(Sync.l, Flags.l, Timeout.q)
    
  EndImport
  
EndDeclareModule 

Module GL32
  
EndModule

DeclareModule GL33
  
  ImportC GLEW::#LIB_GLEW_FILE_NAME
    
    glBindSampler(Unit.l, Sampler.l)
    
    glDeleteSamplers(n.l, *Samplers)
    
    glGenSamplers(n.l, *Samplers)
    
    glVertexAttribP1ui(Index.l, Type.l, Normalized.a, Value.l)
    glVertexAttribP2ui(Index.l, Type.l, Normalized.a, Value.l)
    glVertexAttribP3ui(Index.l, Type.l, Normalized.a, Value.l)
    glVertexAttribP4ui(Index.l, Type.l, Normalized.a, Value.l)
    
  EndImport
  
EndDeclareModule 

Module GL33
  
EndModule

DeclareModule GL40
  
  ImportC GLEW::#LIB_GLEW_FILE_NAME
    
    glBeginQueryIndexed(Target.l, Index.l, ID.l)
    
    glBindTransformFeedback(Target.l, ID.l)
    
    glBlendEquationi(Buffer.l, Mode.l)
    glBlendEquationSeparatei(Buffer.l, ModeRGB.l, ModeAlpha.l)
    glBlendFunci(Buffer.l, Sfactor.l, Dfactor.l)
    glBlendFuncSeparatei(Buffer.l, SourceRGB.l, DestinationRGB.l, SourceAlpha.l, DestinationAlpha.l)
    
    glDeleteTransformFeedbacks(n.l, *ids)
    
    glDrawArraysIndirect(Mode.l, *indirect)
    glDrawTransformFeedback(Mode.l, ID.l)
    glDrawTransformFeedbackStream(Mode.l, ID.l, Stream.l)
    
    glEndQueryIndexed(Target.l, Index.l)
    
    glGenTransformFeedbacks(n.l, *ids)
    
    glGetActiveSubroutineName(Program.l, Shadertype.l, Index.l, BufferSize.l, *Length, *Name)
    glGetActiveSubroutineUniformiv(Program.l, ShaderType.l, Index.l, Pname.l, *Values)
    glGetActiveSubroutineUniformName(Program.l, ShaderType.l, Index.l, BufferSize.l, *Length, *Name)
    
    glGetSubroutineIndex(Program.l, Shadertype.l, Name.p-ascii)
    glGetSubroutineUniformLocation(Program.l, Shadertype.l, Name.p-ascii)
    
    glIsTransformFeedback(ID.l)
    
    glMinSampleShading(Value.f)
    
    glPatchParameteri(Pname.l, Value.l)
    glPatchParameterfv(Pname.l, *Values_Float)
    glPauseTransformFeedback()
    glResumeTransformFeedback()
    
    glUniformSubroutinesuiv(ShaderType.l, Count.l, *Indices)
    
  EndImport
  
EndDeclareModule 

Module GL40
  
EndModule

DeclareModule GL41
  
  ImportC GLEW::#LIB_GLEW_FILE_NAME
    
    glActiveShaderProgram(Pipeline.l, ProgramID.l)
    
    glBindProgramPipeline(Pipeline.l)
    
    glClearDepthf(Depth.f)
    
    glCreateShaderProgramv(Type.l, Count.l, Strings.p-ascii)
    
    glDeleteProgramPipelines(n.l, *PipeLines)
    
    glDepthRangeArrayv(First.l, Count.l, *Values)    
    glDepthRangef(Near.f, Far.f)
    glDepthRangeIndexed(Index.l, NearVal.d, FarVal.d)
    
    glGenProgramPipelines(n.l, *Pipelines)
    
    glGetDoublei_v(Target.l, Index.l, *Data_Double)
    glGetFloati_v(Target.l, Index.l, *Data_Float)
    
    glGetVertexAttribLdv(Index.l, Pname.l, *Params)
    
    glIsProgramPipeline(Pipeline.l)
    
    glProgramBinary(Program.l, BinaryFormat.l, *binary, Length.l)
    glProgramParameteri(Program.l, Pname.l, Value.l)
    
    glProgramUniform1f(Program.l, Location.l, v0.f)
    glProgramUniform2f(Program.l, Location.l, v0.f, v1.f)
    glProgramUniform3f(Program.l, Location.l, v0.f, v1.f, v2.f)
    glProgramUniform4f(Program.l, Location.l, v0.f, v1.f, v2.f, v3.f)
    
    glProgramUniform1i(Program.l, Location.l, v0.l)
    glProgramUniform2i(Program.l, Location.l, v0.l, v1.l)
    glProgramUniform3i(Program.l, Location.l, v0.l, v1.l, v2.l)
    glProgramUniform4i(Program.l, Location.l, v0.l, v1.l, v2.l, v3.l)
    
    glProgramUniform1ui(Program.l, Location.l, v0.l)
    glProgramUniform2ui(Program.l, Location.l, v0.l, v1.l)
    glProgramUniform3ui(Program.l, Location.l, v0.l, v1.l, v2.l)
    glProgramUniform4ui(Program.l, Location.l, v0.l, v1.l, v2.l, v3.l)
 
    glProgramUniform1fv(Program.l, Location.l, Count.l, *Value_Floats)
    glProgramUniform2fv(Program.l, Location.l, Count.l, *Value_Floats)
    glProgramUniform3fv(Program.l, Location.l, Count.l, *Value_Floats)
    glProgramUniform4fv(Program.l, Location.l, Count.l, *Value_Floats)
 
    glProgramUniform1iv(Program.l, Location.l, Count.l, *Value_Longs)
    glProgramUniform2iv(Program.l, Location.l, Count.l, *Value_Longs)
    glProgramUniform3iv(Program.l, Location.l, Count.l, *Value_Longs)
    glProgramUniform4iv(Program.l, Location.l, Count.l, *Value_Longs)
    
    glProgramUniform1uiv(Program.l, Location.l, Count.l, *Value_Longs)
    glProgramUniform2uiv(Program.l, Location.l, Count.l, *Value_Longs)
    glProgramUniform3uiv(Program.l, Location.l, Count.l, *Value_Longs)
    glProgramUniform4uiv(Program.l, Location.l, Count.l, *Value_Longs)
    
    glProgramUniformMatrix2fv(Program.l, Location.l, Count.l, Transpose.a, *Value_Floats)
    glProgramUniformMatrix3fv(Program.l, Location.l, Count.l, Transpose.a, *Value_Floats)
    glProgramUniformMatrix4fv(Program.l, Location.l, Count.l, Transpose.a, *Value_Floats)
    
    glProgramUniformMatrix2x3fv(Program.l, Location.l, Count.l, Transpose.a, *Value_Floats)
    glProgramUniformMatrix3x2fv(Program.l, Location.l, Count.l, Transpose.a, *Value_Floats)
    
    glProgramUniformMatrix2x4fv(Program.l, Location.l, Count.l, Transpose.a, *Value_Floats)
    glProgramUniformMatrix4x2fv(Program.l, Location.l, Count.l, Transpose.a, *Value_Floats)
    
    glProgramUniformMatrix3x4fv(Program.l, Location.l, Count.l, Transpose.a, *Value_Floats)
    glProgramUniformMatrix4x3fv(Program.l, Location.l, Count.l, Transpose.a, *Value_Floats)
    
    glReleaseShaderCompiler()
    
    glScissorArrayv(First.l, Count.l, *Values)
    glScissorIndexed(Index.l, Left.l, Bottom.l, Width.l, Height.l)
    glScissorIndexedv(Index.l, *Values)
    glShaderBinary(Count.l, *Shaders, BinaryFormat.l, *Binary, Length.l)
    
    glUseProgramStages(Pipeline.l, Stages.l, Program.l)
    
    glVertexAttribLPointer(Index.l, Size.l, Type.l, Stride.l, *Pointer)
    
    glVertexAttribL1d(Index.l, v0.d)
    glVertexAttribL2d(Index.l, v0.d, v1.d)
    glVertexAttribL3d(Index.l, v0.d, v1.d, v2.d)
    glVertexAttribL4d(Index.l, v0.d, v1.d, v2.d, v3.d)
    
    glVertexAttribL1dv(Index.l, *Values)
    glVertexAttribL2dv(Index.l, *Values)
    glVertexAttribL3dv(Index.l, *Values)
    glVertexAttribL4dv(Index.l, *Values)
    
  EndImport
  
EndDeclareModule 

Module GL41
  
EndModule

DeclareModule GL42
  
  ImportC GLEW::#LIB_GLEW_FILE_NAME
    
    glBindImageTexture(Unit.l, Texture.l, Level.l, Layered.l, Layer.l, Access.l, Format.l)
    
    glDrawElementsInstancedBaseInstance(Mode.l, Count.l, Type.l, *Indices, InstanceCount.l, BaseInstance.l)
    glDrawElementsInstancedBaseVertexBaseInstance(Mode.l, Count.l, Type.l, *Indices, InstanceCount.l, BaseVertex.l, BaseInstance.l)
    glDrawTransformFeedbackInstanced(Mode.l, ID.l, InstanceCount.l)
    glDrawTransformFeedbackStreamInstanced(Mode.l, ID.l, Stream.l, InstanceCount.l)
    
    glGetActiveAtomicCounterBufferiv(Program.l, BufferIndex.l, Pname.l, *Params)
    glGetInternalformativ(Target.l, Internalformat.l, Pname.l, BufferSize.l, *Params)
    
    glMemoryBarrier(Barriers.l)
    glTexStorage1D(Target.l, Levels.l, InternalFormat.l, Width.l)
    glTexStorage2D(Target.l, Levels.l, InternalFormat.l, Width.l, Height.l)
    glTexStorage3D(Target.l, Levels.l, InternalFormat.l, Width.l, Height.l, Depth.l)
    
    glValidateProgramPipeline(Pipeline.l)
    
  EndImport
  
EndDeclareModule 

Module GL42
  
EndModule

DeclareModule GL43
  
  ImportC GLEW::#LIB_GLEW_FILE_NAME
    
    glBindVertexBuffer(BindingIndex.l, Buffer.l, Offset.l, Stride.l)
    
    glClearBufferSubData(Target.l, InternalFormat, Offset.l, Size.l, Format.l, Type.l, *Data_)
    
    glDebugMessageCallback(Callback.i, *UserParam)
    glDebugMessageControl(Source.l,Type.l, Severity.l, Count.l, *ids, Enabled.l)
    glDebugMessageInsert(Source.l, Type.l, ID.l, Severity.l, Length.l, *Message.p-ascii)
    
    glDispatchCompute(num_groups_x.l, num_groups_y.l, num_groups_z.l)
    glDispatchComputeIndirect(indirect.l)
    
    glFramebufferParameteri(Target.l, pname.l, param.l)
    
    glGetDebugMessageLog(Count.l, BufferSize.l, *Sources, *Types, *ids, *Severities, *Lengths, *MessageLog)
    
    glGetInternalformati64v(Target.l, Internalformat.l, Pname.l, BufferSize.l, *Params)
    
    glGetTexImage(Target.l, Level.l, Format.l, Type.l, *Pixels)
    
    glMultiDrawArraysIndirect(Mode.l, *Indirect, Drawcount.l, Stride.l)
    glMultiDrawElementsIndirect(Mode.l, Type.l, *Indirect, DrawCount.l, Stride.l)
    
    glObjectLabel(Identifier.l, Name.l, Length.l, Label.p-ascii)
    glObjectPtrLabel(*Ptr, Length.l, Label.p-ascii)
    
    glPopDebugGroup()
    glPushDebugGroup(Source.l, ID.l, Length.l, Message.p-ascii)
    
    glShaderStorageBlockBinding(Program.l, StorageBlockIndex.l, StorageBlockBinding.l)
    
    glTexStorage2DMultisample(Target.l, Samples.l, InternalFormat.l, Width.l, Height.l, FixedSampleLocations.l)
    glTexStorage3DMultisample(Target.l, Samples.l, InternalFormat.l, Width.l, Height.l, Depth.l, FixedSampleLocations.l)
    
    glTexBufferRange(Target.l, InternalFormat.l, Buffer.l, Offset.l, Size.l)
    
    glTextureView(Texture.l, Target.l, OrigTexture.l, InternalFormat.l, MinLevel.l, NumLevels.l, MinLayer.l, NumLayers.l)
    
    glVertexAttribBinding(AttribIndex.l, BindingIndex.l)
    
    glVertexAttribFormat(AttribIndex.l, Size.l, Type.l, Normalized.b, RelativeOffset.l)
    glVertexAttribIFormat(AttribIndex.l, Size.l, Type.l, RelativeOffset.l)
    glVertexAttribLFormat(AttribIndex.l, Size.l, Type.l, RelativeOffset.l)
    
    glVertexBindingDivisor(Bindingindex.l, Divisor.l)

  EndImport
  
EndDeclareModule 

Module GL43
  
EndModule

DeclareModule GL44
  
  ImportC GLEW::#LIB_GLEW_FILE_NAME
    
    glBindBuffersBase(Target.l, First.l, Count.l, *Buffers)
    glBindBuffersRange(Target.l, First.l, Count.l, *Buffers, *Offsets, *Sizes)
    glBindImageTextures(First.l, Count.l, *Textures)
    glBindSamplers(First.l, Count.l, *Samplers)
    glBindTextures(First.l, Count.l, *Textures)
    glBindVertexBuffers(First, Count.l, *Buffers, *Offsets, *Strides)
    
    glBufferStorage(Target.l, Size.l, *Data_, Flags.l)
    
    glClearTexImage(Texture.l, Level.l, Format.l, Type.l, *Data_)
    glClearTexSubImage(Texture.l, Level.l, xoffset.l, yoffset.l, zoffset.l, Width.l, Height.l, Depth.l, Format.l, Type.l, *Data_)
    
  EndImport
  
EndDeclareModule 

Module GL44
  
EndModule

DeclareModule GL45
  
  ImportC GLEW::#LIB_GLEW_FILE_NAME
    
    glBindTextureUnit(Unit.l, Texture.l)
    glBlitNamedFramebuffer(readFramebuffer, drawFramebuffer.l, srcX0.l, srcY0.l, srcX1.l, srcY1.l, dstX0.l, dstY0.l, dstX1.l, dstY1.l, mask.l, filter.l)
    glCheckNamedFramebufferStatus(Framebuffer.l, Target.l)
    
    glClearNamedBufferData(Buffer.l, InternalFormat, Format.l, Type.l, *Data_)
    glClearNamedBufferSubData(Buffer.l, InternalFormat.l, Offset.l, Size.l, Format.l, Type.l, *Data_)
    
    glClearNamedFramebufferiv(Framebuffer.l, Buffer.l, DrawBuffer.l, *Value)
    glClearNamedFramebufferuiv(Framebuffer.l, Buffer.l, DrawBuffer.l, *Value)
    glClearNamedFramebufferfv(Framebuffer.l, Buffer.l, DrawBuffer.l, *Value)
    glClearNamedFramebufferfi(Framebuffer.l, Buffer.l, DrawBuffer.l, Depth.f, Stencil.l)
    
    glClipControl(Origin.l, Depth.l)
    
    glCompressedTextureSubImage1D(Texture.l, Level, xoffset.l, Width.l, Format.l, ImageSize.l, *Data_)
    glCompressedTextureSubImage2D(Texture.l, Level, xoffset.l, yoffset.l, Width.l, Height.l, Format.l, ImageSize.l, *Data_)
    glCompressedTextureSubImage3D(Texture.l, Level, xoffset.l, yoffset.l, zoffset.l, Width.l, Height.l, Depth.l, Format.l, ImageSize.l, *Data_)
    
    glCopyTextureSubImage1D(Texture.l, Level.l, xoffset.l, x.l, y.l, Width.l)
    glCopyTextureSubImage2D(Texture.l, Level.l, xoffset.l, yoffset.l, x.l, y.l, Width.l, Height.l)
    glCopyTextureSubImage3D(Texture.l, Level.l, xoffset.l, yoffset.l, zoffset.l, x.l, y.l, Width.l, Height.l)
    
    glCreateBuffers(n.l, *Buffers)
    glCreateFramebuffers(n.l, *FrameBuffers)
    glCreateProgramPipelines(n.l, *PipeLines)
    glCreateQueries(Target.l, n.l, *ids)
    glCreateRenderbuffers(n.l, *Renderbuffers)
    glCreateSamplers(n.l, *Samplers)
    glCreateTextures(Target.l, n.l, *Textures)
    glCreateTransformFeedbacks(n.l, *ids)
    glCreateVertexArrays(n.l, *arrays)
    
    glDisableVertexArrayAttrib(vaobj.l, Index.l)
    
    glEnableVertexArrayAttrib(vaobj.l, Index.l)
    
    glFlushMappedNamedBufferRange(Buffer.l, Offset.l, Length.l)
    
    glGenerateTextureMipmap(Texture.l)
    glGetNamedBufferParameteriv(Buffer.l, Pname.l, *Params_Long)
    glGetNamedBufferParameteri64v(Buffer.l, Pname.l, *Params_Quad)
    glGetNamedBufferSubData(Buffer.l, Offset.l, Size.l, *Data_)
    glGetnCompressedTexImage(Target.l, Level.l, BufferSize.l, *Pixels)
    glGetCompressedTextureImage(Texture.l, Level.l, BufferSize.l, *pixels)
    glGetCompressedTextureSubImage(Texture.l, Level.l, xoffset.l, yoffset.l, zoffset.l, Width.l, Height.l, Depth.l, BufferSize.l, *Pixels)
    glGetNamedFramebufferAttachmentParameteriv(Framebuffer.l, Attachment.l, Pname.l, *Params)
    glGetGraphicsResetStatus()
    
    glGetnTexImage(Target.l, Level.l, Format.l, Type.l, BufferSize.l, *Pixels)
    glGetTextureImage(Texture.l, Level.l, Format.l, Type.l, BufferSize.l, *Pixels)
    
    glMapNamedBuffer(Buffer.l, Access.l)
    glMapNamedBufferRange(Buffer.l, Offset.l, Length.l, Access.l)
    glMemoryBarrierByRegion(Barriers.l)
    
    glNamedBufferData(Buffer.l, Size.l, *Data_, Usage.l)
    glNamedBufferStorage(Buffer.l, Size.l, *Data_, Flags.l)
    glNamedBufferSubData(Buffer.l, Offset.l, Size.l, *Data_)
    glNamedFramebufferDrawBuffer(Framebuffer.l, Buffer.l)
    glNamedFramebufferDrawBuffers(Framebuffer.l, n.l, *Bufs)
    
    glNamedFramebufferRenderbuffer(Framebuffer.l, Attachment.l, RenderbufferTarget.l, Renderbuffer.l)
    glNamedFramebufferTexture(Framebuffer.l, Attachment.l, Texture.l, Level.l)
    
    glNamedFramebufferTextureLayer(Framebuffer.l, Attachment.l, Texture.l, Level.l, Layer.l)

    glVertexArrayVertexBuffer(Vaobj.l, BindingIndex.l, Buffer.l, Offset.l, Stride.l)
    glVertexArrayVertexBuffers(Vaobj.l, First.l, Count.l, *Buffers, *Offsets, *Strides)
    glNamedFramebufferReadBuffer(Framebuffer.l, Mode.l)
    
    glReadnPixels(x.l, y.l, Width.l, Height.l, Format.l, Type.l, BufferSize.l, *Data_)
    glNamedRenderbufferStorage(Renderbuffer.l, Internalformat.l, Width.l, Height.l)
    glNamedRenderbufferStorageMultisample(Renderbuffer.l, Samples.l, Internalformat.l, Width.l, Height.l)
    
    glTextureBuffer(Texture.l, Internalformat.l, Buffer.l)
    
    glTextureParameterfv(Texture.l, Pname.l, *Params)
    glTextureParameteriv(Texture.l, Pname.l, *Params)
    glTextureParameterIiv(Texture.l, Pname.l, *Params)
    glTextureParameterIuiv(Texture.l, Pname.l, *Params)
    
    glTextureStorage1D(Texture.l, Levels.l, InternalFormat.l, Width.l)
    glTextureStorage2D(Texture.l, Levels.l, InternalFormat.l, Width.l, Height.l)
    glTextureStorage3D(Texture.l, Levels.l, InternalFormat.l, Width.l, Height.l, Depth.l)
    
    glTextureStorage2DMultisample(Texture.l, Samples.l, InternalFormat.l, Width.l, Height.l, FixedSampleLocations.l)
    glTextureStorage3DMultisample(Texture.l, Samples.l, InternalFormat.l, Width.l, Height.l, Depth.l, FixedSampleLocations.l)
    
    glTextureSubImage1D(Texture.l, Level.l, xoffset.l, Width.l, Format.l, Type.l, *Pixels)
    glTextureSubImage2D(Texture.l, Level.l, xoffset.l, yoffset.l, Width.l, Height.l, Format.l, Type.l, *Pixels)
    glTextureSubImage3D(Texture.l, Level.l, xoffset.l, yoffset.l, zoffset.l, Width.l, Height.l, Depth.l, Format.l, Type.l, *Pixels)
    glTextureBarrier()
    
    glTextureBufferRange(Texture.l, InternalFormat.l, Buffer.l, Offset.l, Size.l)
    
    glTransformFeedbackBufferBase(xfb.l, Index.l, Buffer.l)
    glTransformFeedbackBufferRange(xfb.l, Index.l, Buffer.l, Offset.l, Size.l)
    
    glUnmapNamedBuffer(Buffer.l)
    
    glVertexArrayAttribBinding(Vaobj.l, AttribIndex.l, BindingIndex.l)
    
    glVertexArrayAttribFormat(Vaobj.l, AttribIndex.l, Size.l, Type.l, Normalized.a, RelativeOffset.l)
    glVertexArrayAttribIFormat(Vaobj.l, AttribIndex.l, Size.l, Type.l, Normalized.a, RelativeOffset.l)
    glVertexArrayAttribLFormat(Vaobj.l, AttribIndex.l, Size.l, Type.l, Normalized.a, RelativeOffset.l)
    
    glVertexArrayBindingDivisor(Vaobj.l, BindingIndex.l, Divisor.l)
    glVertexArrayElementBuffer(Vaobj.l, Buffer.l)
   
  EndImport
  
EndDeclareModule 

Module GL45
  
EndModule

; <<<<<<<<<<<<<<<<<<<<<<<
; <<<<< END OF FILE <<<<<
; <<<<<<<<<<<<<<<<<<<<<<<
; IDE Options = PureBasic 6.00 LTS (Linux - x64)
; Folding = -0------
; EnableXP
; CompileSourceDirectory
; Compiler = PureBasic 6.00 LTS (Linux - x64)