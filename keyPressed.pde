void keyPressed() {
  if (key == CODED) {
    if (keyCode == RIGHT) {
      if (gameScreen==0) {
        startGame();
        if (keyCode == LEFT) {
          if (gameScreen==2) {
            gameScreen();
          }
        }
      }
    }
  }
}
