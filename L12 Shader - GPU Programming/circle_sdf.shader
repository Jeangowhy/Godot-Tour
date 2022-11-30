shader_type canvas_item;

uniform float radius = 0.5;
uniform vec2  center = vec2(0.5, 0.5);
uniform vec2  light_position  = vec2(0.5, 0.0);
uniform vec3  light_color  = vec3(0.9, 0.2, 0.2);
uniform float light_energy  = 0.85;

const float PI = 3.14159265358979323846;

float sdf_circle(vec2 p, float r)
{
	return length(p - center) - r;
}

void fragment()
{
	float dis = sdf_circle(UV, radius);
	float circle = max(0.0, -min(0.0, dis));
	COLOR = vec4(0.0) + circle;
	COLOR.a = clamp(0.0, 1.0, COLOR.a * 100.0);
	//COLOR.a = smoothstep(0, 0.1, COLOR.a);
	
	float lsdf = 1.0 - length(light_position - UV);
	float light = smoothstep(0, 1.0, lsdf * light_energy);
	COLOR.rgb = light_color * light;
}





