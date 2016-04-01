class square {
  void square() {
  }
  void drawAt(int x, int y, float horizontalScale, float verticalScale) {
    fill(230, 100, 150);
    rect(xAnchor*horizontalScale, yAnchor*verticalScale+down, 75*horizontalScale, 75*verticalScale);
  }
}