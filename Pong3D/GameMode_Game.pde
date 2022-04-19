CountdownTimer countdownTimer;

void game() {
  background(#ff0000);
  drawGameObjects();
  countdown();
}
void drawGameObjects() {
  for (int i = 0; i < GameObjects.size(); i ++) {
    GameObject obj = GameObjects.get(i);
    obj.show();
    obj.act();
    //remove game objects if their lives = 0
  }
}

void countdown() {
  countdownTimer = CountdownTimerService.getNewCountdownTimer(this).configure(1000, 3000).start();
  text("tickInterval=" + countdownTimer.getTickInterval() + ", timerDuration=" + countdownTimer.getTimerDuration(), width/2, height/2);
}

void onTickEvent(CountdownTimer t, long timeLeftUntilFinish) {
  timerCallbackInfo = "[tick] - timeLeft: " + timeLeftUntilFinish + "ms";
}

void onFinishEvent(CountdownTimer t) {
  timerCallbackInfo = "[finished]";
}
