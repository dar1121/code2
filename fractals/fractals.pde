float xpos;
float ypos;

void setup() {
  fullScreen();
  noCursor();
}
 
void draw() {
  background(20);
  frameRate(10);
  drawLine(width, 0, 200);
}
 
void drawLine(float x, float y, float radius) {
  noFill();
  //stroke(230);
  //if (mousePressed == true) {
    stroke(color(random(0,255),random(0,255),random(0,255)));
  //}
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
  
  quad(xpos, height-ypos, ypos - radius, xpos - radius, xpos + radius, ypos + radius, width-xpos, ypos );

  if(radius > 1) {
    easing = easing *2; 
    drawLine(width, 0, radius/2);    
  }

}
