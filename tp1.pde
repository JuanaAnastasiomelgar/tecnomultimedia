/* Anastasio Melgar, Juana.
 
 tp1 Animando con código.
 Titulos de la serie Game Of Thrones.
 Link videio referencia: https://www.youtube.com/watch?v=TZE9gVF1QbA
 
 Reinicio con click luego de la ultima imagen.
 */


//CREACION VARIABLE
PFont fuentegot;
PImage escena1, escena2, escena3, escena4, escena5, escena6, escena7, escena8, escena9, escena10, escena11;
PImage insigniastark, insigniaking;
int tamX, tamY, tamX4, tamY4;
int posX2, posY3;

void setup() {    //ASIGNACION
  size (800, 500);

  tamX = 800;
  tamY = 500;
  posX2 = width;
  posY3 = height;
  tamX4 = 800;
  tamY4 = 500;

  //Fuente
  fuentegot = createFont("TrajanusBricks.ttf", 20);

  //Imagenes
  //Insignias
  insigniaking = loadImage("king-01.png");
  insigniastark = loadImage("stark-01.png");

  //Escenas
  escena1 = loadImage("escena_1.jpg");
  escena2 = loadImage("escena_2.jpg");
  escena3 = loadImage("escena_3.jpg");
  escena4 = loadImage("escena_4.jpg");
  escena5 = loadImage("escena_5.jpg");
  escena7 = loadImage("escena_7.jpg");
  escena8 = loadImage("escena_8.jpg");
  escena9 = loadImage("escena_9.jpg");
  escena11 = loadImage("escena_11.jpg");
}


void draw() {    //USO
  background (0);
  textFont (fuentegot, 20);

  println(frameCount);/////////////////////////////////////////////////////////

  imageMode(CENTER);
  image (escena1, width/2, height/2, tamX, tamY);

  tamY +=3;
  tamX +=3;



  if (tamY > 650 && tamX > 850) {
    background (0);
    posX2+=2;

    image (escena2, posX2/2 - 20, height/2, 950, 500);
    text ("Peter Dinklage", posX2/2, 400);
    image (insigniaking, posX2/2-20, 390, 40, 40);
  } 



  if (frameCount>= 110) {
    background (0);
  } 
  if (frameCount> 115) {
    posY3+=2;

    image (escena3, width/2, posY3/2-30, 800, 650);
    text ("Kit Harington", 80, posY3-400);
    image (insigniastark, 60, posY3-410, 40, 40);
  }



  if (frameCount>= 135) {
    background (0);
  } 
  if (frameCount> 140) {
    tamY4 +=2;
    tamX4 +=2;
    image (escena4, width/2, height/2, tamX4, tamY4);
  }



  if (frameCount>= 160) {
    background (0);
  } 
  if (frameCount> 165) {

    posY3+=2;
    float posY = posY3--;

    image (escena5, width/2, posY3/2-40, 800, 650);
    text ("Isaac Hempstead-Wright", 350, posY-410);
    image (insigniastark, 330, posY-420, 40, 40);
  }



  if (frameCount>= 185) {
    background (0);
  } 
  if (frameCount> 190) {
    tamY4 +=2;
    tamX4 +=2;

    image (escena7, width/2, height/2, tamX4, tamY4);
  }


  if (frameCount>= 210) {
    background (0);
  } 
  if (frameCount> 215) {
    posX2+=2;

    image (escena8, posX2/2 - 100, height/2, 970, 500);
    text ("Lena Kathren Headey", posX2/2-200, random(100,120));
    image (insigniaking, posX2/2-220, random(100,120), 40, 40);
  }



  if (frameCount>= 235) {
    background (0);
  } 
  if (frameCount> 240) {
    posY3+=2;
    float posY = posY3--;

    image (escena9, width/2, posY3/2-150, 800, 650);
    text ("Emilia Clarke", 280, posY-420);
    image (insigniastark, 260, posY-430, 40, 40);
  }


  if (frameCount>= 260) {
    background (0);
  } 
  if (frameCount> 265) {
    image (escena11, width/2, height/2, 800, 500);
  }
}


void mousePressed () {
  if (frameCount> 265) {
    background (0);
    frameCount= 0;
    tamX = 800;
    tamY = 500;
    posX2 = width;
    posY3 = height;
    tamX4 = 800;
    tamY4 = 500;
  }
}
