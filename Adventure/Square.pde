class square { 

  //mark the position of the square
  float x; 
  float y;

  //controls the speed of the square
  float speed = 5;

  void square() {
    y = 0;
    x = random(0,1000);
  }



  void drawAt() {
    fill(230, 100, 150);  
    y += speed;
    rect(x, y, 75, 75);
  }
}