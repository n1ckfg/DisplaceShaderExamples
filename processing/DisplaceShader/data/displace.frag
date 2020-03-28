#ifdef GL_ES
precision mediump float;
precision mediump int;
#endif
 
varying vec3 pos;
 
void main() {
  float c = .5 + .5*sin(17.*(pos.x + pos.y + pos.z));
  c = step(.5, c);
  gl_FragColor = vec4(c, c, c, 1.);
}