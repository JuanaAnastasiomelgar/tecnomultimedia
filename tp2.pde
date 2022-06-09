/*Anastasio Melgar, Juana. Comisión 1.
 Ilusión óptica Interactiva.
 VIDEO EXPLICANDO EL TRABAJO: https://youtu.be/TIgVUjFTWJM
 */

int cant=3;
int tam;
void setup() {
  size(600, 600);
}

void draw() { 
  tam = width/cant;
  background (0);
  noStroke();
  for (int i=0; i<cant; i++) {
    for (int j=0; j<cant; j++) {
      for (int c=tam; c>0; c-=7) {
        rectMode(CENTER);

        float limiteX = constrain(mouseX, i*tam, i*tam+tam);
        float limiteY = constrain(mouseY, j*tam, j*tam+tam);
        float mX = map(c, tam, 0, i*tam+tam/2, limiteX);
        float mY = map(c, tam, 0, j*tam+tam/2, limiteY);
        float tono= map(c, tam, 0, 255, 0);
        float blanco = map(c, tam, 0, 0, tam);

        if (blanco>tam/2 && Celda(i*tam, j*tam, tam, tam)) {
          fill (tono, 0, 0, 300);
          ellipse (mX, mY, c, c);
        } else if (blanco<tam/2) {
          fill (245);
          ellipse (i*tam+tam/2, j*tam+tam/2, c, c);
        } else if (keyPressed && blanco>tam/2) {
          fill (tono, 0, 0, 300);
          ellipse (mX, mY, c, c);
        }

        if (mousePressed && blanco>tam/2 && Celda(i*tam, j*tam, tam, tam)) {
          fill (0, tono, 0);
          ellipse (mX, mY, c, c);
        }
      }
    }
  }

  fill(0, 0, 255);
  ellipse (20, 20, 25, 25);
}

void mousePressed() {
  cant ++;

  if (Reinicio(15, 15, 25, 25)) {
    cant=3;
    tam = width/cant;
  }
}
