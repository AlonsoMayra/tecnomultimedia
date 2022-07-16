void clima() {
  ellipse(nx, movimiento, tam, tam);
  image(nube, -15+nx, ny+movimiento, 40, 40);
  ellipse(ax, movimiento, tam, tam);
  image(arcoiris, -30+ax, ay+movimiento, 80, 40);
  frameCount+=3;
  if (frameCount>=600) {
    frameCount=0;
    nx=random(0, 800);
    ax=random(0, 800);
  }
}
