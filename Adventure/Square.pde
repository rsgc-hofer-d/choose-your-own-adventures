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

  void update() {



    y += speed;
    fill(y%360, 100, 100);
    rect(x, y, size, size);
  }
}