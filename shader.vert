#version 450

layout(location = 0) in vec2 position;
layout(location = 1) in vec4 color;

layout(set = 0, binding = 0) uniform Data {
	float time;
	uvec2 resolution;
} uniforms;

layout(location = 0) out vec4 vertColor;
layout(location = 1) out float time;
layout(location = 2) flat out uvec3 resolution;

void main() {
		gl_Position = vec4(position, 0.0, 1.0);
		vertColor = color;
		time = uniforms.time;
		resolution = uvec3(uniforms.resolution, 1.0);
}