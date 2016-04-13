class pattern {
  int tile = 0;
  int start = 700;
  int speed = 0;
  int y = 0;
  int value = 5;
  int value1 = 5;
  int side1 = 0;
  
  void pattern() {
  }
  void drawAt() {
    y+=speed;
    while (tile<value) {
      fill(255);
      noStroke(); 
      //bottom of the pattern creates the two straight lines at the right and left side of the screen
      rect(0+75*tile, start+y, 75, 75);
      rect(925-75*tile, start+y, 75, 75);
      tile+=1;
      println(side1);
    }
    while (side1<value1) {
      fill(255);
      //bottom of large diamond, first loop right side second loop left side
      rect(650+45*side1, start+y-75-75*side1, 75, 75);
      rect(275-45*side1, start+y-75-75*side1, 75, 75);
      //top of the the triangle first loop is the right side second left side
      rect(825-45*side1, start+y-375-75*side1, 75, 75);
      rect(100+45*side1, start+y-375-75*side1, 75, 75);
      side1+=1;
    }
if(side1 == value1){
  side1 =0;
}
    if (tile==value) {
      tile=0;
    }
  }
}