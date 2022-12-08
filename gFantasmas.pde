class Fantasmas {
  float fx, fy, tamf;
  int cantf=2;

  Fantasmas(int x, float y, int tam) {
    this.fx = x;
    this.fy = y;
    this.tamf = tam;
  }

  void dfantasmas() {
    fill(255, 0, 128);
    rect(fx, fy, 30, 30, 30, 30, tamf, tamf);
    for (int i=0; i<cantf; i++) {
      fx++;
      if (fx>width+10) { // para que cuando salga de la pantalla vuelva otra vez
        fx=0;
      } else if (fx==0) {
        fy= random(0, 500);
      }
    }
  }
}
