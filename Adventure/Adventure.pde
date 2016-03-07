int tilesize = 50;
int column = 0;
int row = 0;

void setup() {
  size(1000, 800);
  frameRate(10);
}
int value = 1;
void draw() {
  // clear screen, grey background
  fill(value, 0, 0);

  rect(column, row, tilesize, tilesize);
  column +=50;
  if (column==1000) {
    column-=1000;
    row += 50;
  }
}
void mouseClicked() {
  if (value<250) {
    value += 100;
  } else {
    value-=200;
  }
}