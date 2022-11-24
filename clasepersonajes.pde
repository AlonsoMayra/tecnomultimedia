class Personajest{
  PImage primavera;
  int px,py,ptam;
  Personajest() {
    primavera=loadImage("primavera.png");//magenes para agegar arriba
    px=200;
    py=height/2;
    ptam=10;
  }
  void dibujarprimavera() {
    fill(0);
    circle(px,py,ptam);
    imageMode(CENTER);
    image(primavera,px,py,140,250);
  }
  void moverprimavera(int tecla) { // agregar parámetro
    if (tecla==DOWN && py<width-ptam/4) {
      py+=3;
    }
    if (tecla==UP && px>ptam/4) {
      py-=3;
    }
  }
}
class Personajesi{
PImage invierno;
int ix,iy,itam;
Personajesi(){
 invierno=loadImage("invierno.png");
 ix=width/2;
 iy=300;
 itam=10;
}
void dibujarinvierno() {
    fill(240);
    circle(ix,iy,itam);
    imageMode(CENTER);
    image(invierno,ix,iy,130,250);
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
