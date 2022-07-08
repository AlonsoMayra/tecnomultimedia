//alonso mayra
//91340/9
//com 1
PImage fondo, nube, arcoiris; 
String [] textos={"Lluvia de arcoiris", "intrucciones:\n atrapar 10 arcoiris para\n ganar pero si atrapas\n una nube perdes\n\ncon las flechitas de izquierda \ny derecha te moves ", "Felicitaciones ganaste\n volve a jugar", 
  "perdiste:(\nintenta de nuevo"};
int estados;
int c=0;
int posX=100;
PImage[]  personaje=new PImage[7];
int movimiento=0;
int punto=0;
void setup() {
  size(800, 600);
  fondo=loadImage("fondo.jpg");
  nube=loadImage("nube.png");
  arcoiris=loadImage("arcoiris.png");
  for ( int p = 0; p < personaje.length; p++ ) {
    personaje[p] = loadImage( "nena"+p+".png" );
  }
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
    image( personaje[c], posX, 400 );
    image(nube, 200, movimiento, 40, 40);
    image(arcoiris, 400, movimiento, 80, 40);
    frameCount+=3;
    if (frameCount>=600) {
      frameCount=0;
    }
  }else if(estados==3){
  pantallas(textos[3],width/2,400);
  }
  if(estados==4){
    pantallas(textos[4],width/2,400);
  }
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
    posX += 10;
    c += 1;
  }
  if ( keyCode == LEFT ) {
    posX -= 10;
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
