int playerX = 0;
int speed = 10;
void setup() {
  size(1000, 800);
  
}

void draw(){
  background(0);
  if (keyPressed==true){
    if (key == 'd'|| key =='D'){
      playerX+=speed;
    } 
  }
  if(keyPressed==true){
    if(key=='a'||key=='A'){
      playerX-=speed;
    }
  }
  triangle(475+playerX,750,525+playerX,750,500+playerX,700);
}