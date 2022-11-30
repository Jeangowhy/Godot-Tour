shader_type canvas_item;
render_mode blend_mix;

uniform float radius:hint_range(0.0, 1.0, 0.01) = 0.4;
uniform float grid:hint_range(0.0, 100.0) = 10.0;
uniform float sharp:hint_range(0.0, 1.0, 0.01) = 0.50;
uniform bool stencil = false;

void fragment()
{
	COLOR = texture(TEXTURE, UV);
	// cast bool to 1.0 or -1.0
	float sign = float(int(stencil) * - 2 + 1);
	float circles = length(mod(UV, 1.0 / grid) * grid - 0.5) - radius;
	COLOR.a = 1.0 - float(stencil) - sign * clamp(sharp * 100.0 * circles, 0.0, 1.0);
}