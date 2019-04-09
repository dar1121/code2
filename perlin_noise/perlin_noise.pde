ArrayList<Line> lines;


void setup () {
  size (600, 600);
  background(255);
  noStroke();
  lines = new ArrayList<Line>();
  lines.add(new Line());
  frameRate(30);
}

void draw () { 
  

 for (int i = lines.size()-1; i >= 0; i--) { 
    Line line = lines.get(i);
    line.display(i);
    
      if(lines.get(i).isOffScreen()){
      lines.remove(i);
    }
    }  
      

  }
  
void mousePressed() {
    lines.add(new Line());  
 }
  
  
class Line { 
  float xPos = 0, yPos;
  
  Line() { }
  
  void display (int i) {
      fill(0);
      xPos++;   
      
      float n = noise (millis()*0.0001, i/2);
      yPos = map(n, 0, 1, 0, height);
      rect(xPos, yPos, 1,1);  
  }
  
  boolean isOffScreen(){
    return xPos  > width;
  }
  
}
