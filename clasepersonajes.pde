class Personajeprimavera {
  PImage primavera;
  int px, py, ptam;
  Personajeprimavera() {
    primavera=loadImage("primavera.png");
    px=450;
    py=height/2;
    ptam=10;
  }
  void dibujarprimavera() {
    imageMode(CENTER);
    image(primavera, px, py, 70, 150);
  }
  void moverprimavera(int tecla) { 
    if (tecla==DOWN && py<width-ptam/4) {
      py+=3;
    }
    if (tecla==UP && px>ptam/4) {
      py-=3;
    }
  }
}
class Personajeinvierno {
  PImage invierno;
  int ix, iy, itam;
  Personajeinvierno() {
    invierno=loadImage("invierno.png");
    ix=width/2;
    iy=300;
    itam=10;
  }
  void dibujarinvierno() {
    imageMode(CENTER);
    image(invierno, ix, iy, 140, 250);
  }
  void moverinvierno(int tecla) { 
    if (tecla==RIGHT && iy<width-itam/4) {
      ix+=3;
    }
    if (tecla==LEFT && ix>itam/4) {
      ix-=3;
    }
  }
}
