class square { 

  //mark the position of the square
  float y = random(-200,0);
  float x = random(0, 1000); 
 
  //controls the speed of the square
  float speed = 5;

  void square() {
  }


  void drawAt() {

    fill(230, 100, 150);  
    y += speed;
    fill(y-100,100,100);
    rect(x, y, 75, 75);
  }
}