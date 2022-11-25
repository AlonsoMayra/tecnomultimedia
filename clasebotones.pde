class Botones {
  int bx, by, ancho, alto; 
  int actual, prox;  
  String texto;
  Botones(int bx, int by, int ancho, int alto) {
    this.bx = bx;
    this.by = by;
    this.ancho = ancho;
    this.alto = alto;
    textAlign(CENTER, CENTER);
    textSize(alto/2);
  }
  void dibujarBoton(int actual, int prox, String texto) {
    this.actual = actual;
    this.prox = prox;
    this.texto = texto;
    fill(255);
    rect(bx, by, ancho, alto);
    fill(0); 
    text(texto, bx+ancho/2, by+alto/2);
  }
  boolean botonPress(int bx, int by, int ancho, int alto) {
    return mouseX>bx && mouseX<bx+ancho && mouseY>by && mouseY<by+alto;
  }
}
