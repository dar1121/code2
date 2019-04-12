class Expand {
  float size;
  float xpos, ypos;
  float update = 1;
  
  Expand(float ss, float xx, float yy) {
    size = ss; 
    xpos = xx;
    ypos = yy;
  }
  
  void bigger () {
    size=size+update;  
    if (size < 5){
      update=update*-1;
    } 
  }
  
  void smaller () {
     if (size > 40){
      update=update*-1;
    } 
  }
}



class Square extends Expand {
  color sqcolor;
  float xupdate, yupdate;
  
  Square(float s, float x, float y, color sqc) {
    super(s, x, y);
    sqcolor = sqc;
  }
  
  void display () {
    fill(sqcolor);
    rect(xpos, ypos, size, size);
    if (mousePressed) {
      sqcolor = color(random(0,255),random(0,255),random(0,255),random(0,255));
    }
  }
 

}
