//Alonso Mayra 91340/9
//TP1

PImage fondo1;
PImage titulo1;
PFont fuente;
String texto;
int movimiento=0;
int mousex, mousey;
void setup() {
  size(800, 600);
  textSize(25); 
  fuente=loadFont("FreestyleScript-Regular-40.vlw");
  fondo1=loadImage("fondo1.jpg");
  titulo1=loadImage("titulo1.jpg");
}
void draw() {
  background(0);
  textFont(fuente);
  movimiento= frameCount;
  println(movimiento);
  image(fondo1, 0, 0, 800, 600);
  image(titulo1, 250, movimiento, 200, 350);
  frameCount+=2;
  textAlign(CENTER);
  if (frameCount>=602) {
    fill(0,0,random(255));
    text("Personajes principales", 200, 1300-movimiento, 400, 100);
    fill(0);
    text("Mae Whitman-Tinker Bell", 200, 1340-movimiento, 400, 100);
    text("Lucy Hale-Periwinkle", 200, 1380-movimiento, 400, 100);
    text("Anjelina Huston-Reina Clarion", 200, 1420-movimiento, 400, 100);
    text("Timothy Dalton-Lord Milori", 200, 1460-movimiento, 400, 100);
    text("Jeff Benett-Dewey", 200, 1500-movimiento, 400, 100);
  } 
  if (movimiento>=1580) {
    fill(0,0,random(255));
    text("Personajes secundarios", 200, -2060+movimiento, 400, 100);
    fill(0);
    text("Lucy Liu-Silvermist", 200, -2020+movimiento, 400, 100);
    text("Pamela Adlon-vidia", 200, -1980+movimiento, 400, 100);
    text("Megan Hilty-Rosetta", 200, -1940+movimiento, 400, 100);
    text("Raven Symone-Iridessa", 200, -1900+movimiento, 400, 100);
    text("Angela Bartys-Fawn", 200, -1860+movimiento, 400, 100);
    text("Debby Ryan-Spike", 200, -1820+movimiento, 400, 100);
    text("Grey Deliste-Gliss", 200, -1780+movimiento, 400, 100);
    text("Matt Lanter-Sled", 200, -1740+movimiento, 400, 100);
    text("Jane Horrocks-Fairy Mary", 200, -1700+movimiento, 400, 100);
    text("Jesse McCarthey-Terence", 200, -1660+movimiento, 400, 100);
    text("Rob Paulsen-boble", 200, -1620+movimiento, 400, 100);
    text("Jeff Benett-Clank", 200, -1580+movimiento, 400, 100);
  }
  if (movimiento>=2680);
  fill(0,0,random(255));
  text("Direccion y Guion", -2700+movimiento, 200, 400, 100);
  fill(0);
  text("Roberts Gannaways y Peggy Holmes", -2700+movimiento, 240, 400, 100);
  fill(0,0,random(255));
  text("Produccion", -2700+movimiento, 280, 400, 100);
  fill(0);
  text("Sean Lurie", -2700+movimiento, 320, 400, 100);
  fill(0,0,random(255));
  text("Musica", -2700+movimiento, 360, 400, 100);
  fill(0);
  text("Joel McNeely", -2700+movimiento, 400, 400, 100);
  if (movimiento>=3515) {
    fill(0,0,random(255));
    text("Montaje", 4200-movimiento, 200, 400, 100);
    fill(0);
    text("Marek Rozenbaum", 4200-movimiento, 240, 400, 100);
    fill(0,0,random(255));
    text("Escenografia", 4200-movimiento, 280, 400, 100);
    fill(0);
    text("Chris Oatley", 4200-movimiento, 320, 400, 100);
    fill(0,0,random(255));
    text("Efectos Especiales", 4200-movimiento, 360, 400, 100);
    fill(0);
    text("Jhon Edgar Park", 4200-movimiento, 400, 400, 100);
  }
}
void mousePressed(){//boton reinicio
  frameCount=0;
}
