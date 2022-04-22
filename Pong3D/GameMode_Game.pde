//CountdownTimer countdownTimer;
//int timeTextSeconds = 0;
//String timeText = "";
//int elapsedTime = 0;
PImage bg;

void game() {
  background(#000000);
  //drawRoom();
  drawGameObjects();
  drawFloor();
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
  translate(100, 100, -500);
  scale(600);
  noStroke();

  loadRoom();
  popMatrix();
}

void loadRoom() {
  pushMatrix();
  translate(0, 0, 0);
  scale(1);
  noStroke();


  beginShape(QUADS);
  texture(bg);
  //top
  //     x, y, z, tx, ty
  vertex(0, 0, 0, 0, 0);
  vertex(2, 0, 0, 1, 0);
  vertex(2, 0, 1, 1, 1);
  vertex(0, 0, 1, 0, 1);

  //bottom
  vertex(0, 1, 0, 0, 0);
  vertex(2, 1, 0, 1, 0);
  vertex(2, 1, 1, 1, 1);
  vertex(0, 1, 1, 0, 1);

  //back 
  vertex(0, 1, 0, 0, 0);
  vertex(2, 1, 0, 1, 0);
  vertex(2, 0, 0, 1, 1);
  vertex(0, 0, 0, 0, 1);

  //left
  vertex(0, 1, 0, 0, 0);
  vertex(0, 1, 1, 1, 0);
  vertex(0, 0, 1, 1, 1);
  vertex(0, 0, 0, 0, 1);

  //right
  vertex(2, 1, 0, 0, 0);
  vertex(2, 1, 1, 1, 0);
  vertex(2, 0, 1, 1, 1);
  vertex(2, 0, 0, 0, 1);

  endShape();
  popMatrix();
}

void drawFloor() {
  stroke(255);
  for (int x = -2000; x <= 2000; x += 100) {
    line(x, height, -2000, x, height, 2000);
    line(-2000, height, x, 2000, height, x);
  }
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
