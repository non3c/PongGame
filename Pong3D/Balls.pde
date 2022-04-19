class Balls extends GameObject {
  Balls() {
    pos = new PVector(width/2, height/2, 50);
    vel = new PVector(int(random(-1, 1)), int(random(-1, 1)));
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
    
  }
}
