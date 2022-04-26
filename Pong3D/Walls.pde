class Walls extends GameObject {
  float p1X, p2X;
  float p1Y, p2Y;
  float p1Z, p2Z;

  Walls() {
    p1Y = p2Y = height/2;
    p1X = width/2-width/2.5;
    p2X = width/2+width/2.5;
    p1Z = 0;
    p2Z = 0;
    sizeX = 50;
    sizeY = 250;
    sizeZ = 125;
  }

  void show() {
    pushMatrix();
    stroke(#000000);
    lights();
    translate(p1X, p1Y, p1Z);
    box(sizeX, sizeY, sizeZ);
    popMatrix();

    pushMatrix();
    stroke(#000000);
    lights();
    translate(p2X, p2Y, p2Z);
    box(sizeX, sizeY, sizeZ);
    popMatrix();
  }

  void act() {
    movement();



    p1Y = min(max(125, p1Y), height-125);
    p2Y = min(max(125, p2Y), height-125);
    p1Z = min(max(-250, p1Z), 0);
    p2Z = min(max(-250, p2Z), 0);
  }

  void movement() {
    if (upkeyP1)    p1Y -= 3;
    if (downkeyP1)  p1Y += 3;
    if (rightkeyP1) p1Z -= 3;
    if (leftkeyP1)  p1Z += 3;

    if (upkeyP2)    p2Y -= 3;
    if (downkeyP2)  p2Y += 3;
    if (rightkeyP2) p2Z += 3;
    if (leftkeyP2)  p2Z -= 3;
  }
}
