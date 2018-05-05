#ifdef GL_ES
precision mediump float;
#endif

uniform vec2 u_resolution;
uniform vec2 u_mouse;
uniform float u_time;

vec4 RGB(float r, float g, float b) {
    return vec4(r / 255. , g / 255., b / 255., 1.);
}

float x0 = 10., y0 = 100.;
float x1 = 10., y1 = 100.;

bool IsSquareCoord(vec2 coord) {
    if (coord.x >= x0 && 
        coord.x <= y0 &&
       	coord.y >= x1 &&
       	coord.y <= y1) {
     	return true;	   
    }
    else {
        return false;
    }
}

void main() {
    vec4 color = RGB(255., 0., 0.);
    if (IsSquareCoord(u_mouse)) {
     	color = RGB(0., 255., 0.);   
    }
    
    
    if (IsSquareCoord(gl_FragCoord.xy)) {
     	gl_FragColor = color;	   
    }
}
