shader_type canvas_item;

uniform int amount = 6;

void fragment()
{
	vec2 p = round(UV * float(amount)) / float(amount);
	
	vec4 text = texture(TEXTURE, p);
	
	COLOR = text;
}






