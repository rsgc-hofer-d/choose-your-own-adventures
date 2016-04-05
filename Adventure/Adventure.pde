
int saturation = 125;
int colour = 100;
int transparent = 0;
int playerX = 0;
int speed = 10;
int yAnchor = 0;

//my classes
square square; 
player player = new player();

void setup() {
  size(1000, 800);
  square = new square();
}

void draw() {

  background(0);


  //the player(Triangle shape)
  player.drawAt(500, 750, 1, 1);
  //sets square speed 
  square.drawAt(); 


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
  if (playerX== -480) {
    playerX+=10;
  }
  if (playerX==480) {
    playerX-=10;
  }
  if (keyPressed==true) {
    if (keyCode == RIGHT|| key =='d') {
      colour +=25;
    }
    if (keyCode ==LEFT|| key=='a') {
      saturation+=25;
    }
  }
  if (saturation>=225) {
    saturation-=100;
  }
  if (colour>=250) {
    colour-=150;
  }
}