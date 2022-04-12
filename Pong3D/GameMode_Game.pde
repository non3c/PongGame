void game() {
  int p1Y, p2Y;

  p1Y = p2Y = height/2;
  pushMatrix();
  translate(width/2+width/2.5, p1Y);
  box(50, 250, 50);
  popMatrix();
  pushMatrix();
  translate(width/2-width/2.5, p2Y);
  box(50, 250, 50);
  popMatrix();

  if (upkeyP1) {
    p1Y ++;
  } else if (downkeyP1) {
    p1Y--;
  }
}
