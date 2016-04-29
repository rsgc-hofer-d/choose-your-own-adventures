class Square { 

  //mark the position of the square
  float x;
  float y;
  int size;
  int hue;
  int saturation;
  int brightness;

  //controls the speed of the square
  float speed = 5;


  Square(float _x, float _y, int _size, int _hue, int _saturation, int _brightness) {
    x= _x;
    y= _y;
    size=_size;
    hue = _hue;
    saturation=_saturation;
    brightness=_brightness;
  }

  void update(float playerX) {

    if (525+playerX >= x && x >= 475+playerX) {
      if (y>=line1(500) && y< line1(525) && y>=line2(500) && y<= line2(475) && y<750 ) {
        scene+=1;
      }
    }


    y += speed;
    fill(y%360, saturation, brightness);
    rect(x, y, size, size);
  
  }
}