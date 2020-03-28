import peasy.PeasyCam;
 
PeasyCam cam;
PShader fx;
 
void setup() {
  size(600, 600, P3D);
  cam = new PeasyCam(this, 400);
  fx = loadShader("displace.frag", "displace.vert");
  hint(DISABLE_OPTIMIZED_STROKE);
}
 
void draw() {
  background(0);
  shader(fx);
  box(300);
}
