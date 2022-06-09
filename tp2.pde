//Alonso Mayra 91340/9
//com 1
//URL:https://youtu.be/RCUnYik5dMI

boolean blanco=true;
void setup() {
  size(600, 600);
  noStroke();
}
void draw() {
  float fx=map(mouseX, 0, width, 0, 255);
  float fy=map(mouseY, 0, height, 0, 255);
  background(fx, 0, fy);
  translate(width/2, height/2);
  rectMode(CENTER);
  for (int c=width; c>0; c-=20) {
    if (blanco) {
      fill (0);
    } else {
      fill(fx,0,fy);
    }
    rotate(PI/45);
    rect(0, 0, c, c);
    blanco=!blanco;
  }
}
