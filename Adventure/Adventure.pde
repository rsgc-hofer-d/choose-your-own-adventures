
int saturation = 125;
int colour = 100;
int transparent = 0;
int playerX = 0;
int speed = 8;
int yAnchor = 0;

//my classes
square s1; 
square s2;
pattern2 p2;
player player = new player();
pattern1 p1;

void setup() {
  
  size(1000, 750);
  s1 = new square();
  s2 = new square();
  p1 = new pattern1();
  p2 = new pattern2();
  
  colorMode(HSB,360,100,100);
}

void draw() {

 

background(0);
  //the player(Triangle shape)
  player.drawAt(500, 750, 1, 1);
  //the square
  s1.drawAt(); 
  s2.drawAt();
  //the pattern that starts out the game
  p1.drawAt();
  // the patern that comes up once you get far enough in the game
  p2.drawAt();
  //Allows player to move from left to right
  //also changes colour of triangle when moving
  if (keyPressed==true) {
    if (keyCode == RIGHT|| key =='d') {
      playerX+=speed;
      colour +=25;
    }
  }
  if (keyPressed==true) {
    if (key=='a'||keyCode==LEFT) {
      playerX-=speed;
      saturation+=25;
    }
  }
  if (playerX== -480) {
    playerX+=10;
  }
  if (playerX==480) {
    playerX-=10;
  }
}