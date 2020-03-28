uniform mat4 transformMatrix;
attribute vec4 position;     
varying vec3 pos;
 
void main() {
  gl_Position = transformMatrix * position;
  pos = vec3(position) * 0.01;
}