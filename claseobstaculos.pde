class Obstaculosb {
  PImage bicho;
  float bx, by, tamb, nvel;
  Boolean bderribado;
  Obstaculosb() {/*
    bicho=loadImage("bicho.png");
    tamb = random(30, 50); 
    bx =random(-width/2, -tamb); 
    by = random(tamb/2, height/2);
    nvel = random(2, 4);
    bderribado = false;
  }
  Obstaculosb(float pny) {
    tamb = random(30, 50); 
    bx =random(-width/2, -tamb); 
    by = pny; // le pasamos por parámetro la ubicacion vertical
    nvel = random(2, 4);
    bderribado = false;*/
  }
  void dibujarbicho() {/*
   // fill(255);
    circle(bx, by, tamb);
    imageMode(CENTER);
    //image(bicho, bx, by);*/
  }
  void moverbicho() {
  /*  {
      if (bx>width+tamb || bderribado) { // si sale de la ventana, la reiniciamos
        bx =random(-width/2, -tamb); 
        // ny = random(ntam/2, height/2); // lo eliminamos para que mantenga el valor del constructor
        tamb = random(30, 50);
        nvel = random(2, 4);
        bderribado = false;
      }
      bx+=nvel;
    }// con esto se mueve
    }
    void derribar() {
      bderribado = true;
    }*/
  }
  class Obstaculosn {
    PImage nieve;
    int nx, ny, tamn;
    Obstaculosn() {
      nieve=loadImage("nieve.png");
    }
    void dibujarnieve() {
    }
    void movernieve() {
    }
  } 
