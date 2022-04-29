boolean upkeyP1, downkeyP1, leftkeyP1, rightkeyP1, upkeyP2, downkeyP2, leftkeyP2, rightkeyP2, pause;
//keys
void keyPressed() {
  if (keyCode == 'W')       upkeyP1 = true;
  if (keyCode == 'S')     downkeyP1 = true;
  if (keyCode == 'A')     leftkeyP1 = true;
  if (keyCode == 'D')    rightkeyP1 = true;
  if (keyCode == UP)        upkeyP2 = true;
  if (keyCode == DOWN)    downkeyP2 = true;
  if (keyCode == LEFT)    leftkeyP2 = true;
  if (keyCode == RIGHT)  rightkeyP2 = true;
  if (keyCode == 'P')         pause = true;
}

void keyReleased() {
  if (keyCode == 'W')       upkeyP1 = false;
  if (keyCode == 'S')     downkeyP1 = false;
  if (keyCode == 'A')     leftkeyP1 = false;
  if (keyCode == 'D')    rightkeyP1 = false;
  if (keyCode == UP)        upkeyP2 = false;
  if (keyCode == DOWN)    downkeyP2 = false;
  if (keyCode == LEFT)    leftkeyP2 = false;
  if (keyCode == RIGHT)  rightkeyP2 = false;
  if (keyCode == 'P')         pause = false;
}
