class pattern2 {
  int tile = 0;
  int start = -700;
int speed = 5;
  int y = 0;
  int value = 5;
  int value1 = 5;
  int side = 0;
  int smallside=0;
  int value2 = 3;

  void pattern2() {
  }
  void drawAt() {
    y+=speed;
    while (tile<value) {
      fill(120+15*tile,100,100);
      noStroke(); 
      //bottom of the pattern creates the two straight lines at the right and left side of the screen
      rect(0+75*tile, start+y, 75, 75);
      rect(925-75*tile, start+y, 75, 75);
      tile+=1;
    }
    //creating large diamond
    while (side<value1) {
      fill(195+15*side,100,100-10*side);
      //bottom of large diamond, first loop right side second loop left side
      rect(650+40*side, start+y-75-75*side, 75, 75);
      rect(275-40*side, start+y-75-75*side, 75, 75);
      //top of the the triangle first loop is the right side second left side
      rect(650+40*side, start+y-675+75*side, 75, 75);
      rect(275-40*side, start+y-675+75*side, 75, 75);
      side+=1;
    }
    //creates small diamond
    while (smallside<value2) {
      fill(15*smallside,100,100);
      //bottom of diamond, first line is right second left
      rect(462.5+65*smallside, start+y-225-75*smallside, 75, 75);
      rect(462.5-65*smallside, start+y-225-75*smallside, 75, 75);
      //top of diamond first line is right second line is left
      rect(462.5+65*smallside, start+y-525+75*smallside, 75, 75);
      rect(462.5-65*smallside, start+y-525+75*smallside, 75, 75);
      smallside+=1;
      //makes the cross inside the small diamond a different colour.
      fill(y%360+1,100,100);
      rect(472.5, start+y-450, 55, 225);
      rect(407.5, start+y-375, 185, 75);
    
    }
    if (smallside == value2) {
      smallside=0;
    }
    if (side == value1) {
      side =0;
    }
    if (tile==value) {
      tile=0;
    }
  }
}