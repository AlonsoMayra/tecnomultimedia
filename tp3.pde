PImage fondo, nube, arcoiris; 
String [] textos={"un clima loco", "intrucciones:\n evitar tocar \nlas nubes para ganar\n\n con las flechitas de izquierda \ny derecha te moves", "game over\n volve a intentar\npara poder ganar", "felicitaciones ganaste\nvolve a jugar"};
int estados, orden;
int c=0;
int cant=7;
PImage[]  personaje=new PImage[cant];
int movimiento=0;
float ax, ay, nx, ny, px, py;
int tam=10;
boolean perder;
boolean ganar;
int puntos=0;
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
  px=0;
  py=400;
  tam=10;
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
    image(personaje[c], px, py);
    clima();

    float dn=dist(px, nx, py, ny);
    int rn=10/2;
    if (dn<=rn){
      if (estados==3) {
        pantallas(textos[3], width/2, 100);
      }
    }
    for (int i=0; i<=15; i++) {
      float da=dist(px, ax, py, ay);
      int ra=10/2;
      if (da<=ra) {
        ganar=true;
        puntos++;
        text("puntos:"+i, 750, 50);
      }
    }
  }
}
void keyPressed() {
  if (key=='s') {
    estados++;
  }
  if ( keyCode == RIGHT ) {
    px += 10;
    c += 1;
  }
  if ( keyCode == LEFT ) {
    px -= 10;
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
