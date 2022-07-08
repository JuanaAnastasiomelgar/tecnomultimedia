//colision
boolean bolafuego(float bfx, float bfy, float posBx, float posBy, float tam) {
  float distancia = map(bfx, bfy, posBx, posBy, tam);
  return distancia>tam;
}

//choque entre el hombre y el barril
boolean choque(float hx, float hy, float posBx, float posBy, float tam) {
  float distancia = dist(hx, hy, posBx, posBy);
  return distancia<tam;
}

//botones.
void boton (int x, int y, int ancho, int alto) {
  if (presiono(x, y, ancho, alto)==true) {
    estado ++;
  }
}
boolean presiono(int px, int py, int ancho, int alto) { 
  boolean presiono = mouseX>px && mouseX<px+ancho && mouseY>py && mouseY<py+alto;
  return presiono;
}

boolean princesaGanar(int px, int py, int ancho, int alto) { 
  boolean princesaGanar = posxHD>px && posxHD<px+ancho && posyHD>py && posyHD<py+alto;
  return princesaGanar;
}

void seguidillami () {
  if (frameCount%30==0) {
    seguidillaImgMI++;
    seguidillaImgMI = seguidillaImgMI%cantMI; // actúa como un condicional
  }
}
