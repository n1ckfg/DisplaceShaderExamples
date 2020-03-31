// for embded OpenGL
#ifdef GL_ES
precision mediump float;
precision mediump int;
#endif

uniform sampler2D tex0;
varying vec2 texCoordVarying;

void main() {

    gl_FragColor = texture2D(tex0, texCoordVarying);

}