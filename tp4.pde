//Video explicativo: https://youtu.be/j2DaRiRog58

Main M;

void setup () {
  size (600, 600);
  M = new Main();
}

void draw () {
  background (0);
  M.dibujarMain ();
}

void keyPressed() {
  M.moverPacman(keyCode);
  
}
