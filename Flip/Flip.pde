Spielfeld spielfeld;

void setup() {
  fullScreen();
  spielfeld = new Spielfeld();
}

void draw() {
  background(255);
  spielfeld.aufbau();
  spielfeld.startFeld();
}
