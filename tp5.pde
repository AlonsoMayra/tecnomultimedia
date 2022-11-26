//Alonso Mayra
//91340/9

import processing.sound.*;

SoundFile base,ruido; 

Juego juego;
void setup() {
  size(600, 400);
  juego=new Juego();
}
void draw() {
  background(0);
  juego.dibujar();
  if (keyPressed) {
    juego.moverpersonaje(keyCode);
  }
  //base=new SoundFile(this,"sonidofondo.mp3");
  //ruido=new SoundFile(this,"sonidocontacto");
  
  //base.loop();
}
void mousePressed() {
  juego.accionarBotones();
}
