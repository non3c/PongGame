class Walls extends GameObject {
  float p1Y, p2Y;
  Walls() {
    p1Y = p2Y = height/2;
    sizeX = 50;
    sizeY = 250;
    sizeZ = 50;
  }

  void show() {
    pushMatrix();
    stroke(#000000);
    lights();
    translate(width/2-width/2.5, p1Y);
    box(sizeX, sizeY, sizeZ);
    popMatrix();

    pushMatrix();
    stroke(#000000);
    lights();
    translate(width/2+width/2.5, p2Y);
    box(sizeX, sizeY, sizeZ);
    popMatrix();
  }

  void act() {
    if (upkeyP1) {
      p1Y -= height/200;
    } else if (downkeyP1) {
      p1Y += height/200;
    }
    if (upkeyP2) {
      p2Y -= height/200;
    } else if (downkeyP2) {
      p2Y += height/200;
    }
    
    p1Y = min(max(125, p1Y), height-125);
    p2Y = min(max(125, p2Y), height-125);
  }
}
