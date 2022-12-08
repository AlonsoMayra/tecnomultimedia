class Nieve {
  PImage copo;
  float cx, cy, ctam, nvel;
  boolean copoderribado;

  Nieve(float n) {
    copo=loadImage("copo.png");
    ctam = 20; 
    cy =random(width, width); 
    cx = n; 
    nvel = random(1, 1);
    copoderribado = false;
  }

  void dibujarcopo() {
    imageMode(CENTER);
    image(copo, cx, cy, 40, 40);
  }

  void movercopo() {
    if (cy>height+ctam  || copoderribado) { 
      cy =random(-height/2, -ctam); 
      ctam = 20;
      nvel = random(2, 4);
      copoderribado = false;
    }
    cy+=nvel;
  }
  void derribado() {
    copoderribado=true;
  }
}
