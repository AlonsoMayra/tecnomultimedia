class Juegob {//juego bicho
  Obstaculosb bicho;
  Personajest tinkerbell1;
  Obstaculosb [] bichos = new Obstaculosb[7];
  Juegob() {
    bicho=new Obstaculosb();
    tinkerbell1=new Personajest();
    for (int i=0; i<bichos.length; i++) {
      bichos[i] = new Obstaculosb(50+i*height/6);
    }
  }
  void dibujarjuegob() {
    bicho.dibujarbicho();
    bicho.moverbicho();
    for (int i=0; i<bichos.length; i++) {
      bichos[i].dibujarbicho();
      bichos[i].moverbicho();
    }
  }
}

class Juegon {//juego nieve
  Obstaculosn nieve;
  Personajesi tinkerbell2;
 
  Obstaculosn [] nieves =new Obstaculosn[7];
  Juegon(){
  nieve= new Obstaculosn();
  tinkerbell2=new Personajesi();
    for (int i=0; i<nieves.length; i++) {
      nieves[i] = new Obstaculosn(50+i*height/6);
    }
   
  }
  void dibujarjuegon() {
    nieve.dibujarnieve();
    nieve.movernieve();
    for (int i=0; i<nieves.length; i++) {
      nieves[i].dibujarnieve();
      nieves[i].movernieve();
    }
  }

  
}
