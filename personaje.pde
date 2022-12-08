class Personaje {
  PImage nena;
  int nx, ny, ntam;
  Personaje() {
    nena=loadImage("nena.png");
    nx=width/2;
    ny=330;
    ntam=10;
  }
  void dibujarnena() {
    imageMode(CENTER);
    image(nena, nx, ny, 100, 160);
  }
  void movernena(int tecla) { 
    if (tecla==RIGHT && ny<width-ntam/4) {
      nx+=3;
    }
    if (tecla==LEFT && nx>ntam/4) {
      nx-=3;
    }
    if (nx>width) {
      nx=0;
    }
  }
}
