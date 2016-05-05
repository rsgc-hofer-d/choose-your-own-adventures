//sets the length of the array: you can change the number of squares by changed the number inside the []
Square test[] = new Square[1000];
//variables for playerX and playerY and the speed of the player also the variable to change to end screen
int scene = 0;
int playerX = 0;
int speed = 8;
int yAnchor = 0;
float y = 0;
float speeds = 5;
int start = -1000;
//my classes
pattern2 p2;
player player = new player();
pattern1 p1;

void setup() {
  //creates the canvas
  size(1000, 750);
  //makes an array for the random squares
  for (int counter=56; counter<test.length; counter+=1) {//spawns [x] number of squares between the random x and y coordinates
    test[counter] = new Square(random(0, 925), random(-35000, -200), 75, 0, 100, 100);
  }
//left side of p1
  for (int counter=0; counter<4; counter+=1) {
    test[counter] = new Square(150+40*counter,y+375-75*counter, 75, 0, 100, 100);
  }
  //right side of p1
  for (int counter=4; counter<8; counter+=1){
    test[counter] = new Square(775-40*(counter-4),y+375-75*(counter-4),75,0,100,100);
  }
  //left line in p1
  for (int counter=8; counter<11; counter+=1){
    test[counter] = new Square(270,y+75-75*(counter-8),75,0,100,100);
  }
  //right line in p1
    for (int counter=11; counter<14; counter+=1){
    test[counter] = new Square(655,y+75-75*(counter-11),75,0,100,100);
  }
  //creates a straight line for p2 on the left side
  for(int counter=14; counter<19;counter+=1){
    test[counter] = new Square(75*(counter-14),start+y,75,0,100,100);
  }
  //crates a straight line for p2 on the right side
   for(int counter=19; counter<24;counter+=1){
    test[counter] = new Square(925-75*(counter-19),start+y,75,0,100,100);
  }
  //bottom of right side of diamond for p2
   for(int counter=24; counter<29;counter+=1){
    test[counter] = new Square(650+40*(counter-24),start+y-75-75*(counter-24),75,0,100,100);
  }
  for(int counter=29; counter<34;counter+=1){
    test[counter] = new Square(275-40*(counter-29),start+y-75-75*(counter-29),75,0,100,100);
  }
  for(int counter=34; counter<39;counter+=1){
    test[counter] = new Square(650+40*(counter-34),start+y-675+75*(counter-34),75,0,100,100);
  }
   for(int counter=39; counter<44;counter+=1){
    test[counter] = new Square(275-40*(counter-39),start+y-675+75*(counter-39),75,0,100,100);
  }
  //creates small diamond
   for(int counter=44; counter<47;counter+=1){
    test[counter] = new Square(462.5+65*(counter-44),start+y-225-75*(counter-44),75,0,100,100);
  }
   for(int counter=47; counter<50;counter+=1){
    test[counter] = new Square(462.5-65*(counter-47),start+y-225-75*(counter-47),75,0,100,100);
  }
   for(int counter=50; counter<53;counter+=1){
    test[counter] = new Square(462.5+65*(counter-50),start+y-525+75*(counter-50),75,0,100,100);
  }
   for(int counter=53; counter<56;counter+=1){
    test[counter] = new Square(462.5-65*(counter-53),start+y-525+75*(counter-53),75,0,100,100);
  }
  //initiating the patterns
  p1 = new pattern1();
  p2 = new pattern2();
  //changes the color mdoe to Hue saturation brightness 
  colorMode(HSB, 360, 100, 100);
}

void draw() {
  y+=speeds;
  //makes it so i can have an end screen by having two scenes
  if (scene==0) {
    background(0);
    //updates the playerX position: this is for hit detection
    for (int counter=0; counter<test.length; counter+=1) {
      test[counter].update(playerX);
    }

    //makes the score show up and run based of frame count.
    fill(0, 100, 100);
    textSize(36);
    text("Score: "+frameCount/20, 800, 100);
    //draws the player (triangle)
    player.drawAt(500, 750, 1, 1);
    //the pattern that starts out the game
    p1.drawAt();
    // the patern that comes up once you get far enough in the game, the one in the diamond shape
    p2.drawAt();
    //Allows player to move from left to right with either 'a' and 'd' or arrow keys
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
    //makes it so the triangle can not get off the canvas
    if (playerX<= -475) {
      playerX+=10;
    }
    if (playerX>=475) {
      playerX-=10;
    }
  }
  //the game over screen when you hit a square
  if (scene ==1) {
    //changes the frame rate to 0 so the score stops counting up
    frameRate(0);
    background(0);
    textAlign(CENTER);
    fill(0, 100, 100);
    String end = "GAME OVER";
    textSize(72);
    text(end, 500, 375);
    fill(0, 100, 100);
    textSize(36);
    text("Score:" +frameCount/20, 800, 100);
  }
}
//HIT DETECTION
//creates lines so the triangle can be detected
//y=2x-300
float line1(float x) {
  float b = -300;
  float m = 2;
  return m*x+b;
}
//y=-2x+1700
float line2(float x) {
  float b =1700;
  float m =-2;
  return m*x+b;
}