
shader_type canvas_item;
// Here are the available types:
// spatial     - for 3D rendering.
// canvas_item - for 2D rendering.
// particles   - for particle systems.

uniform vec2 orbit = vec2(1.0, 1.0);

void vertex() {
  // Animate Sprite moving in a orbit around its location
  VERTEX += vec2(cos(TIME)*orbit.x, sin(TIME)*orbit.y);
  VERTEX.y += 5.0*cos(VERTEX.x) * sin(VERTEX.y);
}

void fragment(){
//  COLOR = texture(TEXTURE, UV); //read from texture
}
