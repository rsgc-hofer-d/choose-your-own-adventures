int playerX = 0;
int speed = 10;
void setup() {
  size(1000, 800);
}

void draw() {
  background(0);


 
  // background(0);

  if (keyPressed==true) {
    if (keyCode == RIGHT|| key =='d') {
      playerX+=speed;
    }
  }
  if (keyPressed==true) {
    if (key=='a'||keyCode==LEFT) {
      playerX-=speed;
    }
  }
  triangle(475+playerX, 750, 525+playerX, 750, 500+playerX, 700);
}