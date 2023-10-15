#version 450

layout(location = 0) in vec4 vertColor;
layout(location = 1) in float time;

layout(location = 0) out vec4 f_color;

void main() {
		f_color = vertColor * (sin(time) / 2.0 + 0.5);
}