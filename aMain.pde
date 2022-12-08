class Main {
  Logo logo;
  Boton boton, boton1, boton2, boton3, boton4, boton5;
  Laberinto lab;
  Pacman pac;  
  int pantalla;
  PImage pacmanI;
  PFont Arcade;
  int cant =14;
  int puntos;
  int tiempo; // contar el tiempo que tiene para comer
  int cantf=2;

  //arreglo de objeto
  Fantasmas  f[] = new Fantasmas[3];



  Main() {
    Arcade = createFont ("ARCADECLASSIC.TTF", 20);
    textFont(Arcade); 
    textSize(50);
    pac = new Pacman(6, 7, width/13);
    logo = new Logo();
    boton = new Boton(230, 460, 150, 40);
    boton1 = new Boton(100, 500, 150, 40);
    boton2 = new Boton(500, 650, 150, 40); 
    boton3 = new Boton(500, 400, 150, 40);  
    boton4 = new Boton(500, 400, 150, 40);  
    boton5 = new Boton(500, 400, 150, 40);  
    lab = new Laberinto(13);
    pacmanI = loadImage("pcm1.png");
    //fantasmas posicion
    for (int i = 0; i <cantf; i++) {
      f[i]= new Fantasmas(i, width/13*2+i*width/13*2, 5);
    }
  }    

  void dibujarMain () {
    if (pantalla==0) {//primera pantalla
      logo.dLogo();
      boton.dibujarBoton(0, 1, "Play");
      image (pacmanI, 70, 460, 50, 50);
      logo.dCirculos();
    }
    if (pantalla==1) {//instrucciones
      wakawaka.amp(0.1);
      wakawaka.loop();
      logo.dInicio(0, 0, 600, 800);
      boton.dibujarBoton(1, 2, "Iniciar");
    }
    if (pantalla==2 ) {//juego en si
      colision(); //come pacman
      lab.dLaberinto();
      pac.dPacman();
      Tiempo(); //contador de tiempo
      colisionf(); // choque entre fantasma y pacman
      fill(255);
      text("puntos    " + puntos, 350, 660);
      for (int i=0; i<cantf; i++) { // llamo al metodo de la clase fantasma
        f[i].dfantasmas();
      }
    }
    if (pantalla==3 ) {//ganar
      wakawaka.stop();
      logo.dGanar();
      boton.dibujarBoton(3, 0, "reiniciar");
    } else if (tiempo>30) {//perder
      wakawaka.stop();
      pantalla=4;
      logo.dPerder();
      boton.dibujarBoton(4, 5, "creditos");
    }
    if (pantalla==5 ) {//creditos
      wakawaka.stop();
      logo.dCreditos();
      boton.dibujarBoton(5, 0, "reiniciar");
    }
  }

  void presionarBot() { // apretar boton y me pasa pantalla
    if (boton.Presionar(230, 460, 150, 40) && pantalla==boton.actual) {
      pantalla = boton.prox;
    }
    if (boton.Presionar(100, 460, 150, 40) && pantalla==boton1.actual) {
      pantalla = boton1.prox;
    }
    if (boton2.Presionar(500, 650, 150, 40 )&& pantalla==boton2.actual) {
      pantalla = boton2.prox;
    }
    if (boton3.Presionar(230, 460, 150, 40) && pantalla==boton3.actual) {
      pantalla = boton3.prox;
    }
    if (boton4.Presionar(230, 460, 150, 40) && pantalla==boton4.actual) {
      pantalla = boton4.prox;
    }
    if (boton5.Presionar(200, 460, 150, 40) && pantalla==boton5.actual) {
      pantalla = boton5.prox;
    }
  }

  void mPacman(int tecla) { // declaro con que tecla se mueve y controlo que pase donde no hay pared
    if (tecla==RIGHT && !lab.derecha[pac.px][pac.py]) {
      pac.derecha();
    }
    if (tecla==LEFT && !lab.izquierda[pac.px][pac.py]) {
      pac.izquierda();
    }
    if (tecla==UP && !lab.arriba[pac.px][pac.py]) {
      pac.arriba();
    }
    if (tecla==DOWN && !lab.abajo[pac.px][pac.py]) {
      pac.abajo();
    }
  }

  //comer la fruta
  void colision() {
    if (lab.Comida[pac.px][pac.py]) {
      lab.Comida[pac.px][pac.py]=false;
      puntos++;
      if (puntos>80) {
        pantalla++;
      }
    }
  }

  // choque fantasma con pacman
  void colisionf() {
    for (int i=0; i<cantf; i++) {
      float distancia = dist(pac.px*pac.tamp, pac.py*pac.tamp, f[i].fx, f[i].fy);
      if (distancia<f[i].tamf/2+pac.tamp/2) {
        pantalla=5;
      }
    }
  }

  //contador tiempo
  void Tiempo() {
    fill(255);
    textSize(40);
    if (frameCount%80==0) {
      tiempo++;
    }
    text("tiempo    " + tiempo, 50, 660);
  }
}
