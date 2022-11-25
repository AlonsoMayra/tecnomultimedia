//Alonso Mayra
//91340/9
Tinkerbell juego;
void setup() {
  size(600, 400);
  juego=new Tinkerbell();
}
void draw() {
  background(0);
  juego.dibujar();
 //juego.dibuja();
  if (keyPressed) {
    juego.moverpersonaje(keyCode);
  }
}
void mousePressed() {
  juego.accionarBotones();
}
