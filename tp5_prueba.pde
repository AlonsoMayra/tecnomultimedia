Tinkerbell juego;
void setup() {
  size(600, 400);
  juego=new Tinkerbell();
}
void draw() {
  background(0);
  juego.dibujar();
 // juego.dibujarJuego();
  if (keyPressed) {
    juego.moverpersonaje(keyCode);
  }
}
void mousePressed() {
  juego.accionarBotones();
}
