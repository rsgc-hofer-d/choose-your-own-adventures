int tilesize = 50;
int column = 0;
int row = 0;
int saturation = 0;
int clicked = 100;
int transparent = 0;

void setup() {
  size(1000, 800);
  frameRate(10);
  background(0);
}

void draw() {
  // clear screen, grey background
 noStroke();
  fill(clicked, saturation, transparent);

  rect(column, row, tilesize, tilesize);
  column +=50;
  if (column==1000) {
    column-=1000;
    row += 50;
 
    
  }
     if(mouseX>200){ 
      transparent = 0;
    }
    else{transparent = 0;
      }
 
}
void mouseMoved() {
  saturation += 50;

  if (saturation>200) {
    saturation=0;
  }
}
void mouseClicked() {
  if (clicked<250) {
    clicked += 75;
  } else {
    clicked=0;
  }
}