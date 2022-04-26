class Balls extends GameObject {
  Balls() {
    pos = new PVector(width/2, height/2, 0);
    vel = new PVector(2, 2, 0);
    size = 15;
  }

  void show() {
    pushMatrix();
    noStroke();
    lights();
    fill(#ffffff);
    translate(pos.x, pos.y, pos.z);
    sphere(size);
    popMatrix();
  }

  void act() {

    super.act();
    collision();
  }

  void collision() {
    if (pos.y >= height-2*size) vel.y = -vel.y;
    if (pos.y <= 2*size) vel.y = -vel.y;
    if (pos.x >= width-2*size) vel.x = -vel.x;
    if (pos.x <= 2*size) vel.x = -vel.x;

//    if (pos.x <= myWalls.p1X-size/2 && pos.y >= size/2 + myWalls.sizeY && pos.y <= size/2 - myWalls.sizeY) {
//      vel.x = -vel.x;
//      vel.y = -vel.y;
//    }

    if (pos.x >= myWalls.p2X-size/2 && pos.y - myWalls.p2Y >= size/2 + myWalls.sizeY && pos.y - myWalls.p2Y <= size/2 - myWalls.sizeY) {
      vel.x = -vel.x;
      vel.y = -vel.y;
    }
  }
}
