class Balls extends GameObject {
  Balls() {
    pos = new PVector(width/2, height/2, 0);
    vel = new PVector(3, 3, 2);
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
    vel.x = vel.x*speedCoefficient;
    vel.y = vel.y*speedCoefficient;
    vel.z = vel.z*speedCoefficient;
    collision();
  }

  void collision() {
    if (pos.y >= height-2*size) vel.y = -vel.y;
    if (pos.y <= 2*size) vel.y = -vel.y;
    if (pos.z <= 2*size-400) vel.z = -vel.z;
    if (pos.z >= 2*size) vel.z = -vel.z;
    println(vel.z);

    //    if (pos.x <= myWalls.p1X-size/2 && pos.y >= size/2 + myWalls.sizeY && pos.y <= size/2 - myWalls.sizeY) {
    //      vel.x = -vel.x;
    //      vel.y = -vel.y;
    //    }
    if (3 >= abs(pos.x - (myWalls.p1X+myWalls.sizeX/2+size/2)) && pos.y <= myWalls.p1Y + myWalls.sizeY/2 && pos.y >= myWalls.p1Y - myWalls.sizeY/2 && pos.z <= myWalls.p1Z + myWalls.sizeZ && pos.z >= myWalls.p1Z - myWalls.sizeZ/2) {
      println(pos.x - (myWalls.p1X+myWalls.sizeX+size/2));
      vel.x = -vel.x;
    }


    if (3 >= abs(pos.x - (myWalls.p2X-myWalls.sizeX/2-size/2)) && pos.y <= myWalls.p2Y + myWalls.sizeY/2 && pos.y >= myWalls.p2Y - myWalls.sizeY/2 && pos.z <= myWalls.p2Z + myWalls.sizeZ && pos.z >= myWalls.p2Z - myWalls.sizeZ/2) {
      vel.x = -vel.x;
    }
  }
}
