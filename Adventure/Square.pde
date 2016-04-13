class square { 

  //mark the position of the square

  float y = random(0,-200);
float x = random(0,950);
  //controls the speed of the square
  float speed = 5;
  
  void square() {
    
  }

  void drawAt() {

    
     
    y += speed;
    fill(y%360, 100, 100);
    rect(x, y, 75, 75);
    rect(x, y, 75, 75);
  }
}