class Tinkerbell {

  Personajest tinkp;
  Personajesi tinki;
  Juegob estampida;
  Juegon lluvia;
  Obstaculosb bicho;

  PFont letra;
  Fondos fondo;
  int pantalla;
  int anchoB, altoB;
  boolean vidan;
  boolean vidab;


  Botones [] BotonD=new Botones[8];
  Botones [] BotonI=new Botones[8];
  Tinkerbell() {
    tinkp=new Personajest();
    tinki=new Personajesi();
    estampida=new Juegob();
    lluvia=new Juegon();
    letra=loadFont("book.vlw");
    fondo=new Fondos();
    anchoB=220;
    altoB=30;
    for (int i=0; i<8; i++) {
      BotonD[i]=new Botones(width-anchoB, altoB, anchoB, altoB);
    }
    for (int i=0; i<8; i++) {
      BotonI[i]=new Botones(0, altoB, anchoB, altoB);
    }
  }
  void dibujar() {
    textFont(letra);
    textSize(15);
    text(pantalla, width/2, 100);
    if (pantalla==0) {
      fondo.dibujarFondo(0);
      push();
      textSize(35);
      text("tinkerbell\n entre la primavera y el invierno", width/2, height/2);
      pop();
      BotonD[1].dibujarBoton(0, 1, "instrucciones");
    }
    if (pantalla==1) {
      fondo.dibujarFondo(1);
      push();
      textSize(18);
      push();
      textSize(35);
      fill(0, 255, 50);
      text("instrucciones", width/2, 90);
      pop();
      fill(255, 0, 0);
      text("presionando con el mouse sobre los botones de la parte\n superior de la pantalla podemos ir avanzando, llegando\n hasta uno de los botones jugar dependiendo que lado elegimos.\n\nsi vamos por el lado de la primavera nos vamos a encontrar un\njuego donde debemos esquivar bichos con las flechitas de abajo\n y arriba sin que nos toque ninguno por 20 segundos.\n De igual forma del lado de invierno esquivar los copos de\nnieve con la flechitas de izquierda y derecha por 20 segundos\n para ganar.", width/2, 230);
      pop();
      BotonD[2].dibujarBoton(1, 2, "siguiente");
    }
    if (pantalla==2) {
      fondo.dibujarFondo(2);
      text("hola bienvenido a mi mundo soy tinkerbell me encanta tenerte\n por aca te voy a dar un recorrido por el lugar donde creci, me\n gustaria que me indiques por donde queres continuar por\n  el lado de la primavera o por el invierno...", 360, 350);
      BotonI[1].dibujarBoton(2, 3, "primavera");
      BotonD[3].dibujarBoton(2, 9, "invierno");
    }
    if (pantalla==3) {
      fondo.dibujarFondo(3);
      text("En este lado es donde vivo yo y tengo un grupo de amigas\n hermoso se llaman Rosetta, Silvermist, Fawn y Iridessa. ellas\n fueron las que me mostraron este lugar cuando llegue\n y desde ahi somos grandes amigas. ", 360, 350);
      BotonI[2].dibujarBoton(3, 4, "siguiente");
    }
    if (pantalla==4) {
      fondo.dibujarFondo(4);
      text("tinkerbell por fin te encuentro estoy dando vueltas hace\nmucho te queria avisar que hay una bandada de bichos de\n luz viniendo hacia aca hay qu tener mucho\n cuidado para no lastimarlos.", 370, 340);
      BotonI[3].dibujarBoton(4, 5, "siguiente");
    }
    if (pantalla==5) {
      fondo.dibujarFondo(5);
      text("chicos me ayudan para esquivar los bichos...\nnose oviden con las flechas para arriba y abajo pueden\n esquivarlos, buena suerte!", 350, 330);
      BotonI[4].dibujarBoton(5, 6, "jugar");
    }
    if (pantalla==6) {//juego bichos
      tinkp.dibujarprimavera();
      estampida.dibujarjuegob();
    }
    if (pantalla==7) {//juego gano
      fondo.dibujarFondo(6);
      BotonI[5].dibujarBoton(7, 0, "volver al inicio");
    }
    if (pantalla==8) {//juego perdio
      fondo.dibujarFondo(7);
      BotonI[6].dibujarBoton(8, 0, "volveral inicio");
    }
    if (pantalla==9) {//inicia invierno
      fondo.dibujarFondo(8);
      text("En este lado encontre  mi hermana periwinkle pero yo antes\nno sabia que existia porque viviamos en distintos lados, ademas\n fue complicado encontrarnos por que mis alas no pueden\n tocar el frio porque me hararia daño.", 355, 350);
      BotonD[4].dibujarBoton(9, 10, "siguiente");
    }
    if (pantalla==10) {
      fondo.dibujarFondo(9);
      text("periwinkle me presento a sus amigas gliss y spike. Ademas\n de hacerme un recorrido por este lado aunque fue medio en\n secreto por que esta prohibido que un hada de la primavera\ncruce para este lada por seguridad.", 350, 350);
      BotonD[5].dibujarBoton(10, 11, "siguiente");
    }
    if (pantalla==11) {
      fondo.dibujarFondo(10);
      text("tinkerbell cuidado! se acerca una tormenta de nieve y como\n esta muy cerca lo unico que nos queda es que esquives lo mas\n posible la tormenta no te olvides de ir hacia la izquierda o\n derecha para esquivarlos.", 370, 340);
      BotonD[6].dibujarBoton(11, 12, "jugar");
    }
    if (pantalla==12) {//juego inviierno
      //fondo.dibujarFondo(11);
      push();
      tinki.dibujarinvierno();
      pop();
      push();
      tinki.dibujarinvierno();
      lluvia.dibujarjuegon();
      pop();
    }
    if (pantalla==13) {//ganar
      fondo.dibujarFondo(12); 
      BotonD[7].dibujarBoton(13, 0, "volver al inicio");
      text("ganaste!\npodes volver al inicio e\nintentar ir por otro camino!", width/2, height/2);
    }
    if (pantalla==14) {//perder
      fondo.dibujarFondo(13);
      BotonD[8].dibujarBoton(14, 0, "volver al inicio");
      text("lo siento perdiste!\nvolve a intentarlo nuevamente", width/2, height/2);
    }
  }
  void accionarBotones() {
    if (BotonD[1].botonPress(width-anchoB, altoB, anchoB, altoB) && pantalla==BotonD[1].actual) {
      pantalla = BotonD[1].prox;
    }
    if (BotonD[2].botonPress(width-anchoB, altoB, anchoB, altoB)&&pantalla==BotonD[2].actual) {
      pantalla = BotonD[2].prox;
    }
    if (BotonD[3].botonPress(width-anchoB, altoB, anchoB, altoB)&& pantalla==BotonD[3].actual) {
      pantalla = BotonD[3].prox;
    }
    if (BotonD[4].botonPress(width-anchoB, altoB, anchoB, altoB)&& pantalla==BotonD[4].actual) {
      pantalla = BotonD[4].prox;
    }
    if (BotonD[5].botonPress(width-anchoB, altoB, anchoB, altoB)&& pantalla==BotonD[5].actual) {
      pantalla = BotonD[5].prox;
    }
    if (BotonD[6].botonPress(width-anchoB, altoB, anchoB, altoB)&& pantalla==BotonD[6].actual) {
      pantalla = BotonD[6].prox;
    }
    if (BotonD[7].botonPress(width-anchoB, altoB, anchoB, altoB)&& pantalla==BotonD[7].actual) {
      pantalla = BotonD[7].prox;
    }
    if (BotonI[1].botonPress(0, altoB, anchoB, altoB) && pantalla==BotonI[1].actual) {
      pantalla = BotonI[1].prox;
    }
    if (BotonI[2].botonPress(0, altoB, anchoB, altoB)&&pantalla==BotonI[2].actual) {
      pantalla = BotonI[2].prox;
    }
    if (BotonI[3].botonPress(0, altoB, anchoB, altoB)&& pantalla==BotonI[3].actual) {
      pantalla = BotonI[3].prox;
    }
    if (BotonI[4].botonPress(0, altoB, anchoB, altoB)&& pantalla==BotonI[4].actual) {
      pantalla = BotonI[4].prox;
    }
    if (BotonI[5].botonPress(0, altoB, anchoB, altoB)&& pantalla==BotonI[5].actual) {
      pantalla = BotonI[5].prox;
    }
    if (BotonI[6].botonPress(0, altoB, anchoB, altoB)&& pantalla==BotonI[6].actual) {
      pantalla = BotonI[6].prox;
    }
  }
  void  moverpersonaje(int tecla) {
    tinkp.moverprimavera(tecla);
    tinki.moverinvierno(tecla);
  }
}
