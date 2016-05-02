//sets the length of the array: you can change the number of squares by changed the number inside the []
Square test[] = new Square[1000];

//variables for playerX and playerY and the speed of the player also the variable to change to end screen
int scene = 0;
int playerX = 0;
int speed = 8;
int yAnchor = 0;

//my classes

pattern2 p2;
player player = new player();
pattern1 p1;

void setup() {
//creates the canvas
  size(1000, 750);
  //makes an array for the random squares
  for (int counter=0; counter<test.length; counter+=1) {//spawns [x] number of squares between the random x and y coordinates
    test[counter] = new Square(random(0, 925), random(-35000, -200), 75, 0, 100, 100);
  }

//initiating the patterns
  p1 = new pattern1();
  p2 = new pattern2();
//changes the color mdoe to Hue saturation brightness 
  colorMode(HSB, 360, 100, 100);
}

void draw() {


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