class Pacman {
  int cant=3;
  float px, py;
  float tamp= 30;
  PImage [] P = new PImage[cant];
  int orden;

  Pacman () {
    for (int i=0; i<cant; i++) {
      P[i]= loadImage("pcm"+i+".png");
    }
    px=width/2;
    py=height/2;
  }

  void dibujarPacman () {
    image (P[orden], px, py, tamp, tamp);
    if (frameCount%6==0) {
      if (orden<cant-1) {
        orden++;
      } else {
        orden = 0;
      }
    }
  }

  void moverPacman(int tecla) {
    if (tecla==UP ) {
      py -= 5;
    }
    if (tecla == DOWN) {
      py += 5;
    }
    if (tecla==LEFT) {
      px -= 5;
    }
    if (tecla == RIGHT) {
      px += 5;
    }
  }
}
