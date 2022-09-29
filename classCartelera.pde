class Cartelera {
  Fondos peliculas;
  Titulos titulo;
  int pantalla;
  int anchoB, altoB;
  Boton [] BotonD=new Boton[8];
  Boton [] BotonI=new Boton[8];
  Cartelera() {
    peliculas=new Fondos();
    titulo=new Titulos();
    anchoB = 220;
    altoB = 50;
    for (int i=0; i<8; i++) {
      BotonD[i]=new Boton(width-anchoB, altoB, anchoB, altoB);
    }
    for (int i=0; i<8; i++) {
      BotonI[i]=new Boton(0, altoB, anchoB, altoB);
    }
  }

  void dibujar() {
    text(pantalla, width/2, 100);
    if (pantalla==0) {
      fill(255);
      titulo.texto("saga completa:Tinkerbell", width/2, height/2);
      BotonD[1].dibujarBoton(0, 1, "elegir pelicula");
    } else if (pantalla==1) {
      peliculas.dibujarFondo(0);
      fill(0);
      titulo.texto("Tinkerbell", width/2, 300);
      BotonD[2].dibujarBoton(1, 2, "siguiente pelicula");
      BotonI[1].dibujarBoton(1, 0, "volver a inicio");
    } else if (pantalla==2) {
      peliculas.dibujarFondo(1);
      titulo.texto("Tinkerbell: Hadas Piratas", width/2, 350);
      BotonD[3].dibujarBoton(2, 3, "siguiente pelicula");
      BotonI[2].dibujarBoton(2, 1, "pelicula anterior");
    } else if (pantalla==3) {
      peliculas.dibujarFondo(2);
      titulo.texto("Tinkerbell:Hadas al Rescate", width/2, 350);
      BotonD[4].dibujarBoton(3, 4, "siguiente pelicula");
      BotonI[3].dibujarBoton(3, 2, "pelicula anterior");
    } else if (pantalla==4) {
      peliculas.dibujarFondo(3);
      titulo.texto("Tinkerbell:El secreto de las Hadas", width/2, 350);
      BotonD[5].dibujarBoton(4, 5, "siguiente pelicula");
      BotonI[4].dibujarBoton(4, 3, "pelicula anterior");
    } else if (pantalla==5) {
      peliculas.dibujarFondo(4);
      titulo.texto("Tinkerbell:El Tesoro Perdido", width/2, 350);
      BotonD[6].dibujarBoton(5, 6, "siguiente pelicula");
      BotonI[5].dibujarBoton(5, 4, "pelicula anterior");
    } else if (pantalla==6) {
      peliculas.dibujarFondo(5);
      titulo.texto("Tinkerbell:La Bestia\nde Nunca Jamas", width/2, 320);
      BotonI[6].dibujarBoton(6, 5, "pelicula anterior");
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
}
