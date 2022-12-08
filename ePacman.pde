class Pacman {
  int cantp=3;
  int cantd=7;
  int px, py, tamp;
  PImage [] P = new PImage[cantp];
  int orden; 
  Laberinto lab;

  Pacman (int px, int py, int tamp) {
    this.px = px;
    this.py = py;
    this.tamp = tamp;
    for (int i=0; i<cantp; i++) {
      P[i]= loadImage("pcm"+i+".png");
    }
  }

  void dPacman () {
    fill(255, 128, 0);
    imageMode(CENTER);
    //donde se dibuja el pacman
    image (P[orden], px*tamp+tamp/2, py*tamp+tamp/2, tamp/2, tamp/2); // tamp/2 para centarlo
    if (frameCount%5==0) { //para que se repitan las imagenes
      if (orden<cantp-1) {
        orden++;
      } else {
        orden = 0;
      }
    }
    println("px "+ px + " py "+ py);
  }

  //Movimiento del pacman con las flechas
  void derecha() {
    px++;
  }
  void izquierda() {
    px--;
  }
  void abajo() {
    py++;
  }
  void arriba() {
    py--;
  }
}
