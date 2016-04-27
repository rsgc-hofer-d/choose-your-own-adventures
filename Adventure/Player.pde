class player {
  void player() {
  }
  void drawAt(int x, int y, float horizontalScale, float verticalScale) {
    fill(51,100,100);
    triangle(playerX+475, 750, 525+playerX, 750, 500+playerX, 700);
  }
}