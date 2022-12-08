//Alonso Mayra
//91340/9
//https://youtu.be/K4d4Czg-Vbk

import processing.sound.*;

SoundFile sonido; 

Juego juego;
void setup() {
  size(600, 400);
  juego=new Juego();

  //sonido=new SoundFile(this,"sonido.mp3");
  //sonido.loop();
  //sonido.amp(0.3);
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
