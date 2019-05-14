ArrayList<Cube> myCubes;

void setup() {
    size(600,600,P3D);
    noStroke();
    myCubes = new ArrayList<Cube>();    
    myCubes.add(new Cube(random(0,width),random(0,height),random(-width,300)));
  
}

void draw() {
    background(100);
    lights();
    spotLight(0, 0, 255, width/2, height/2, 400, 0, 0, -1, PI/4, 2);

     for (int i = myCubes.size()-1; i >= 0; i--) {     
        Cube cube = myCubes.get(i);  
        cube.display(i); 
        }   
        
        println(myCubes.size());
  
} 

void mousePressed() { 
    myCubes.add(new Cube(random(width),random(height),random(-width,width)));
}

class Cube {
  float x, y, z;
  
  Cube(float xpos, float ypos, float zpos) {
    x = xpos; y = ypos; z = zpos;
  }
  
  void display(float i) {
    pushMatrix();
    translate(x, y, z); 
    rotateY(mouseX/75+i);
    rotateX(mouseY/75+i);
    fill(100);
    box(100);
    popMatrix();
  }
}
