class Juego {
  Personajeprimavera tinkerbell1 ;
  Personajeinvierno tinkerbell2;
  Obstaculosbicho bicho;
  Obstaculosnieve nieve ;
  Fondos fondo;

  PFont letra;
  int pantalla;
  int anchoB, altoB;
  int puntos;

  Botones [] BotonD=new Botones[9];
  Botones [] BotonI=new Botones[9];
  Obstaculosbicho [] bichos = new Obstaculosbicho[10];
  Obstaculosnieve [] nieves =new Obstaculosnieve[10];

  Juego() {
    tinkerbell1=new Personajeprimavera();
    tinkerbell2=new Personajeinvierno();
    bicho=new Obstaculosbicho();
    nieve=new Obstaculosnieve();
    fondo=new Fondos();

    letra=loadFont("book.vlw");

    anchoB=220;
    altoB=30;

    //for para botones
    for (int i=0; i<9; i++) {
      BotonD[i]=new Botones(width-anchoB, altoB, anchoB, altoB);
    }
    for (int i=0; i<8; i++) {
      BotonI[i]=new Botones(0, altoB, anchoB, altoB);
    }
    //for para los obstaculos
    for (int i=0; i<bichos.length; i++) {
      bichos[i] = new Obstaculosbicho(50+i*height/6);
    }
    for (int i=0; i<nieves.length; i++) {
      nieves[i] = new Obstaculosnieve(50+i*height/6);
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
      text("tinkerbell\n entre el invierno y la primavera", width/2, height/2);
      pop();
      BotonD[1].dibujarBoton(0, 1, "instrucciones");
    }

    if (pantalla==1) {
      fondo.dibujarFondo(1);
      push();
      textSize(15);
      push();
      textSize(35);
      text("instrucciones", width/2, 110);
      pop();
      text("presionando con el mouse sobre los botones de la parte\n superior de la pantalla podemos ir avanzando, llegando\n hasta uno de los botones jugar dependiendo\n que lado elegimos.\n\nEn el lado de la primavera debemos esquivar por 20\n segundos los bichos con las flechas de arriba  y abajo\n para ganar si tocas 5 bichos perdes.\n Del lado de invierno debemos esquivar los copos de\nnieve con la flechitas de izquierda y derecha por 20\n segundos para ganar y si te tocan 5\n copos perdes.", width/2, 230);
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
      tinkerbell1.dibujarprimavera();
      dibujarjuegobicho();
      perderbicho();
      push();
      fill(255);
      text("Puntos:", 40, 30);
      text(puntos, 90, 30);
      int s=second();
      line(s, 20, s, 0);
      text("tiempo:", 500, 30);
      text(s, 550, 30);
      pop();
      if (puntos<5 && s==20) {//condicion para ganar;
        pantalla=7;
      }
      if (puntos==5) {//condicion para perder
        pantalla=8;
      }
    }


    if (pantalla==7) {//juego gano
      push();
      fondo.dibujarFondo(6);
      pop();
      BotonI[5].dibujarBoton(7, 0, "volver al inicio");
      push();
      textSize(30);
      text("felicitaciones ganaste!\npodes volver al inicio e ir po otro camiino", width/2, height/2);
      pop();
    }

    if (pantalla==8) {//juego perdio
      push();
      fondo.dibujarFondo(7);
      pop();
      BotonI[6].dibujarBoton(8, 0, "volver al inicio");
      push();
      textSize(30);
      text("lo siento perdiste!\nvolve a intentarlo nuevamente", width/2, height/2);
      pop();
    }

    //inicia juego invierno
    if (pantalla==9) {
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

    if (pantalla==12) {//juego invierno
      //fondo.dibujarFondo(11);
      tinkerbell2.dibujarinvierno();
      dibujarjuegonieve();
      perdernieve();
      push();
      fill(255);
      text("puntos:", 40, 30);
      text(puntos, 90, 30);

      int s=second();
      line(s, 20, s, 0);
      text("tiempo:", 500, 30);
      text(s, 550, 30);
      pop();
      if (puntos<5 && s==20) {//condicion para ganar;
        push();
        pantalla=13;
        pop();
      }
      if (puntos==5) {//condicion para perder
        pantalla=14;
      }
    }

    if (pantalla==13) {//ganar
      fondo.dibujarFondo(12); 
      BotonD[7].dibujarBoton(13, 0, "volver al inicio");
      push();
      textSize(30);
      text("ganaste!\npodes volver al inicio e\nintentar ir por otro camino!", width/2, height/2);
      pop();
    }

    if (pantalla==14) {//perder
      fondo.dibujarFondo(13);
      BotonD[8].dibujarBoton(14, 0, "volver al inicio");
      push();
      textSize(30);
      text("lo siento perdiste!\nvolve a intentarlo nuevamente", width/2, height/2);
      pop();
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
    if (BotonD[8].botonPress(width-anchoB, altoB, anchoB, altoB)&& pantalla==BotonD[8].actual) {
      pantalla = BotonD[8].prox;
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
    tinkerbell1.moverprimavera(tecla);
    tinkerbell2.moverinvierno(tecla);
  }
  void dibujarjuegobicho() {
    bicho.dibujarbicho();
    bicho.moverbicho();
    for (int i=0; i<bichos.length; i++) {
      bichos[i].dibujarbicho();
      bichos[i].moverbicho();
    }
  }
  void dibujarjuegonieve() {
    nieve.dibujarnieve();
    nieve.movernieve();
    for (int i=0; i<nieves.length; i++) {
      nieves[i].dibujarnieve();
      nieves[i].movernieve();
    }
  }
  void perderbicho() {//contacto bicho
    float distan = dist(tinkerbell1.px, tinkerbell1.py, bicho.bx, bicho.by);
    if (distan<bicho.btam/2+tinkerbell1.ptam/2) {
      bicho.derribarbicho();
      puntos++;
    }
    for (int i=0; i<bichos.length; i++) {
      float distancia = dist(tinkerbell1.px, tinkerbell1.py, bichos[i].bx, bichos[i].by);
      if (distancia<bichos[i].btam/2+tinkerbell1.ptam/2) {
        bichos[i].derribarbicho();
        puntos++;
      }
    }
  } 
  void perdernieve() {//contacto nieve
    float distan = dist(tinkerbell2.ix, tinkerbell2.iy, nieve.nx, nieve.ny);
    if (distan<nieve.ntam/2+tinkerbell2.itam/2) {
      nieve.derribarnieve();
      puntos++;
    }
    for (int i=0; i<nieves.length; i++) {
      float distancia = dist(tinkerbell2.ix, tinkerbell2.iy, nieves[i].nx, nieves[i].ny);
      if (distancia<nieves[i].ntam/2+tinkerbell2.itam/2) {
        nieves[i].derribarnieve();
        puntos++;
      }
    }
  }
}
