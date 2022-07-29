#version 330

in vec2 texCoord0;
in vec3 normal0;
in vec3 ToLightVector;

uniform vec3 LightColor;
uniform sampler2D DiffuseMap;

out vec4 FragColor;

void main()
{ 
  float nDotL = dot(normal0, ToLightVector);
  float Brightness = max(nDotL, 0.1);
  vec3 Diffuse = Brightness * LightColor;
  FragColor = vec4(Diffuse, 1.0) * texture(DiffuseMap, texCoord0);
}