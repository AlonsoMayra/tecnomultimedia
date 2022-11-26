class Obstaculosbicho {//obstaculos bichos
  PImage bichos;
  float bx, by, btam, nvel;
  Boolean bichoderribado;

  Obstaculosbicho() {
    bichos=loadImage("bichos.png");
    btam = 20; 
    bx =random(width+btam, -btam); 
    by = random(btam/2, height/2);
    nvel = random(2, 4);
    bichoderribado = false;
  }

  Obstaculosbicho(float pny) {
    bichos=loadImage("bichos.png");
    btam = 20; 
    bx =random(width+btam, btam); 
    by = pny;
    nvel = random(2, 4);
    bichoderribado = false;
  }

  void dibujarbicho() {
    imageMode(CENTER);
    image(bichos, bx, by, 70, 70);
  }

  void moverbicho() {
    if (bx>width+btam || bichoderribado) { 
      bx =random(-width/2, -btam); 
      btam = 20;
      nvel = random(2, 4);
      bichoderribado = false;
    }
    bx+=nvel;
  }

  void derribarbicho() {
    bichoderribado = true;
  }
}



class Obstaculosnieve {//obstaculos nieves

  PImage nieve;
  float nx, ny, ntam, nvel;
  boolean nievederribada;
  Obstaculosnieve() {
    nieve=loadImage("nieve.png");
    ntam=20;
    nx=random(width, width);
    ny=random(width, width);
    nievederribada=false;
  }
  Obstaculosnieve(float pny) {
    nieve=loadImage("nieve.png");
    ntam = 20; 
    ny =random(width, width); 
    nx = pny; 
    nvel = random(2, 4);
    nievederribada = false;
  }

  void dibujarnieve() {
    imageMode(CENTER);
    image(nieve, nx, ny, 40, 40);
  }

  void movernieve() {
    if (ny>height+ntam  || nievederribada) { 
      ny =random(-height/2, -ntam); 
      ntam = 20;
      nvel = random(2, 4);
      nievederribada = false;
    }
    ny+=nvel;
  }
  void derribarnieve() {
    nievederribada=true;
  }
} 
