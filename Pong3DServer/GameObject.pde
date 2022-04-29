class GameObject {
  //variables
  PVector pos;
  PVector vel;
  int size;
  int sizeX, sizeY, sizeZ;

  GameObject() {
    
  }

  void show() {
  }

  void act() {
    //add velosity to position
    pos.add(vel);
  }
}  
