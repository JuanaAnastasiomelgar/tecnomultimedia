/*
Comisión 1.
 Alumna: Anastasio Melgar Juana
 Legajo: 88099/6
 Link a video explicativo:
 */


Main M;

import processing.sound.*; 
SoundFile wakawaka;

void setup () {
  size (600, 700);
  M = new Main();
  //sonido comer
  wakawaka= new SoundFile (this, "wakawaka.wav");
}

void draw () {
  background (0);
  M.dibujarMain ();
}

void mousePressed() {
  M.presionarBot();
}

void keyPressed() {
  M.mPacman(keyCode);
}
