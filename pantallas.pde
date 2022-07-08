void Inicio () {
  //los de los botones
  noFill();
  rect (210, 490, 150, 30);//jugar
  rect (160, 525, 270, 30);//instrucciones
  rect (10, 560, 100, 20);//creditos

  textSize(30);
  text("Jugar", width/2, 500);
  text("Instrucciones", width/2, 540);
  textSize(15);
  text("¡La princesa fue capturada por el gorila!", width/2, 180);
  text("¡Salvala!", width/2, 210); 
  text("Creditos", 60, 570);

  //titulo
  image (complemento[6], width/6, 30, 400, 100);  
  //barriles
  image(complemento[7], 0, 320, 100, 130);
  image(complemento[7], 500, 320, 100, 130);
  //mono baila inicio
  image(monoInicio[seguidillaImgMI], width/3, 290, 170, 150);
  //fueguito
  image(oil[seguidillaImgMI], 20, 235, 60, 100);
  image(oil[seguidillaImgMI], 520, 235, 60, 100);
  seguidillami ();
}

void Instrucciones() {
  noFill();
  rect (220, 80, 150, 20);
  textSize (50);
  text("Instrucciones", width/2, 50);
  //flechas
  textSize(15);
  text("volver al menu", width/2, 90);
  text("Utiliza estas flechas para moverte de lado a lado \n o de arriba hacia abajo", 300, 150);
  text("Pulsa la _w_ para\nderribar un barril", 130, 400);
  text("Subi todas las escaleras\ny salva a la princesa!", 430, 400);
  //flechas
  image (flechasC[seguidillaImgMI], 100, 300, 100, 50);
  image (flechasA[seguidillaImgMI], 350, 250, 50, 100);
  //tecla
  image (tecla[seguidillaImgMI], 110, 510, 60, 60);
  seguidillami ();
  //Princesa
  image(complemento[2], 350, 420, 150, 150);
  //bolafuego
  image(complemento[0], 100, 430, 80, 80);
  //hombre
  image(hombreD[0], 110, 210, 80, 80);
  //hombre
  image(complemento[8], 420, 260, 80, 90);
}

void Juego () {
  //puntos
  textSize(15);
  text("Puntos:" + puntos, 70, 50);

  image (terreno, 0, 100, 600, 500);  
  //bola de fuego + moverla.
  image (complemento[0], posxFB, posyFB, 20, 20);
  if (disparar && posxFB>0) {
    posxFB +=10;
  } else {
    //que la bola de fuego siga al hombre
    posyFB = posyHD+20;
    posxFB = posxHD+10;
    disparar = false;
  }  
  //Constructor.
  image(hombreD[seguidillaImg], posxHD, posyHD, 45, 45);

  //barrilesmoviendose.   80
  image (barril[seguidillaImgB], posxBb, 220, 40, 40);
  image (barril[seguidillaImgB], posxBa, 295, 40, 40);
  image (barril[seguidillaImgB], posxBb, 370, 40, 40);
  image (barril[seguidillaImgB], posxBa, 445, 40, 40);
  image (barril[seguidillaImgB], posxBb, 525, 40, 40);
  if (frameCount%7==0) {
    if (seguidillaImgB<cantB-1) {
      seguidillaImgB++;
    } else {
      seguidillaImgB = 0;
    }
  }  
  posxBa++;
  posxBa = posxBa%width;
  posxBb--;
  posxBb = posxBb%width;

  //Mono tira barriles
  image(monoTira[seguidillaImgMI], 40, 170, 100, 100);
  seguidillami ();
  //princesa Ubi
  image(complemento[1], 270, 120, 90, 70);

  if (princesaGanar(250, 120, 100, 70)) {
    estado =4;
  }

  //bolafuego contra el barril.
  if (bolafuego(posxFB, 535, posxBa, 525, 40) && 
    bolafuego(posxFB, 535, posxBb, 525, 40)) {
    disparar = false;
    posxBa = 20;
    posxBb = 520;
    puntos ++;
  }

  //Choque.
  if (choque(posxHD, posyHD, posxBa, 525, 40) && 
    choque(posxHD, posyHD, posxBb, 525, 40)) {
    choque = false;   
    estado =5;
  }
}

void Intermedio() {
  rect (0, 0, 600, 600);
  text("Cuan alto podes llegar?", width/2, 510);
  image (complemento[4], 220, 400, 150, 100);
}

void Ganaste () {
  background (0);
  noFill();
  rect (160, 490, 290, 30);

  textSize (30);
  text("Volver al menu", width/2, 500);
  textSize(15);
  text("¡La princesa esta a salvo!", width/2, 300);
  textSize (50);
  text("GANASTE", width/2, 260);
  image(hombreD[0], width/2, 30, 200, 200);//hombre
  image(complemento[3], 250, 100, 70, 70);//Corazon
  image(complemento[2], 80, 20, 220, 220);//Princesa
}

void Perdiste () {
  background (0);
  noFill();
  rect (170, 490, 250, 30);//volver al menu
  rect (150, 525, 290, 30);//reintentar
  textSize (30);
  text("Reintentar", width/2, 500);
  text("Volver al menu", width/2, 535);
  textSize(15);
  text("El gorila se llevo a la princesa", width/2, 300);
  textSize (50);
  text("PERDISTE", width/2, 260);
  image(complemento[5], 110, 10, 370, 250);//muerto
}

void Creditos () {
  background (0);
  //titulo
  image (complemento[6], width/6, 30, 400, 100);
  noFill();
  rect (225, 160, 150, 20);//volver al menu*/
  textSize(15);
  text("volver al menu", width/2, 170);
  text("Donkey Kong es una serie de videojuegos que presenta\nlas aventuras de un personaje gorila llamado\nDonkey Kong, creado por Shigeru Miyamoto en 1981.", width/2, 250);
  text("Creador: Shigeru Miyamoto\nDisenadores: Shigeru Miyamoto, Gregg Mayles,\nYoshiaki Koizumi y mas\nProgramadores: Nintendo, Rare, Retro Studios y mas", width/2, 350);
  image(hombreD[0], 100, 450, 100, 100);//hombre
  image(monoTira[0], 250, 450, 120, 120);//mono
  image(complemento[2], 390, 435, 120, 120);//princesa
}
