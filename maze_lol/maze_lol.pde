int state = 1;
boolean solveMaze = true;

int [][] verticalVariables = new int [30][3];
Verticalwall [] verticalwalls = new Verticalwall[30];

int [][] horizontalVariables = new int [30][3];
Horizontalwall [] horizontalwalls = new Horizontalwall[30];

boolean [][] wasHere =  new boolean [width][height];
boolean [][] correctPath = new boolean [width] [height];
int startX = 0, startY = 0;
int end, endX = 10, endY = 10;

void setup() {
  size(700,700); 
  background(255);
  fill(120);
  rect(20,20,20,20);
}

void draw(){ 
switch(state) {
  case 1: 
  buildMaze();
  
  break;
  
  case 2: 
  
  if (solveMaze) {
  
  for (int x = 0; x < myMaze.length; x++) {
    for (int y = 0; y<myMaze[x].length; y++) {
      wasHere[x][y] = false;
      correctPath[x][y] = false;
    }
  }

 boolean b = recursiveSolve(startX,startY);
 if (b){
   
   //for (int i = 0; i < correctPath.length; i ++) {
   //  for (int j = 0; j < correctPath[i].length; j++) {
       
   //    if (correctPath[i][j]) {
   //      fill (255, 0, 255);
   //    } else { fill( 0);}
   //    rect (20 + (j*20), 20 + (i *20), 20, 20);
   //  }
   //}
   
 }
 solveMaze = false;
 state = 3;  
  }
 break;
 
 case 3:
 
 break;
}
}
