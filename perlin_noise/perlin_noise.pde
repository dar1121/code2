ArrayList<Line> lines;

void setup () {
  size (600, 600);
  frameRate(50);
  background(0);
  
  lines = new ArrayList<Line>();
  for (int p = 0; p < height; p =  p + 40) { 
    lines.add(new Line());
  }
  
}

void draw () { 

    for (int i = lines.size()-1; i >= 0; i--) {     
        Line line = lines.get(i);
        line.display(i); 
        }     
}
  
void mousePressed() { 
    frameCount = -1;
}
  
  
class Line { 
  float xPos = -20, yPos;
  float opacity;
  
  Line()  {}
  
  void display (int i) {   
      xPos++;
      
      if (xPos > width) {
        xPos= 0;   
      } 
       
      
      println(xPos);
      float n = noise (millis()*0.0001, i/2); 
      yPos = map(n, 0, 1, -300, height+300);
      
      
      
      
      float rn = noise (i*20);
      float gn = noise (i/5.5);
      float bn = noise (i+9);
      opacity = map(rn, 0, 1, 200, 255);   
      
      color fillColor= color(
                      map(rn, 0, 1, 250, 255),
                      map(gn, 0, 1, 250, 255),
                      map(bn, 0, 1, 250, 255),
                      opacity/35);  
                      
      color fillColor2= color(
                      map(rn, 0, 1, 60, 160),
                      map(gn, 0, 1, 200, 255),
                      map(bn, 0, 1, 100, 220),
                      opacity/5); 
    

      fill(fillColor2);
      noStroke();
      ellipse(xPos, yPos, 1, random(300)); 
      ellipse(width-xPos, height-yPos, 1, random(300)); 
      ellipse(xPos+width/2, yPos+height/2, 1, random(300)); 
      ellipse(width-(xPos+width/2), (height-yPos)+height/2, 1, random(300)); 
      fill(0);
      rect(xPos, yPos, 1, random(300)); 
      rect(width-xPos, height-yPos, 1, random(300));  
        noFill();
      stroke(fillColor);
      bezier(
      width/2, height/2,
      width-xPos, height-yPos, 
      yPos, xPos,
      xPos, yPos
      );
  }
  
}
