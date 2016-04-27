class Square { 

  //mark the position of the square
  float x;
  float y;
  int size;
  int shade;

  //controls the speed of the square
  float speed = 5;


  Square(float _x, float _y, int _size) {
    x= _x;
    y= _y;
    size=_size;
  }

  void update(float playerX) {

    if (525+playerX > x && x >= 475+playerX) {
      if (y>=line1(500) && y< line1(525) && y>=line2(500) && y<= line2(475) && y<750 ) {
        fill(0,0,100);
        rect(100, 100, 100, 100);
      }
    }


    y += speed;
    fill(y%360, 100, 100);
    rect(x, y, size, size);
    while(-1000>y && y>-2000){
      y=random(-10000);
    }
  }
}