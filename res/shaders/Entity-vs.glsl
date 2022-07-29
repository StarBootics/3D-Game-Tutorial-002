#version 330

layout (location=0) in vec3 Position;
layout (location=1) in vec3 Normal;
layout (location=2) in vec3 Tangent;
layout (location=3) in vec2 UVMap;

out vec2 texCoord0;
out vec3 normal0;
out vec3 ToLightVector;

uniform mat4 ModelMatrix;
uniform mat4 ViewMatrix;
uniform mat4 ProjectionMatrix;
uniform vec3 LightPosition;

void main()
{
  vec4 WorldPosition = ModelMatrix * vec4(Position, 1.0);
  gl_Position = ProjectionMatrix * ViewMatrix * WorldPosition;
  
  normal0 = normalize((ModelMatrix * vec4(Normal, 0.0)).xyz);
  ToLightVector = normalize(LightPosition - WorldPosition.xyz);
  texCoord0 = UVMap;

}
