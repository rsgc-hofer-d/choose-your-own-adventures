
int saturation = 125;
int colour = 100;
int transparent = 0;
int playerX = 0;
int speed = 10;
int yAnchor = 0;

//my classes
square s1; 
square s2;
pattern p1;
player player = new player();

void setup() {
  size(1000, 800);
  s1 = new square();
  s2 = new square();
  p1 = new pattern();
}

void draw() {

  background(0);


  //the player(Triangle shape)
  player.drawAt(500, 750, 1, 1);
  //the square
  s1.drawAt(); 
  s2.drawAt();
  // the patern that comes up once you get far enough in the game
  p1.drawAt();
  //Allows player to move from left to right
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

  //changes colour of Player(triangle) when moving 
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