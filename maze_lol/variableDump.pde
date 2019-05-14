// 0 = no wall 
// 1 = there is a wall

int path = 0, pole = 1;

int s = 120; 
int twenty = 20, hundred = 100;


// vertical wall placements
int [][]verticalHell() {
    
  
int [][] verticalWorld = new int[30] [3];
  
  int [][] coordinates = {
    {100, 0}, {220, 0},  {340, 0} , {460, 0} , {580, 0}, 
    {100, 120}, {220, 120},  {340, 120} , {460, 120} , {580, 120},
    {100, 240}, {220, 240},  {340, 240} , {460, 240} , {580, 240},
    {100, 360}, {220, 360},  {340, 360} , {460, 360} , {580, 360},
    {100, 480}, {220, 480},  {340, 480} , {460, 480} , {580, 480},
    {100, 600}, {220, 600},  {340, 600} , {460, 600} , {580, 600},
  };
  
  for (int i = 0; i < 30; i++) {
  verticalWorld[i][0] = vvwalls[i];      
  verticalWorld[i][1] = coordinates[i][0];
  verticalWorld[i][2] = coordinates[i][1];
  }
      
  return verticalWorld;
    
};

int [][]horizontalHell() {
    
  
int [][] horizontalWorld = new int[30] [3];
  
  int [][] coordinates = {
   {0,100}, {120, 100}, {240, 100}, {360, 100}, {480, 100}, {600,100},
   {0,220}, {120, 220}, {240, 220}, {360, 220}, {480, 220}, {600,220},
   {0,340}, {120, 340}, {240, 340}, {360, 340}, {480, 340}, {600,340},
   {0,460}, {120, 460}, {240, 460}, {360, 460}, {480, 460}, {600,460},
   {0,580}, {120, 580}, {240, 580}, {360, 580}, {480, 580}, {600,580},
  };
  
  for (int i = 0; i < 30; i++) {
  horizontalWorld[i][0] = hhwalls[i];      
  horizontalWorld[i][1] = coordinates[i][0];
  horizontalWorld[i][2] = coordinates[i][1];
  }
      
  return horizontalWorld;
    
};


// actual maze itself that algorithm uses to solve 



int [][] myMaze = {  

{path, vvwalls[0], path, vvwalls[1], path, vvwalls[2], path, vvwalls[3], path, vvwalls[4], path},

{hhwalls[0], pole, hhwalls[1], pole, hhwalls[2], pole, hhwalls[3], pole, hhwalls[4], pole, hhwalls[5]},

{path, vvwalls[5], path, vvwalls[6], path, vvwalls[7], path, vvwalls[8], path, vvwalls[9], path},

{hhwalls[6], pole, hhwalls[7], pole, hhwalls[8], pole, hhwalls[9], pole, hhwalls[10], pole, hhwalls[11]},

{path, vvwalls[10], path, vvwalls[11], path, vvwalls[12], path, vvwalls[13], path, vvwalls[14], path, vvwalls[15], path},

{hhwalls[12], pole, hhwalls[13], pole, hhwalls[14], pole, hhwalls[15], pole, hhwalls[16], pole, hhwalls[17]},

{path, vvwalls[15], path, vvwalls[16], path, vvwalls[17], path, vvwalls[18], path, vvwalls[19], path},

{hhwalls[8], pole, hhwalls[19], pole, hhwalls[20], pole, hhwalls[21], pole, hhwalls[22], pole, hhwalls[23]},

{path, vvwalls[20], path, vvwalls[21], path, vvwalls[22], path, vvwalls[23], path, vvwalls[24], path},

{hhwalls[24], pole, hhwalls[25], pole, hhwalls[26], pole, hhwalls[27], pole, hhwalls[28], pole, hhwalls[29]},

{path, vvwalls[25], path, vvwalls[26], path, vvwalls[27], path, vvwalls[28], path, vvwalls[29], path},


}; 




 


      
      
      
