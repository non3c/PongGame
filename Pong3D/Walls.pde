class Walls extends GameObject {
  float p1Y, p2Y;
  Walls() {
    p1Y = p2Y = height/2;
  }

  void show() {
    pushMatrix();
    translate(width/2-width/2.5, p1Y);
    box(50, 250, 50);
    popMatrix();

    pushMatrix();
    translate(width/2+width/2.5, p2Y);
    box(50, 250, 50);
    popMatrix();
  }

  void act() {
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
}
