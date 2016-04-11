class pattern{
  int tile = 0;
  int start = 100;
  int speed = 5;
  int y = 0;
  int value = 5;
void pattern() { 
}
void drawAt(){
   y+=speed;
 while(tile<value){
  fill(255);
  noStroke(); 
  //bottom of the pattern creates the two straight lines at the right and left side of the screen
  rect(0+75*tile,start+y,75,75);
  rect(925-75*tile, start+y, 75,75);
  tile+=1;
  println(y);
  
  
 }
if(tile==value){
  tile=0;
}
 }
}
  