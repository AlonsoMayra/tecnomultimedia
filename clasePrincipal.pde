class Aventura {
  Fondos fonditos;
  int pantallas;
  PFont letra;
  int anchoB, altoB;
  Botones [] BotonI=new Botones[8];
  Botones [] BotonD=new Botones[8];
  Aventura() {
    fonditos=new Fondos();
    letra=loadFont("Bookman.vlw");
    anchoB =150;
    altoB =50 ;
       for (int i=0; i<8; i++) {
      BotonI[i]=new Botones(0, 30, anchoB, altoB);
    }
    for (int i=0; i<8; i++) {
      BotonD[i]=new Botones(width-anchoB, 30, anchoB, altoB);
    }
  }
  void dibujar() {
    textFont(letra);
    if (pantallas==0) {
      fonditos.dibujarFondo(0);
      BotonD[1].dibujarBoton(0, 1, "comenzar");
      text("Una mini aventura con Tinkerbell", width/2, 300);
    } else if (pantallas==1) {
      fonditos.dibujarFondo(1);
      BotonI[1].dibujarBoton(1, 2, "Primavera");
      BotonD[2].dibujarBoton(1, 8, "Invierno");
      push();
      textSize(15);
      text("Hola mi nombre es tinkerbell y bienvenido a mi mundo!\nte voy a dar un recorrido por aca y tambien te voy a presentar\n algunos amigos. Primero debes elegir si queres ir para el lado\n de la primavera o para el lado del invierno. ", 360, 350);
      pop();
    } else if (pantallas==2) {
      fonditos.dibujarFondo(2);
      BotonI[2].dibujarBoton(2, 3, "siguiente");
      push();
      textSize(15);
      text("En este Lado es donde yo vivo llegue desde muy chica,conoci\n mucha gente linda y ademas forme un grupo hermoso\n de amigas:Fawn, Silvermist,  Rosetta e Iridessa", 360, 350);
      pop();
    } else if (pantallas==3) {
      fonditos.dibujarFondo(3);
      BotonI[3].dibujarBoton(3, 4, "siguiente");
      push();
      textSize(15);
      text("tinkerbell tengan cuidado estoy sintiendo como\n viene un enjambre de bichos de luz.", 360, 330);
      pop();
    } else if (pantallas==4) {
      fonditos.dibujarFondo(4);
      BotonI[4].dibujarBoton(4, 5, "jugar");
      push();
      textSize(15);
      text("tengan cuidado chicos!\nayudenme para esquivar los bichos con\n las flechitas para arriba y abajo.", 360, 350);
      pop();
    } else if (pantallas==5) {
      fonditos.dibujarFondo(5);
      BotonI[6].dibujarBoton(5, 6, "se borra");//boton solo de prueba despues vy agregar el condicional
    } else if (pantallas==6) {
      fonditos.dibujarFondo(6);
      BotonI[7].dibujarBoton(6, 1, "volver a inicio");
      push();
      textSize(15);
      text("", 360, 350);
      pop();
    } else if (pantallas==7) {
      fonditos.dibujarFondo(7);
      BotonI[8].dibujarBoton(7, 1, "volver a inicio");
      push();
      textSize(15);
      text("", 360, 350);
      pop();
    }
    //invierno 
    else if (pantallas==8) {
      fonditos.dibujarFondo(8);
      BotonD[3].dibujarBoton(8, 9, "siguiente");
      push();
      textSize(15);
      text("Invierno es hermoso pero a mi hace daño por mis alas pero de\n este lado encontre a mi hermana Periwinkle y ella encontro\n la forma para yo poder estar de este lado utilizando un\n abrigo para mis alas", 355, 350);
      pop();
    } else if (pantallas==9) {
      fonditos.dibujarFondo(9);
      BotonD[4].dibujarBoton(9, 10, "siguiente");
      push();
      textSize(15);
      text("Ademas me presento sus amigas Gliss y Spike,\n pase muchos momentos con ellas y los disfrute mucho,\n ademas de poder conocer mejor a mi hermana", 360, 350);
      pop();
    } else if (pantallas==10) {
      fonditos.dibujarFondo(10);
      BotonD[5].dibujarBoton(10, 11, "jugar");
      push();
      textSize(15);
      text("tinkerbell cuidado viene uno tormenta de nieve!\n evita que te toquen moviendote con las flechitas\n para la izquierda y derecha.", 360, 340);
      pop();
    } else if (pantallas==11) {
      fonditos.dibujarFondo(11);
      BotonD[6].dibujarBoton(11, 12, "se borra");//este boton es solo de prueba por que en esta pantalla voy agregar un condicional
    } else if (pantallas==12) {
      fonditos.dibujarFondo(12);
      BotonD[7].dibujarBoton(12, 1, "volver a inicio");
      push();
      textSize(15);
      text("", 360, 350);
      pop();
    } else if (pantallas==13) {
      fonditos.dibujarFondo(13);
      BotonD[8].dibujarBoton(13, 1, "volver a inicio");
      push();
      textSize(15);
      text("", 360, 350);
      pop();
    }
  }
  void accionarBotones() {
    for (int i=0; i<8; i++) {
      if (BotonD[i].botonPress(width-anchoB, 30, anchoB, altoB) && pantallas==BotonD[i].actual) {
        pantallas = BotonD[i].siguiente;
      }
    }
    for (int i=0; i<8; i++) {
      if (BotonI[i].botonPress(width-anchoB, 30, anchoB, altoB) && pantallas==BotonI[i].actual) {
        pantallas = BotonI[i].siguiente;
      }
    }
  }
}
