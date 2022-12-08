class Logo {
  int cant = 5;
  int cantT = 2;
  PImage logo;
  PImage I[]= new PImage [cant];
  PImage T[]= new PImage [cantT];
  PImage Tc[]= new PImage [cantT];
  int orden, ordenT;
  int x, y, tam, tam2;
  int pantalla;
  int puntos;

  Logo() { 
    logo =loadImage("logo.png");
    for (int i=0; i<cant; i++) {
      I[i]= loadImage("inicio"+i+".jpg");
    }
    for (int i=0; i<cantT; i++) {
      T[i]= loadImage("flechasarriba"+i+".png");
      Tc[i]= loadImage("flechascostado"+i+".png");
    }
  }

  void dLogo () { //Logo de pacman, primera pantalla
    background(0);
    image (logo, 150, 50, 300, 150);
  }

  //Imagenes detras de las instrucciones
  void dInicio (int x, int y, int tam, int tam2) {
    image (I[orden], x, y, tam, tam2);
    this.x = x;
    this.y = y;
    this.tam = tam;
    this.tam2 = tam2;
    fill(0);
    rect(100, 100, 400, 500);
    if (frameCount%50==0) {
      if (orden<cant-1) {
        orden++;
      }
    }
    image (T[ordenT], 170, 230, 50, 100);  
    image (Tc[ordenT], 150, 370, 100, 50);
    if (frameCount%30==0) {      
      ordenT++;
      ordenT = ordenT%cantT;//para que se repita la imagen
    }
    fill(255, 0, 0);
    textSize(35);
    text("Come 80 cerezas\n en 30 segundos!", 155, 150);
    fill(255);
    textSize(20);
    text("para subir y bajar", 270, 270);
    text("avanzar para \n adelante o atras", 300, 380);
  }

  // lo que se ve en la pantalla ganar
  void dGanar() {
    fill(255, 255, 0);    
    textSize(100);
    text("Winner!", 160, 300);
    textSize(20);
    fill(255);  
    text("Creditos: Juana Anastasio Melgar", 160, 350);
  }

  // lo que se ve en la pantalla perder
  void dPerder() {
    fill(255, 0, 0);
    textSize(90);
    text("Game Over", 50, 300);
  }

  // lo que se ve en la pantalla creditos
  void dCreditos() {
    fill(255, 0, 0);
    textSize(90);
    text("Creditos", 130, 300);
    textSize(20);
    fill(255);
    text("Realiza por Juana Anastasio Melgar", 140, 370);
  }

  //Primers circulos rojos que se ven en la primer apantalla
  void dCirculos() {
    fill(mouseX-width/2, 0, 0);
    ellipse (170, 485, 20, 20);
    ellipse (220, 485, 20, 20);
    ellipse (400, 485, 20, 20);
    ellipse (450, 485, 20, 20);
    ellipse (500, 485, 20, 20);
  }

  //Contador de puntos
  void dPuntos() {
    fill(255);
    textSize(40);
    puntos++; // aumenta uno
    if (puntos>10) {
      pantalla++;
    }
    text("puntos    " + puntos, 150, 660);
  }
}
