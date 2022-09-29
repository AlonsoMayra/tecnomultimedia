class Fondos {
  PImage pelicula1, pelicula2, pelicula3, pelicula4, pelicula5, pelicula6;
  int miFondo;
  PImage [] fondos = new PImage [7];
  Fondos() {
    for (int i=0; i<fondos.length; i++) {
      fondos[i] = loadImage("pelicula"+i+".jpg");
    }
  }
  void dibujarFondo(int i) {
    image(fondos[miFondo+i], 0, 0, 600, 400);
  }
}
