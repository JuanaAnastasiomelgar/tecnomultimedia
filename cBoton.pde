class Boton {
  int bx, by, ancho, alto; // ubicacion y tamaño
  int actual, prox; 
  String texto;
  Boton(int bx, int by, int ancho, int alto) {
    this.bx = bx;
    this.by = by;
    this.ancho = ancho;
    this.alto = alto;
  }

  void dibujarBoton(int actual, int prox, String texto) {
    this.actual = actual;
    this.prox = prox;
    this.texto = texto;
    fill(0);
    rect(bx, by, ancho, alto);
    fill(255); 
    textSize(40);
    text(texto, bx, by+alto);
  }

  boolean Presionar(int bx, int by, int ancho, int alto) {
    return mouseX>bx && mouseX<bx+ancho && mouseY>by && mouseY<by+alto;
  }
}
