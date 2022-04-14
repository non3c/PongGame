void game() {
  background(#ffffff);
  drawGameObjects();
}
void drawGameObjects() {
  for (int i = 0; i < GameObjects.size(); i ++) {
    GameObject obj = GameObjects.get(i);
    obj.show();
    obj.act();
    //remove game objects if their lives = 0
  }
}
