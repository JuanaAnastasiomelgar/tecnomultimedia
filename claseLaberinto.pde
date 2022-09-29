class Laberinto {
  int cant = 13;
  int tam = width/cant;
  int separa = 3;
  int px, py;
  boolean [][] arriba = new boolean[cant][cant];
  boolean [][] abajo = new boolean[cant][cant];
  boolean [][] derecha = new boolean[cant][cant];
  boolean [][] izquierda = new boolean[cant][cant];
  boolean [][] puntos = new boolean[cant][cant];
  float ubipuntos = 12;

  Pacman pac;


  Laberinto () {
    for (int i=0; i<cant; i++) {
      for (int j=0; j<cant; j++) {
        arriba[i][j] = false;
        abajo[i][j] = false;
        derecha[i][j] = false;
        izquierda[i][j] = false;
        //ubipuntos
        if (ubipuntos>1 &&i+j !=0) {
          puntos[i][j] = true;
        }
      }
    }
    pac= new Pacman();
  }

  void dibujarLab() {
    for (int i=0; i<cant; i++) {
      for (int j=0; j<cant; j++) {
        stroke(0, 0, 255);
        strokeWeight(3);
        if (arriba[i][j]) {
          line(i*tam+separa, j*tam+separa, i*tam+tam-separa, j*tam+separa);
        }
        if (abajo[i][j]) {
          line(i*tam+separa, j*tam+tam-separa, i*tam+tam-separa, j*tam+tam-separa);
        }
        if (derecha[i][j]) {
          line(i*tam+tam-separa, j*tam+separa, i*tam+tam-separa, j*tam+tam-separa);
        }
        if (izquierda[i][j]) {
          line(i*tam+separa, j*tam+separa, i*tam+separa, j*tam+tam-separa);
        }
        if (puntos[i][j]) {
          puntitos(i*tam+tam/2, j*tam+tam/2, tam/4);
        }
        if (puntos[px][py]) {
          puntos[px][py] = false;
        } else {
          puntos[px][py] = true;
        }
      }
    }

    //columnas y filas
    //filas ------
    //arriba fila 1
    arriba [0][0] = true;
    arriba [1][0] = true;
    arriba [2][0] = true;
    arriba [3][0] = true;
    arriba [4][0] = true;
    arriba [5][0] = true;
    arriba [7][0] = true;    
    arriba [8][0] = true;
    arriba [9][0] = true;
    arriba [10][0] = true;
    arriba [11][0] = true;
    arriba [12][0] = true;
    //abajo fila 13
    abajo [0][12] = true;
    abajo [1][12] = true;
    abajo [2][12] = true;
    abajo [3][12] = true;
    abajo [4][12] = true;
    abajo [5][12] = true;
    abajo [7][12] = true;    
    abajo [8][12] = true;
    abajo [9][12] = true;
    abajo [10][12] = true;
    abajo [11][12] = true;
    abajo [12][12] = true;
    //izquierda columna 1
    izquierda [0][0] = true;
    izquierda [0][1] = true;
    izquierda [0][2] = true;
    izquierda [0][3] = true;
    izquierda [0][4] = true;
    izquierda [0][8] = true;    
    izquierda [0][9] = true;
    izquierda [0][10] = true;
    izquierda [0][11] = true;
    izquierda [0][12] = true;
    //derecha columna 13
    derecha [12][0] = true;
    derecha [12][1] = true;
    derecha [12][2] = true;
    derecha [12][3] = true;
    derecha [12][4] = true;
    derecha [12][8] = true;    
    derecha [12][9] = true;
    derecha [12][10] = true;
    derecha [12][11] = true;
    derecha [12][12] = true;
    //fila 1 y 2
    derecha[6][0] = true;
    izquierda [6][0] = true;

    derecha[6][1] = true;
    izquierda [6][1] = true;
    abajo[6][1] = true;

    arriba [1][1] = true;
    derecha[1][1] = true;
    izquierda [1][1] = true;
    abajo[1][1] = true;

    arriba [3][1] = true;
    izquierda [3][1] = true;
    abajo[3][1] = true;

    arriba [4][1] = true;
    derecha[4][1] = true;
    abajo[4][1] = true;

    arriba [11][1] = true;
    derecha[11][1] = true;
    izquierda [11][1] = true;
    abajo[11][1] = true;

    arriba [9][1] = true;
    derecha[9][1] = true;
    abajo[9][1] = true;

    arriba [8][1] = true;
    izquierda[8][1] = true;
    abajo[8][1] = true;

    arriba [1][3] = true;
    derecha [1][3] = true;
    izquierda [1][3] = true;
    abajo [1][3] = true;

    arriba [3][3] = true;
    derecha [3][3] = true;
    izquierda [3][3] = true;

    derecha [3][4] = true;
    izquierda [3][4] = true;

    abajo [3][5] = true;
    derecha [3][5] = true;

    abajo [2][5] = true;
    arriba [2][5] = true;
    izquierda [2][5] = true;

    abajo [0][5] = true;
    arriba [0][5] = true;
    derecha [0][5] = true;

    arriba [6][3] = true;    

    abajo [7][3] = true;
    arriba [7][3] = true;
    derecha [7][3] = true;

    abajo [5][3] = true;
    arriba [5][3] = true;
    izquierda [5][3] = true;

    abajo [6][4] = true;
    derecha [6][4] = true;
    izquierda [6][4] = true;

    arriba [9][3] = true;
    derecha [9][3] = true;
    izquierda [9][3] = true;

    derecha [9][4] = true;
    izquierda [9][4] = true;

    abajo [9][5] = true;
    izquierda [9][5] = true;

    arriba [10][5] = true;
    abajo [10][5] = true;
    derecha [10][5] = true;

    arriba [11][3] = true;
    derecha [11][3] = true;
    izquierda [11][3] = true;
    abajo [11][3] = true;

    arriba [12][5] = true;
    abajo [12][5] = true;
    izquierda [12][5] = true;

    arriba [12][7] = true;
    abajo [12][7] = true;
    izquierda [12][7] = true;

    arriba [0][7] = true;
    abajo [0][7] = true;
    derecha[0][7] = true;

    arriba [6][6] = true;  
    abajo [6][6] = true; 

    abajo [7][6] = true;
    arriba [7][6] = true;
    derecha [7][6] = true;

    abajo [5][6] = true;
    arriba [5][6] = true;
    izquierda [5][6] = true;

    arriba [6][8] = true;  
    derecha [6][8] = true;
    izquierda [6][8] = true;

    abajo [6][9] = true;

    abajo [7][9] = true;
    arriba [7][9] = true;

    abajo [5][9] = true;
    arriba [5][9] = true;

    arriba [4][9] = true;
    abajo [4][9] = true;
    izquierda [4][9] = true;

    arriba [8][9] = true;
    abajo [8][9] = true;
    derecha [8][9] = true;

    arriba [2][7] = true;
    abajo [2][7] = true;
    izquierda [2][7] = true;

    arriba [3][7] = true;
    abajo [3][7] = true;
    derecha[3][7] = true;

    arriba [9][7] = true;
    abajo [9][7] = true;
    izquierda [9][7] = true;

    arriba [10][7] = true;
    abajo [10][7] = true;
    derecha[10][7] = true;

    arriba [1][9] = true;
    derecha [1][9] = true;
    izquierda [1][9] = true;

    derecha [1][10] = true;
    izquierda [1][10] = true;

    abajo [1][11] = true;
    izquierda [1][11] = true;

    arriba [2][11] = true;
    abajo [2][11] = true;
    derecha [2][11] = true;

    derecha [6][12] = true;
    izquierda [6][12] = true;

    derecha [6][11] = true;
    izquierda [6][11] = true;
    arriba [6][11] = true;

    arriba [4][11] = true;
    derecha[4][11] = true;
    izquierda [4][11] = true;
    abajo[4][11] = true;

    arriba [8][11] = true;
    derecha[8][11] = true;
    izquierda [8][11] = true;
    abajo[8][11] = true;

    arriba [10][11] = true;
    izquierda [10][11] = true;
    abajo[10][11] = true;

    derecha [11][11] = true;
    abajo [11][11] = true;

    izquierda[11][10] = true;
    derecha [11][10] = true;

    izquierda[11][9] = true;
    derecha [11][9] = true;
    arriba [11][9] = true;
  }

  void puntitos(int x, int y, int tam) {
    noStroke();
    fill(255, 0, 0);
    ellipse(x, y, tam, tam);
  }

  void comer() {
    float distancia = dist(ubipuntos,ubipuntos, px, py);
    if (distancia<pac.tamp/2+ubipuntos) {
      puntos[cant][cant] = false;
    }
  }
}
