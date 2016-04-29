Square test[] = new Square[200];
Square pattern[] = new Square[20];

int scene = 0;
int playerX = 0;
int speed = 8;
int yAnchor = 0;

//my classes

pattern2 p2;
player player = new player();
pattern1 p1;

void setup() {

  size(1000, 750);
  for (int counter=0; counter<test.length; counter+=1) {
    test[counter] = new Square(random(0, 925), random(-10000, -200), 75,0,100,100);
  }
  for (int pcounter=0; pcounter<4;pcounter++){
    p1[pcounter] = new Square(150+40*pcounter,375-75*pcounter,75,0,100,100);
  }

  p1 = new pattern1();
  p2 = new pattern2();

  colorMode(HSB, 360, 100, 100);
}

void draw() {



  if (scene==0) {
    background(0);
    for (int counter=0; counter<test.length; counter+=1) {
      test[counter].update(playerX);
    }
    //the player(Triangle shape)

    float m = second();
    fill(0, 100, 100);
    textSize(36);
    text("Score: "+frameCount/30, 800, 100);
    player.drawAt(500, 750, 1, 1);
    //if (525+playerX > mouseX && mouseX >= 475+playerX) {
    //  if (mouseY>=line1(500) && mouseY< line1(525) && mouseY>=line2(500) && mouseY<= line2(475) && mouseY<750 ) {
    //    rect(100, 100, 100, 100);
    //  }
    //}



    //the pattern that starts out the game
    p1.drawAt();
    // the patern that comes up once you get far enough in the game
    p2.drawAt();
    //Allows player to move from left to right
    //also changes colour of triangle when moving
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
    if (playerX<= -475) {
      playerX+=10;
    }
    if (playerX>=475) {
      playerX-=10;
    }

    if (keyPressed==true) {
      if (key =='c') {
        scene+=1;
      }
    }
  }
  if (scene ==1) {
    frameRate = 0;
    background(0);
    textAlign(CENTER);
    fill(0, 100, 100);
    String end = "GAME OVER";
    textSize(72);
    text(end, 500, 375);
    fill(0, 100, 100);
    textSize(36);
    text("Score: ", 800, 100);

    if (keyPressed==true) {
      if (key =='x') {
        scene-=1;
      }
    }
  }
}
//HIT DETECTION
float line1(float x) {
  float b = -300;
  float m = 2;
  return m*x+b;
}
float line2(float x) {
  float b =1700;
  float m =-2;
  return m*x+b;
}