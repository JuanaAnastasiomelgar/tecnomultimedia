class Comida {
  float  tam;
  float x, y;
  color rojo;

  Comida(color rojo, float x, float y, float tam) {
    this.x = x;
    this.y = y;
    this.tam = tam;
    this.rojo = rojo;
  }

  void dComida() {
    fill(255, 0, 0);
    ellipse(x*tam+tam/2, y*tam+tam/2, tam, tam);
    rectMode(CENTER);
  }
}
