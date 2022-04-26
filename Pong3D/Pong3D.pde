//import com.dhchoi.CountdownTimer;
//import com.dhchoi.CountdownTimerService;

final int INTRO    = 0;
final int GAME     = 1;
final int PAUSE    = 2;
final int GAMEOVER = 3;

int mode = 1;

Walls myWalls;
ArrayList<GameObject> GameObjects;


void setup() {
  fullScreen(P3D);
  frameRate(60);
  textureMode(NORMAL);
  bg = loadImage("testbackground.jpg");
  
  myWalls = new Walls();
  GameObjects = new ArrayList<GameObject>();
  GameObjects.add(new Balls());
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
