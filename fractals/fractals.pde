float xpos;
float ypos;

void setup() {
  size(600,600);
}
 
void draw() {
  background(180);
  frameRate(10);
  drawLine(width, 0, 500);
}
 
void drawLine(float x, float y, float radius) {
  noFill();
  stroke(color(random(0,255),random(0,255),random(0,255)));
  float easing = 0.01;
  x = mouseX;
  y = mouseY;
  float targetX = x;
  float dx = targetX - xpos;
  xpos += dx * easing;
  
  float targetY = y;
  float dy = targetY - ypos;
  ypos += dy * easing;
  println(easing);

  bezier(0, height, ypos - radius, xpos - radius, xpos + radius, ypos + radius, width, 0 );

  if(radius > 1) {
    easing = easing *2; 
    drawLine(width, 0, radius/2);    
  }

}
