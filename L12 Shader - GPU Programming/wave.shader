shader_type spatial;
//render_mode unshaded;
render_mode diffuse_toon, specular_toon;

// Constants in Godot 4.x
//const float PI  = 3.14159265358979323846;
//const float TAU = 6.28318530717958647692;

uniform sampler2D normalmap;
uniform sampler2D noise;

varying vec3 tex_position;

float wave(vec2 position)
{
	position += texture(noise, position / 10.0).x * 2.0 - 1.0;
	vec2 wv = 1.0 - abs(sin(position));
//	return length(wv);
	return pow(1.0 - pow(wv.x * wv.y, 0.65), 4.0);
}

float height(vec2 position, float time)
{
	return wave((position - time) * 0.4 ) * 0.3 + 
		   wave((position - time) * 0.3 ) * 0.3 +
		   wave((position + time) * 0.5 ) * 0.2 +
		   wave((position - time) * 0.6 ) * 0.2;
}

void vertex() {
	// save position for fragment, conver Plane coordinate from [-1, 1] to [0, 1]
	tex_position = (VERTEX.xyz + 1.0) / 2.0;
	
	float edge = 1.0 - smoothstep(0.0, 1.2, length(VERTEX.xz));
	VERTEX.y += height(VERTEX.xz, TIME) ;//* edge;
}

void fragment()  
{
	float fresnel = sqrt(1.0 - dot(NORMAL, VIEW));
	RIM = 0.2;
	METALLIC = 1.0;
	ROUGHNESS = 0.01 * (1.0 - fresnel);
	ALBEDO = vec3(0.1, 0.3, 0.5) + (0.8 * fresnel);
	NORMALMAP = texture(normalmap, tex_position.xz).xyz;
	
//	ALBEDO = vec3(VERTEX); // View space coordinate
}