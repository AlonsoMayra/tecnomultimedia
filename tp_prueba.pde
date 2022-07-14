PImage fondo, nube, arcoiris; 
String [] textos={"un clima loco", "intrucciones:\n evitar tocar cualquier\n tipo de clima para ganar\nantes que finalize el minuto\n\n con las flechitas de izquierda \ny derecha te moves", "game over\n volve a intentar haciendo\nclick en la pantalla", "felicitaciones ganaste\nvolve a jugar haciendo\nclick en la pantalla"};
int estados;
int c=0;
int cant=7;
float pos;
PImage[]  personaje=new PImage[cant];
int orden;
int movimiento=0;
float ax, ay, nx, ny;
boolean perder;
boolean ganar;
void setup() {
  size(800, 600);
  fondo=loadImage("fondo.jpg");
  nube=loadImage("nube.png");
  arcoiris=loadImage("arcoiris.png");
  for ( int p = 0; p < personaje.length; p++ ) {
    personaje[p] = loadImage( "nena"+p+".png" );
  }
  ax=400;
  ay=-15;
  nx=200;
  ny=-15;
}
void draw() {
  background(0);
  movimiento=frameCount;
  println(movimiento);
  image(fondo, 0, 0, 800, 600);
  if (estados==0) {
    pantallas(textos[0], width/2, 100);
  } else if (estados==1) {
    pantallas(textos[1], width/2, 100);
  } else if (estados==2) {
    image(personaje[c], pos, 400);
    clima();
if (perder(nx,ny,pos,300,40)){
      perder=false;
      pantallas(textos[2],width/2,100);
    }
    println();
  }
}
boolean perder(float nx,float ny,float px,float py,float tam){
float distanN=dist(nx, ny, px, py);
return distanN <tam;
}
boolean ganar(float ax, float ay, float px, float py,float tam){
  float distanA=dist(ax, ay, px, py);
  return distanA <tam;
}
void pantallas(String texto, int px, int py) {
  textSize(40);
  textAlign(CENTER);
  fill(0);
  text(texto, px, py);
}
void keyPressed() {
  if (key=='s') {
    estados++;
  }
  if ( keyCode == RIGHT ) {
    pos += 10;
    c += 1;
  }
  if ( keyCode == LEFT ) {
    pos -= 10;
    c -= 1;
  }
  if ( c == personaje.length ) {  
    c = 0;
  } else if ( c == -1 ) {
    c = 2;
  }
}
void mousePressed() {
  estados=1;
}
void clima() {
  ellipse(nx, movimiento, 10, 10);
  image(nube, -15+nx, ny+movimiento, 40, 40);
  ellipse(ax, movimiento, 10, 10);
  image(arcoiris, -30+ax, ay+movimiento, 80, 40);
  frameCount+=3;
  if (frameCount>=600) {
    frameCount=0;
    nx=random(0, 800);
    ax=random(0, 800);
  }
}
