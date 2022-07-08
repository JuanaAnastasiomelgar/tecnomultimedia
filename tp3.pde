/*
Alumna:Anastasio Melgar, Juana.
Comision 1.
video explicativo:https://youtu.be/JA5fzJ4h0kQ
*/
int cant= 3;
int cantB = 4;
int cantC = 9;
int cantMI = 2;

//carga imagenes
PImage []hombreD = new PImage[cant];
PImage [] barril = new PImage[cantB];
PImage [] complemento = new PImage[cantC];
PImage [] monoInicio = new PImage[cantMI];
PImage [] oil = new PImage[cantMI];
PImage [] flechasA = new PImage[cantMI];
PImage [] flechasC = new PImage[cantMI];
PImage [] tecla = new PImage[cantMI];
PImage [] monoTira = new PImage[cantMI];
PImage terreno;

//carga tipografia.
PFont Arcade;

//variables de las imagenes
int seguidillaImg, seguidillaImgI, seguidillaImgB, seguidillaImgMI;
int posxHD, posyHD, posxBa, posxBb, posyB, posxFB, posyFB, posxHDi, posyHDi;


//lanzar bola de fuego
boolean disparar;
boolean choque;

//estados para pasar pantallas.
int estado;
int puntos; 

void setup() {
  size (600, 600);
  //imagenes
  terreno =loadImage ("fondo.png");
  for (int i=0; i<cant; i++) {
    hombreD[i] = loadImage("hombrederecha"+i+".png");
  }
  for (int i=0; i<cantB; i++) {
    barril[i] = loadImage("barril"+i+".png");
  }
  for (int i=0; i<cantC; i++) {
    complemento[i] = loadImage("complemento"+i+".png");
  }
  for (int i=0; i<cantMI; i++) {
    monoInicio[i] = loadImage("baila"+i+".png");
    oil[i] = loadImage("oil"+i+".png");
    flechasA [i] = loadImage("flechasarriba"+i+".png");
    flechasC [i] = loadImage("flechascostado"+i+".png");
    tecla [i] = loadImage("tecla"+i+".png");
    monoTira [i] = loadImage("mono"+i+".png");
  }

  //Tipografia
  Arcade = createFont ("ARCADEPI.TTF", 20);
  textFont(Arcade);
  textAlign(CENTER, CENTER);


  //valores variables iniciales.
  posxHD = 20;
  posyHD = 515;
  posxFB = posxHD;
  posyFB = posyHD;
  posxBa = 20;
  posxBb = 520;
}

void draw () {
  background (0);
  if (estado == 0) {
    Inicio ();
  } else if (estado == 1) {
    Instrucciones();
  } else if (estado == 2) {
    Intermedio() ;
  } else if (estado == 3) {
    Juego ();
  } else if (estado == 4) {
    Ganaste ();
  } else if (estado == 5) {
    Perdiste ();
  } else if (estado == 6) {
    Creditos ();
  }
}

void mousePressed () {
  //intermedio
  if (estado == 2) {
    if (presiono(0, 0, 600, 600)) {
      estado=3;
    }
  }
  //instrucciones
  if (estado == 1) {
    if (presiono(220, 80, 150, 20)) {//volver al menu
      estado=0;
    }
  }
  //pantalla inicio
  if (estado == 0) {
    if (presiono(210, 490, 150, 30)) {//jugar
      estado=2;
    }
    if (presiono(160, 525, 270, 30)) {//intrucciones
      estado=1;
    }
    if (presiono(10, 560, 100, 20)) {//creditos
      estado=6;
    }
  }
  //perdiste
  if (estado == 5) {
    if (presiono(170, 490, 250, 30)) {//volver al menu
      estado = 0;
    }
    if (presiono(150, 525, 290, 30)) {//reintentar
      estado = 3;
    }
  }
  //ganaste
  if (estado == 4) {
    if (presiono(160, 490, 290, 30)) {//volver al menu
      estado=0;
    }
  }

  //perdiste
  if (estado == 6) {
    if (presiono(225, 160, 150, 20)) {//volver al menu
      estado = 0;
    }
  }
}
void keyPressed() {
  //muevo hombre derecha.
  if (frameCount%6==0) {
    if ( keyCode == RIGHT ) {
      posxHD += 10;
      seguidillaImg += 1;  //incremento en 1
    }
    //Izquierda. 
    if ( keyCode == LEFT ) {
      posxHD -= 10;
      seguidillaImg ++;  //decrementa en 1
    }

    //arriba abajo
    if (frameCount%6==0) {
      if ( keyCode == DOWN ) {
        posyHD += 10;
        seguidillaImg += 1;  //incremento en 1
      }
      if ( keyCode == UP ) {
        posyHD -= 10;
        seguidillaImg -= 1;  //decrementa en 1
      }

      //reinicio el ciclo hd
      if (seguidillaImg == hombreD.length) {
        seguidillaImg = 0;
      } else if ( seguidillaImg == -1 ) {
        seguidillaImg = 1;
      }
    }

    //disparo con tecla w
    if (keyPressed) {
      if (key == 'w') {
        disparar = true;
      }
    }
  }
}
