shader_type spatial;

uniform sampler2D height_map;
uniform float scale = 1.0;
uniform float multiply = 1.0;
uniform float offset = -0.5;
uniform vec2 translation = vec2(0,0);

float height(vec2 pos) {
    //return sin(pos.x) + cos(pos.y);
    return (length(texture(height_map, pos / scale + translation)) + offset) * multiply;
}

void vertex() {
    VERTEX.y += height(VERTEX.xz);
}