
class Spielfeld {

  // Attribute
  int [][][]spielfeld = new int [8][8][2];
  int rasterGroesse = height/8;
  int radius = 100;
  float verschiebung = width/4.5;

  // Konstruktor
  Spielfeld() {
  }

  // Methoden
  void aufbau() {
    //
    for (int i=0; i<spielfeld.length; i++) {
      for (int j=0; j<spielfeld.length; j++) {
        spielfeld[i][j][0] = (height/8)*i+height/16;
        rectMode(CENTER);
        strokeWeight(5);
        rect(spielfeld[i][j][0]+verschiebung, spielfeld[j][i][0], rasterGroesse, rasterGroesse);
      }
    }
  }
  void startFeld () {
    spielfeld [3][3][1] = 1;
    spielfeld [3][4][1] = 2;
    spielfeld [4][4][1] = 1;
    spielfeld [4][3][1] = 2;
    fill(255,0,0);
    circle (spielfeld [3][3][0]+verschiebung, spielfeld [3][3][0], radius);
    circle (spielfeld [4][4][0]+verschiebung, spielfeld [4][4][0], radius);
    fill(0,0,255);
    circle (spielfeld[3][4][0]+verschiebung, spielfeld[4][3][0], radius);
    circle (spielfeld [4][3][0]+verschiebung, spielfeld [3][4][0], radius);
    fill(255);
    
  }
  
  void moeglicherZug() {
    
  }
}
