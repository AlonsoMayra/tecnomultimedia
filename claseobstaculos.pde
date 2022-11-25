class Obstaculosb {//obstaculos bichos
  PImage bichos;
  float bx, by, tamb, nvel;
  Boolean bderribado;

  Obstaculosb() {
    bichos=loadImage("bichos.png");
    tamb = 20; 
    bx =random(width+tamb, -tamb); 
    by = random(tamb/2, height/2);
    nvel = random(2, 4);
    bderribado = false;
  }

  Obstaculosb(float pny) {
    bichos=loadImage("bichos.png");
    tamb = 20; 
    bx =random(width+tamb, tamb); 
    by = pny;
    nvel = random(2, 4);
    bderribado = false;
  }

  void dibujarbicho() {
    imageMode(CENTER);
    image(bichos,bx, by, 70, 70);
  }

  void moverbicho() {
    if (bx>width+tamb || bderribado) { 
      bx =random(-width/2, -tamb); 
      tamb = 20;
      nvel = random(2, 4);
      bderribado = false;
    }
    bx+=nvel;
  }

  void derribar() {
    bderribado = true;
  }
}

class Obstaculosn {//obstaculos nieves
  
  PImage nieve;
  float nx, ny, tamn,nvel;
  boolean nderribada;
  Obstaculosn() {
    nieve=loadImage("nieve.png");
    tamn=20;
    nx=random(width,width);
    ny=random(width,width);
    nderribada=false;
  }
   Obstaculosn(float pny) {
    nieve=loadImage("nieve.png");
    tamn = 20; 
    ny =random(width, width); 
    nx = pny; 
    nvel = random(2, 4);
    nderribada = false;
  }
  
  void dibujarnieve() {
     imageMode(CENTER);
    image(nieve,nx, ny, 40, 40);
  }
  
  void movernieve() {
    if (ny>height+tamn  || nderribada) { 
      ny =random(-height/2, -tamn); 
      tamn = 20;
      nvel = random(2, 4);
      nderribada = false;
    }
    ny+=nvel;
  }
  
} 

 
