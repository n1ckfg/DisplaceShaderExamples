import peasy.PeasyCam;
 
PeasyCam cam;
PShader fx;
PImage img;
 
void setup() {
  size(600, 600, P3D);
  cam = new PeasyCam(this, 400);
  fx = loadShader("displace.frag", "displace.vert");
  img = loadImage("test.jpg");
  fx.set("tex0", img);
  
  hint(DISABLE_OPTIMIZED_STROKE);
}
 
void draw() {
  background(0);
  shader(fx);
  box(300);
}
