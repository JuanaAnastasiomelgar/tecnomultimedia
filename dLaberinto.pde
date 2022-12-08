class Laberinto {
  int cant=13;
  int ancho, alto;
  boolean [][] Laberinto;
  int tam = 46;
  int separa = 3; // para que no se dibujen los vertices de las esquinas juntos
  int px, py;

  //Paredes laberinto
  boolean [][] arriba = new boolean[cant][cant];
  boolean [][] abajo = new boolean[cant][cant];
  boolean [][] derecha = new boolean[cant][cant];
  boolean [][] izquierda = new boolean[cant][cant];
  //circulos adentro 
  boolean [][] Comida= new boolean[cant][cant];


  Laberinto (int cant) {
    for (int i=0; i<cant; i++) {
      for (int j=0; j<cant; j++) {
        arriba[i][j] = true;
        abajo[i][j] = true;
        derecha[i][j] = true;
        izquierda[i][j] = true;
        Comida[i][j]=true ;
      }
    }
  }

  void dLaberinto() {
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

        if (Comida[i][j]) { // dibujo los circulos - comida del pacman
          noStroke();
          fill(255);
          ellipse(i*tam+tam/2, j*tam+tam/2, tam/5, tam/5);
        }
      }

      //columna 0 |
      abajo[0][0] = false;
      arriba [0][1] = false;
      abajo [0][1]= false;
      arriba [0][2]= false;
      abajo [0][2]= false;
      derecha [0][2]= false;
      arriba[0][3]= false;
      derecha[0][3]= false;
      abajo [0][3]= false;
      arriba [0][4]= false; 
      abajo [0][4]= false;
      arriba [0][5]= false; 
      derecha [0][5]= false;  
      izquierda [0][6]= false;
      abajo [0][7]= false;
      derecha[0][7]= false;
      arriba [0][8]=false;
      abajo [0][8]=false;
      arriba[0][9]= false;
      abajo [0][9]= false;
      derecha [0][9]= false;
      arriba[0][10]= false;
      abajo [0][10]= false;
      derecha [0][10]= false;
      arriba [0][11]= false;
      abajo [0][11]= false;
      arriba[0][12]= false;

      //fila 0 -
      abajo [4][0]= false;
      abajo [5][0]= false;
      abajo [7][0]= false;
      abajo [8][0]= false;
      abajo [12][0]= false;  
      derecha [0][0]= false;
      izquierda[1][0]= false;
      derecha [1][0]= false;
      izquierda[2][0]= false;
      derecha [2][0]= false;
      izquierda[3][0]= false;
      derecha [3][0]= false;
      izquierda[4][0]= false;
      derecha [4][0]= false;
      izquierda[5][0]= false; 
      derecha[7][0]= false;
      derecha [8][0]= false;
      izquierda[8][0]= false;
      derecha [9][0]= false;
      izquierda[9][0]= false;
      derecha [10][0]= false;
      izquierda[10][0]= false;
      derecha [11][0]= false;
      izquierda[11][0]= false;
      izquierda[12][0]= false;

      //columna 12
      abajo[12][1] = false;
      arriba [12][1] = false;
      abajo [12][1]= false;
      arriba [12][2]= false;
      abajo [12][2]= false;
      arriba[12][3]= false;
      abajo [12][3]= false;
      arriba [12][4]= false; 
      abajo [12][4]= false; 
      arriba [12][5]= false;  
      derecha [12][6]= false;
      abajo [12][7]= false;
      arriba [12][8]=false;
      abajo [12][8]=false;
      arriba[12][9]= false;
      abajo [12][9]= false;
      arriba[12][10]= false;
      abajo [12][10]= false;
      arriba [12][11]= false;
      abajo [12][11]= false;
      arriba[12][12]= false;

      //fila 12
      arriba [4][12]= false;
      arriba [5][12]= false;
      arriba [7][12]= false;
      arriba [10][12]= false;
      arriba [12][12]= false;  
      derecha [0][12]= false;
      izquierda[1][12]= false;
      derecha [1][12]= false;
      izquierda[2][12]= false;
      derecha [2][12]= false;
      izquierda[3][12]= false;
      derecha [3][12]= false;
      izquierda[4][12]= false;
      derecha [4][12]= false;
      izquierda[5][12]= false; 
      derecha[7][12]= false;
      derecha [8][12]= false;
      izquierda[8][12]= false;
      derecha [9][12]= false;
      izquierda[9][12]= false;
      derecha [10][12]= false;
      izquierda[10][12]= false;
      derecha [11][12]= false;
      izquierda [11][12]= false;
      izquierda[12][12]= false;

      //fila 1
      arriba [4][1]= false;
      abajo [4][1]= false;
      arriba [5][1]= false;
      abajo [5][1]= false;
      derecha [4][1]= false;
      izquierda [5][1]= false;
      arriba [7][1]= false;
      arriba [8][1]= false;
      abajo [7][1]= false;
      abajo [8][1]= false;
      derecha [7][1]= false;
      izquierda [8][1]= false;

      //fila 2
      izquierda [1][2]= false;
      abajo [1][2]= false;
      derecha [3][2]= false;
      abajo [3][2]= false;
      izquierda [4][2]= false;
      derecha [4][2]= false;
      arriba [4][2]= false;
      izquierda [5][2]= false;
      derecha [5][2]= false;
      arriba [5][2]= false;
      abajo [5][2]= false;
      izquierda [6][2]= false;
      derecha [6][2]= false;
      abajo [6][2]= false;
      izquierda [7][2]= false;
      derecha [7][2]= false;
      arriba [7][2]= false;
      izquierda [8][2]= false;
      derecha [8][2]= false;
      arriba [8][2]= false;
      izquierda [9][2]= false;
      abajo [9][2]= false;
      derecha [11][2]= false;
      abajo [11][2]= false;
      izquierda [12][2]= false;

      //fila 3
      izquierda [1][3]= false;
      arriba [1][3]= false;
      derecha [1][3]= false;
      abajo [2][3]= false;
      izquierda [2][3]= false;
      derecha [2][3]= false;
      izquierda [3][3]= false;
      arriba [3][3]= false;
      abajo [5][3]= false;
      arriba [5][3]= false;
      derecha [5][3]= false;
      abajo [6][3]= false;
      izquierda [6][3]= false;
      arriba [6][3]= false;
      abajo [9][3]= false;
      arriba [9][3]= false;
      derecha [9][3]= false;
      abajo [10][3]= false;
      izquierda [10][3]= false;
      derecha [10][3]= false;
      izquierda [11][3]= false;
      arriba [11][3]= false;
      derecha [11][3]= false;
      izquierda [12][3]= false;

      //fila 4
      abajo [2][4]= false;
      arriba [2][4]= false;
      abajo [5][4]= false;
      arriba [5][4]= false;
      derecha [5][4]= false;
      abajo [6][4]= false;
      izquierda [6][4]= false;
      arriba [6][4]= false;
      derecha [6][4]= false;
      izquierda[7][4]= false;
      abajo [7][4]= false;
      abajo [9][4]= false;
      arriba [9][4]= false;
      derecha [9][4]= false;
      abajo [10][4]= false;
      arriba [10][4]= false;
      izquierda [10][4]= false;

      //fila 5
      derecha [1][5]= false;
      izquierda [1][5]= false;
      arriba [2][5]= false;
      abajo [2][5]= false;
      derecha [2][5]= false;
      izquierda [2][5]= false;
      abajo [3][5]= false;
      derecha [3][5]= false;
      izquierda [3][5]= false;
      abajo [4][5]= false;
      derecha [4][5]= false;
      izquierda [4][5]= false;
      arriba [5][5]= false;
      derecha [5][5]= false;
      izquierda [5][5]= false;
      arriba [6][5]= false;
      derecha [6][5]= false;
      izquierda [6][5]= false;
      arriba [7][5]= false;
      derecha [7][5]= false;
      izquierda [7][5]= false;
      abajo [8][5]= false;
      derecha [8][5]= false;
      izquierda [8][5]= false;
      arriba [9][5]= false;
      abajo [9][5]= false;
      derecha [9][5]= false;
      izquierda [9][5]= false;
      arriba [10][5]= false;
      abajo [10][5]= false;
      derecha [10][5]= false;
      izquierda [10][5]= false;
      derecha [11][5]= false;
      izquierda [11][5]= false;
      izquierda [12][5]= false;

      //fila 6
      arriba [2][6]= false;
      abajo [2][6]= false;
      derecha [2][6]= false;
      izquierda [3][6]= false;
      arriba [3][6]= false;
      derecha [3][6]= false;
      izquierda [4][6]= false;
      arriba [4][6]= false;
      abajo [4][6]= false;
      abajo [5][6]= false;
      derecha [5][6]= false;
      izquierda [6][6]= false;
      abajo [6][6]= false;
      derecha [6][6]= false;
      abajo [7][6]= false;
      izquierda [7][6]= false;
      arriba [8][6]=false;
      abajo [8][6]=false;
      derecha [8][6]=false;
      arriba [9][6]=false;
      derecha [9][6]=false;
      izquierda [9][6]=false;
      arriba [10][6]=false;
      izquierda [10][6]=false;
      abajo [10][6]=false;

      //fila 7
      izquierda [1][7]=false;
      derecha [1][7]=false;
      izquierda [2][7]=false;
      arriba [2][7]=false;
      arriba [4][7]=false;
      abajo [4][7]=false;
      derecha [4][7]=false;
      arriba [5][7]=false;
      abajo [5][7]=false;
      izquierda [5][7]=false;
      derecha [5][7]=false;
      arriba [6][7]=false;
      abajo [6][7]=false;
      izquierda [6][7]=false;
      derecha [6][7]=false;
      arriba [7][7]=false;
      abajo [7][7]=false;
      izquierda [7][7]=false;
      derecha [7][7]=false;
      arriba [8][7]=false;
      abajo [8][7]=false;
      izquierda [8][7]=false;
      arriba [10][7]=false;
      derecha [10][7]=false;
      izquierda [11][7]=false;
      derecha [11][7]=false;
      izquierda [12][7]=false;

      //fila 8
      arriba [4][8]= false;
      abajo [4][8]= false;  
      arriba [5][8]= false;
      derecha [5][8]= false;  
      arriba [6][8]= false;
      derecha [6][8]= false;
      izquierda [6][8]= false;  
      arriba [7][8]= false;
      izquierda [7][8]= false;  
      arriba [8][8]= false;
      abajo [8][8]= false;

      //fila 9
      izquierda [1][9]= false;
      abajo [1][9]= false;
      derecha [1][9]= false;
      izquierda [2][9]= false;
      derecha [2][9]= false;
      izquierda [3][9]= false;
      abajo [3][9]= false;
      derecha [3][9]= false;
      arriba [4][9]= false;
      izquierda [4][9]= false;
      abajo [4][9]= false;
      derecha [4][9]= false;  
      izquierda [5][9]= false;
      abajo [5][9]= false;
      derecha [5][9]= false;
      izquierda [6][9]= false;
      abajo [6][9]= false;
      derecha [6][9]= false;
      izquierda [7][9]= false;
      abajo [7][9]= false;
      derecha [7][9]= false;
      arriba [8][9]= false;
      izquierda [8][9]= false;
      derecha [8][9]= false;
      izquierda [9][9]= false;
      abajo [9][9]= false;
      derecha [9][9]= false;
      izquierda [10][9]= false;
      abajo [10][9]= false;
      derecha [10][9]= false;
      izquierda [11][9]= false;
      derecha [11][9]= false;
      izquierda [12][9]= false;

      //fila 10
      arriba [1][10]= false;
      izquierda [1][10]= false;
      arriba [3][10]= false;
      derecha [3][10]= false;
      arriba [4][10]= false;
      izquierda [4][10]= false;
      abajo [4][10]= false;
      derecha [4][10]= false;
      arriba [5][10]= false;
      izquierda [5][10]= false;
      abajo [5][10]= false;
      derecha [5][10]= false;
      arriba [6][10]= false;
      izquierda [6][10]= false;
      derecha [6][10]= false;
      arriba [7][10]= false;
      izquierda [7][10]= false;
      abajo [7][10]= false;
      arriba [9][10]= false;
      derecha [9][10]= false;
      arriba [10][10]= false;
      izquierda [10][10]= false;
      abajo [10][10]= false;

      //fila 11
      arriba [4][11]= false;
      abajo [4][11]= false;
      derecha [4][11]= false;  
      arriba [5][11]= false;
      abajo [5][11]= false;
      izquierda [5][11]= false;  
      arriba [7][11]= false;
      abajo [7][11]= false;
      arriba [10][11]= false;
      abajo [10][11]= false;
    }
  }
}
