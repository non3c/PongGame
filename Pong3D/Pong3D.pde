final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2 ;
final int GAMEOVER = 3;

int mode = 1;

void setup() {
  fullScreen(P3D);
  frameRate(60);
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Error: Mode = " + mode);
  }
}
