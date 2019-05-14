boolean recursiveSolve(int x, int y) {
  
  
  
  if (x == endX && y == endY) { 
   println("Maze Solved");
   return true;
  }
   
   if (wasHere[x][y]) {
     println("Already Here At " + x + "+" + y);
     correctPath[x][y] = false;

     return false;
   }
   
   if (myMaze[x][y] == 1) {
     println("Wrong path at " + x + y);
     return false;

   }
  
  if (myMaze[x][y] == 0) {
    println("At Valid Position "+ x+ "+"+ y);
    wasHere[x][y] = true;
    fill(0);
          rect(x*120, y*120, 20,20);
    
        if (x != 0) {
            if (recursiveSolve(x-1, y)) { 
                correctPath[x][y] = true; 
                return true;
            }
        }
        if (x != myMaze.length - 1) { 
            if (recursiveSolve(x+1, y)) { 
                correctPath[x][y] = true;
                return true;
            }
        }
        if (y != 0) { 
            if (recursiveSolve(x, y-1)) { 
                correctPath[x][y] = true;
                return true;
            }
        }
        if (y != myMaze[x].length - 1) {
            if (recursiveSolve(x, y+1)) { 
                correctPath[x][y] = true;
                return true;
            }
        }
  }
return false;
}
