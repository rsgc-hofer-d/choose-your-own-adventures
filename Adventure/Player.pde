class player {
  void player() {
  }
  void drawAt(int x, int y, float horizontalScale, float verticalScale) {
    fill(51,100,100);
    triangle(playerX, 750, 50+playerX, 750, 25+playerX, 700);
  }
}