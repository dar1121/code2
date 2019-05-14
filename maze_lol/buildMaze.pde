Verticalwall vv;
Horizontalwall hh;
boolean [] wallPressed = new boolean [30]; 
boolean [] wallPressedH = new boolean [30]; 
int [] vvwalls = new int [30];
int [] hhwalls = new int [30];

void buildMaze (){ 
verticalVariables = verticalHell();
horizontalVariables = horizontalHell();

for (int i = 100; i<700; i=i+120) {
  for (int j = 100; j<700; j=j+120) {
  fill(0);
  rect(i, j, 20, 20);
}
}
  
for (int i = 0; i < 30; i ++ ) {  

          if (wallPressed[i]) {
           vvwalls[i] = 1;
         } else {
            vvwalls[i] = 0;
         }

         vv = new Verticalwall(verticalVariables[i][1], verticalVariables [i][2], wallPressed[i]);
         vv.display();  
    
}

for (int i = 0; i < 30; i ++ ) {  

          if (wallPressedH[i]) {
           hhwalls[i] = 1;
         } else {
            hhwalls[i] = 0;
         }
         hh = new Horizontalwall(horizontalVariables[i][1], horizontalVariables[i][2], wallPressedH[i]);
         hh.display();  
    
}

}
 
 
class Verticalwall{
  
  int xpos, ypos;
  boolean status;
  boolean show; 
  color fill; 
  
  
  Verticalwall (int tempXpos, int tempYpos, boolean tempStatus) {
    xpos = tempXpos;
    ypos = tempYpos;
    status = tempStatus;
    
  }

  void display() {
    
    if (!status) {
       fill(255);
    } else if (status) {
      fill (0);
    }    
    rect (xpos, ypos, 20, 100); 
  }; 

}

class Horizontalwall{
  
  int xpos, ypos;
  boolean status;
  boolean show; 
  color fill; 
  
  
  Horizontalwall (int tempXpos, int tempYpos, boolean tempStatus) {
    xpos = tempXpos;
    ypos = tempYpos;
    status = tempStatus;
    
  }

  void display() {
    stroke(200);
    if (!status) {
       fill(255);
    } else if (status) {
      fill (0);
    }    
    rect (xpos, ypos, 100, 20); 
  }; 

}
