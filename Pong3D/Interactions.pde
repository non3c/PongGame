boolean upkeyP1, downkeyP1, upkeyP2, downkeyP2, pause;
//keys
void keyPressed() {
  if (keyCode == 'W')       upkeyP1 = true;
  if (keyCode == 'S')     downkeyP1 = true;
  if (keyCode == UP)        upkeyP2 = true;
  if (keyCode == DOWN)    downkeyP2 = true;
  if (keyCode == 'P')         pause = true;

}

void keyReleased() {
  if (keyCode == 'W')       upkeyP1 = false;
  if (keyCode == 'S')     downkeyP1 = false;
  if (keyCode == UP)        upkeyP2 = false;
  if (keyCode == DOWN)    downkeyP2 = false;
  if (keyCode == 'P')         pause = false;
}
