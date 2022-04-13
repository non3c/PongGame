int p1Y;
int p2Y;

void game() {
  println(p1Y);
  background(#ffffff);
  drawWalls();
  control();
}

void drawWalls() {
  pushMatrix();
  translate(width/2-width/2.5, height/2+p1Y);
  box(50, 250, 50);
  popMatrix();

  pushMatrix();
  translate(width/2+width/2.5, height/2+p2Y);
  box(50, 250, 50);
  popMatrix();
}

void control() {
  if (upkeyP1) {
    p1Y -= 3;
  } else if (downkeyP1) {
    p1Y += 3;
  } 
  if (upkeyP2) {
    p2Y -= 3;
  } else if (downkeyP2) {
    p2Y += 3;
  }
}
