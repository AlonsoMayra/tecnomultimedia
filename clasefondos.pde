class Fondos {
  int miFondo;
  PImage [] fondos = new PImage [14];
  Fondos() {
    for (int i=0; i<fondos.length; i++) {
      fondos[i] = loadImage("fondo"+i+".jpg");
    }
  }
  void dibujarFondo(int i){
    image(fondos[miFondo+i], 0, 0, 600, 400);
  }
}
