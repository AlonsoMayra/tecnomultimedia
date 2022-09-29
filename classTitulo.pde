class Titulos {
  PFont letra;
  Titulos() {
    letra=loadFont("Kunstler.vlw");
  }
  void texto(String tituloP, int px, int py) {
    push();
    textFont(letra);
    text(tituloP, px, py);
    pop();
  }
}
