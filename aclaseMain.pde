class Main {
  Laberinto lab;
  Pacman pac;

  Main() {
    lab = new Laberinto();
    pac= new Pacman();
  }

  void dibujarMain () {
    lab.dibujarLab();
    pac.dibujarPacman();
  }

  void moverPacman(int presionada) {
    pac.moverPacman(presionada);
  }
}
