//Alonso Mayra
//91340/9
//https://youtu.be/NDjjgZwMe1s

import processing.sound.*;

SoundFile base; 

Juego juego;
void setup() {
  size(600, 400);
  juego=new Juego();
  //base=new SoundFile(this,"sonidofondo.mp3");
  // base.loop();
  //base.amp(0.3);
}
void draw() {
  background(0);
  juego.dibujar();
  if (keyPressed) {
    juego.moverpersonaje(keyCode);
  }
}
void mousePressed() {
  juego.accionarBotones();
}
