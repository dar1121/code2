//mouse press to change

ArrayList<Square> squares;

void setup () {
  size(600,600);
  rectMode(RADIUS);
  noStroke();
  squares = new ArrayList<Square>();
  for (int p = 0; p < height; p =  p + 40) {
    squares.add(new Square(10, random(0,width), random(0,height), color(random(0,255),random(0,255),random(0,255),random(0,255))));
  }

}

void draw () {
  background(255);
  for (int i = squares.size()-1; i >= 0; i--) {   
    Square square = squares.get(i);
    square.display();
    square.bigger();
    square.smaller();
  }
}
