class pattern1 {
  int bic = 0;
  int bicvalue = 4;
  int line = 0;
  int linevalue=3;
  float y = 0;
  float speed=5;

  void pattern1() {
  }
  void drawAt() {
    y+=speed;
    //loop to create the pattern
    while (bic<bicvalue) {



      fill(280+20*bic, 100, 100);
      //left side of pattern
      rect(150+40*bic, y+375-75*bic, 75, 75);

      //right side of pattern
      rect(775-40*bic, y+375-75*bic, 75, 75);
      bic+=1;
      while (line<linevalue) {
        //straight lines of pattern
        fill(20*line, 100, 100);
        rect(270, 75-75*line+y, 75, 75);
        rect(655, 75-75*line+y, 75, 75);
        line+=1;
      }
    }
    //makes it so it draws over and over again instead of just drawing once and getting covered up by the background
    if (line==linevalue) {
      line=0;
    }
    if (bic==bicvalue) {
      bic=0;
    }
  }
}