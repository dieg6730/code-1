//rect
int gameScreen = 0;
float ballSpeedHorizon = 10;
color cblak = (250);
float xblak = 840;
float yblak = 1000;
float speedblak = 0;
//ball
color cball = color (2, 145, 255);
float xball = 916;
float yball = 950;
float speedball = 1;
PImage webImg; 

void setup() {
  fullScreen();
}


void draw() {
  if (gameScreen == 0) {
    startScreen();
  } else if (gameScreen == 1) {
    gameScreen();
  } else if (gameScreen == 2) { 
    if (yball==1050) {
      gameOver();
    }
  }
}


void startScreen() { 
  background(0);
  textSize(300);
  text("Breaker Brick", 940, 220);
  textSize(235);
  textAlign(CENTER);
  text("Press -> To Start", 955, 950);
}

void startGame() {
  gameScreen=1;
}


void display() {
  fill(cblak);
  xblak=xblak+speedblak;
  rect(xblak, yblak, 150, 10);
}

void displayball() {
  fill(cball);
  yball=yball+speedball;
  ellipse(xball, yball, 32, 32);
}

//}