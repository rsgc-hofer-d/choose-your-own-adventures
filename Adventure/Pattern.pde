class pattern{
  int tile = 0;
  int start = 100;
  int speed = 5;
  int y = 0;
void pattern() { 
}
void drawAt(){
 while(tile<10){
  fill(255);
  rect(0+50*tile,start+y,75,75);
  y+=speed;
  tile+=1;
 }
 }
}
  
  