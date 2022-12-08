class Juego {
  Personaje nena;
  Fondos fondo;

  PFont letra;
  int pantalla;
  int anchoB, altoB;
  int puntos;
  int contador=0;

  Botones [] Boton=new Botones[9];
  Nieve [] nieves = new Nieve[10];

  Juego() {
    nena=new Personaje();
    fondo=new Fondos();

    letra=loadFont("forsa.vlw");

    anchoB=220;
    altoB=30;

    for (int i=0; i<9; i++) {
      Boton[i]=new Botones(width-anchoB, altoB, anchoB, altoB);
    }

    for (int i=0; i<nieves.length; i++) {
      nieves[i] = new Nieve(50+i*height/6);
    }
  }
  void dibujar() {
    textFont(letra);
    textSize(20);
    text(pantalla, width/2, 100);

    if (pantalla==0) {
      fondo.dibujarFondo(0);
      push();
      textSize(50);
      text("La\n Tormenta", width/2, 100);
      pop();
      text("pasas pantalla haciendo\nclick en los botones.", width/2, 370);
      Boton[1].dibujarBoton(0, 1, "Creditos");
    }
    if (pantalla==1) {
      fondo.dibujarFondo(1);
      push();
      textSize(30);
      text("Juego creado por la alumna: \nAlonso Mayra (91340/9)\nAño: 2022", width/2, 150);
      pop();
      Boton[2].dibujarBoton(1, 2, "Instrucciones");
    }
    if (pantalla==2) {
      fondo.dibujarFondo(2);
      push();
      textSize(30);
      text("Tenes que escapar de la tormenta de\n nieve con las flechitas de izquierda y\n derecha. suerte...", width/2, 120);
      pop();
      text("para ganar tener que aguantar\n 20 segundos sin perder 3 vidas", 170, 300);
      Boton[3].dibujarBoton(2, 3, "Jugar");
    }
    if (pantalla==3) {
      fondo.dibujarFondo(3);
      nena.dibujarnena();
      dibujarjuego();
      perder();
      text("vidas perdidas:", 80, 30);
      text(puntos, 160, 30);
      if (frameCount%60==0) {
        contador++;
      }
      text("tiempo:", 500, 30);
      text(contador, 550, 30);
      if (puntos<3 && contador==20) {//condicion para ganar
        pantalla=4;
        puntos=0;
        contador=0;
      }
      if (puntos==3) {//condicion para perder
        pantalla=5;
        puntos=0;
        contador=0;
      }
    }
    if (pantalla==4) {//gano
      fondo.dibujarFondo(4);
      Boton[4].dibujarBoton(4, 0, "volver al inicio");
      push();
      textSize(30);
      text("felicitaciones ganaste!\npodes volver al inicio", width/2, 100);
      pop();
    }

    if (pantalla==5) {//perdio
      fondo.dibujarFondo(5);
      Boton[5].dibujarBoton(5, 0, "volver al inicio");
      push();
      textSize(30);
      text("lo siento perdiste!\npodes volver al inicio", width/2, 100 );
      pop();
    }
    println(pantalla+" "+puntos+" "+contador);
  }
  void accionarBotones() {
    if (Boton[1].botonPress(width-anchoB, altoB, anchoB, altoB) && pantalla==Boton[1].actual) {
      pantalla = Boton[1].prox;
    }
    if (Boton[2].botonPress(width-anchoB, altoB, anchoB, altoB)&&pantalla==Boton[2].actual) {
      pantalla = Boton[2].prox;
    }
    if (Boton[3].botonPress(width-anchoB, altoB, anchoB, altoB)&& pantalla==Boton[3].actual) {
      pantalla = Boton[3].prox;
    }
    if (Boton[4].botonPress(width-anchoB, altoB, anchoB, altoB)&& pantalla==Boton[4].actual) {
      pantalla = Boton[4].prox;
    }
    if (Boton[5].botonPress(width-anchoB, altoB, anchoB, altoB)&& pantalla==Boton[5].actual) {
      pantalla = Boton[5].prox;
    }
  }
  void  moverpersonaje(int tecla) {
    nena.movernena(tecla);
  }
  void dibujarjuego() {
    for (int i=0; i<nieves.length; i++) {
      nieves[i].dibujarcopo();
      nieves[i].movercopo();
    }
  }
  void perder() {
    for (int i=0; i<nieves.length; i++) {
      float distancia = dist(nena.nx, nena.ny, nieves[i].cx, nieves[i].cy);
      if (distancia<nieves[i].ctam/2+nena.ntam/2) {
        nieves[i].derribado();
        puntos++;
      }
    }
  }
}
