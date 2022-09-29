//Alonso mayra 91340/9
//https://youtu.be/X0Yjo8p8Jm0
Cartelera pelis;
void setup() {
  size(600, 400);
  pelis = new Cartelera();
}
void draw() {
  background(0);
  pelis.dibujar();
}
void mousePressed() {
  pelis.accionarBotones();
}
