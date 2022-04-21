//CountdownTimer countdownTimer;
//int timeTextSeconds = 0;
//String timeText = "";
//int elapsedTime = 0;
void game() {
  background(#ff0000);
  drawRoom();
  drawGameObjects();
  //countdown();
}
void drawGameObjects() {
  myWalls.show();
  myWalls.act();
  for (int i = 0; i < GameObjects.size(); i ++) {
    GameObject obj = GameObjects.get(i);
    obj.show();
    obj.act();
    //remove game objects if their lives = 0
  }
}

void drawRoom() {
  pushMatrix();
  translate(0, 0, 0);
  scale(width);
  loadRoom();
  popMatrix();
}

void loadRoom() {
  pushMatrix();
  translate(0, 0, 0);
  scale(1);
  noStroke();
  
  beginShape(QUADS);
  texture();
  //top
  //     x, y, z, tx, ty
  vertex(0, 0, 0, 0, 0);
  vertex(1, 0, 0, 1, 0);
  vertex(1, 0, 1, 1, 1);
  vertex(0, 0, 1, 0, 1);

  //bottom
  vertex(0, 1, 0, 0, 0);
  vertex(1, 1, 0, 1, 0);
  vertex(1, 1, 1, 1, 1);
  vertex(0, 1, 1, 0, 1);

  //back 
  vertex(0, 1, 0, 0, 0);
  vertex(1, 1, 0, 1, 0);
  vertex(1, 0, 0, 1, 1);
  vertex(0, 0, 0, 0, 1);

  //left
  vertex(0, 1, 0, 0, 0);
  vertex(0, 1, 1, 1, 0);
  vertex(0, 0, 1, 1, 1);
  vertex(0, 0, 0, 0, 1);
  //right
  vertex(1, 1, 0, 0, 0);
  vertex(1, 1, 1, 1, 0);
  vertex(1, 0, 1, 1, 1);
  vertex(1, 0, 0, 0, 1);

  endShape();
  popMatrix();
}

//void countdown() {
//  countdownTimer = CountdownTimerService.getNewCountdownTimer(this).configure(1000, 3000).start();
//  text(timeText, width/2, height/2);
//  println(timeText);
//}

//void updateTimeText() {
//  timeTextSeconds = elapsedTime % 60;
//  timeText = nf(timeTextSeconds, 2);
//}
//void onTickEvent() {
//  ++elapsedTime;
//  updateTimeText();
//}
