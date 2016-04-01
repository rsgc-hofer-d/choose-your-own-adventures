int tilesize = 50;
int column = 0;
int row = 0;
int saturation = 125;
int colour = 100;
int transparent = 0;
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
  fill(colour, saturation, transparent);
  triangle(475+playerX, 750, 525+playerX, 750, 500+playerX, 700);
  
  if(playerX== -480){
    playerX+=10;
  }
  if(playerX==480){
    playerX-=10;
  }
  if (keyPressed==true) {
    if (keyCode == RIGHT|| key =='d') {
      colour +=25;
    }if (keyCode ==LEFT|| key=='a'){
      saturation+=25;
    }
  }
 if(saturation>=225){
   saturation-=100;
 }
  if(colour>=250){
   colour-=150;
 }
}