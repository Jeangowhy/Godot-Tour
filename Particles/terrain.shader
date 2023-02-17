shader_type spatial;

uniform sampler2D height_map;
uniform sampler2D normal_map;
uniform float scale = 1.0;
uniform float multiply = 1.0;
uniform float offset = -0.5;
uniform vec2 translation = vec2(0,0);

varying vec2 txt_position;

float height(vec2 pos) {
	//return sin(pos.x) + cos(pos.y);
	return (length(texture(height_map, pos)) + offset) * multiply;
}

void vertex() {
	vec2 pos = VERTEX.xz / scale + translation;
	txt_position = pos;
	VERTEX.y += height(pos);
}

void fragment() {
	NORMALMAP = texture(normal_map, txt_position).xyz;
	ALBEDO = vec3(5.0) * texture(height_map, txt_position).xyz;
}