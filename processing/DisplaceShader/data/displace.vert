// for embded OpenGL
#ifdef GL_ES
precision mediump float;
precision mediump int;
#endif

uniform mat4 transformMatrix;
attribute vec4 position;     
varying vec3 pos;

attribute vec2 texcoord;
uniform sampler2D tex0;
varying vec2 texCoordVarying;

void main() {

    texCoordVarying = texcoord;

    // get the position of the vertex relative to the modelViewProjectionMatrix
	vec4 modifiedPosition = transformMatrix * position;
   
    // we need to scale up the values we get from the texture
    float scale = 100.0;
    
    // here we get the red channel value from the texture
    // to use it as vertical displacement
    float displacementY = texture2DLod(tex0, texCoordVarying.xy, 0.0).x;
		
    // use the displacement we created from the texture data
    // to modify the vertex position
    modifiedPosition.y += displacementY * scale;

    // this is the resulting vertex position
	gl_Position = modifiedPosition;

}