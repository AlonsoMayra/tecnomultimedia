class Fondos {
  int miFondo;
  PImage [] fondo = new PImage [13];//cambiar depende la cantidad de fondos que agregue
  Fondos() {
    for (int i=0; i<fondo.length; i++) {
      fondo[i] = loadImage("img"+i+".jpg");
    }
  }
    void dibujarFondo(int i) {
      image(fondo[miFondo+i], 0, 0, 600, 400);
    }
  }
