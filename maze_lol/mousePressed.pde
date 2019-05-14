void mousePressed() {
  verticalClicked();
  horizontalClicked();
  startSolving();
}

void verticalClicked() {
  for (int e = 0; e < verticalwalls.length; e++) {
    if (mouseX >= verticalVariables[e][1] && mouseX <= verticalVariables[e][1] + 20 
    && mouseY >= verticalVariables[e][2] && mouseY <= verticalVariables[e][2] + 100) {    
      if (wallPressed[e]==false) {
          wallPressed[e] = true;
          }
          else {
            wallPressed[e] = false;
          }
    }
  }
}

void horizontalClicked() {
  for (int e = 0; e < horizontalwalls.length; e++) {
    if (mouseX >= horizontalVariables[e][1] && mouseX <= horizontalVariables[e][1] + 100 
    && mouseY >= horizontalVariables[e][2] && mouseY <= horizontalVariables[e][2] + 20) {    
      if (wallPressedH[e]==false) {
          wallPressedH[e] = true;
          }
          else {
            wallPressedH[e] = false;
          }
        
    }
  }
}

void startSolving() {

    if (mouseX >=  20 && mouseX <= 40 
    && mouseY >= 20 && mouseY <= 40) {    
     state = 2;
    }
  
}
