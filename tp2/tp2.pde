PImage Imagen1Fondo;
PImage ImagenBoton;
PImage ImagenBotonReinicio;
PFont mifuente;
float posXTexto;
int contador, FrameInicio;
int estado;
float opacidad;
boolean BotonActivado;
boolean BotonReiniciar;


void setup() {
  size(640, 480);
  mifuente= loadFont("Georgia-Italic-48.vlw");
  Imagen1Fondo= loadImage("CasaOwens3.jpg");
  ImagenBoton= loadImage("Brujas.jpg");
  ImagenBotonReinicio= loadImage("Aidan Quinn (1).jpg");
  estado= 1;
  contador= 0;

  opacidad= 0;
  velImagen=4;
  velMarcos=4;

  // Asigno los valores a las variables de la pantalla 2
  Hermanas= loadImage("HermanasOwens_5.png");
  posXinicialM=-400;
  posXHermanas=-250;
  posYHermanas=3;
  tamXHermanas=200;
  tamYHermanas=400;
  posXMarco= width/3;//100;
  posYMarco=height/3;//30;
  tamXMarco=400;
  tamYMarco= 200;

  //Asigno los valores a las variables de la pantalla 3
  Tias= loadImage("Tías_1 copia.png");
  posYTias=-200;
  posXMarco2=10;
  posYMarco2=-400;
  tamXMarco2=400;
  tamYMarco2=200;
  posXTias=10;
  tamXTias=200;
  tamYTias=200;
  Tias2= loadImage("Tías_2 copia1.png");
  posXTias2=700;
  posYTias2=300;
  tamXTias2=200;
  tamYTias2=200;
  Tias3=loadImage("Tías_2copia2.1.png");
  posXTias3=300;
  posYTias3=-200;
  tamXTias3=200;
  tamYTias3=200;

  //Asigno los valores a las variables de la pantalla 4
  SallyOwens= loadImage("SallyOwens_2 copia.png");
  posXSallyOwens=3;
  posYSallyOwens=30;
  tamXSallyOwens=200;
  tamYSallyOwens=200;
  SallyOwens2= loadImage("SallyOwens_3.png");
  posXSallyOwens2=3;
  posYSallyOwens2=200;
  tamXSallyOwens2=250;
  tamYSallyOwens2=200;
  SallyOwens3= loadImage("SallyOwens_4 copia.png");
  posXSallyOwens3=400;
  posYSallyOwens3=220;
  tamXSallyOwens3=200;
  tamYSallyOwens3=300;

  posXMarco3=200;
  posYMarco3=20;
  tamXMarco3=400;
  tamYMarco3= 200;

  //Asigno los valores a las variables de la pnatalla 5
  GillyOwens= loadImage("GillyOwens_6 copia.png");
  posXGillyOwens=700;
  posYGillyOwens=0;
  tamXGillyOwens=200;
  tamYGillyOwens=300;
  GillyOwens2=loadImage("GillyOwens_5 copia.png");
  posXGillyOwens2=-200;
  posYGillyOwens2=0;
  tamXGillyOwens2=200;
  tamYGillyOwens2=200;
  GillyOwens3=loadImage("GillyOwens_3 copia.png");
  posXGillyOwens3=-200;
  posYGillyOwens3=250;
  tamXGillyOwens3=200;
  tamYGillyOwens3=250;

  posXMarco4=200;
  posYMarco4=20;
  tamXMarco4=300;
  tamYMarco4= 400;

  //Asigno los valores de la pantalla 6
  JimmyAngelov= loadImage("descargar copia.png");
  posXJA=5;
  posYJA=600;// estoy fuera del size porque quiero que ingrese desde abajo
  tamXJA=640;
  tamYJA=200;
  JimmyGilly= loadImage("Jimmy Angelov & Gillian Owens copia.png");
  posXJG=-300;
  posYJG=100;
  tamXJG=300;
  tamYJG=200;

  posXMarco5=300;
  posYMarco5=10;
  tamXMarco5=300;
  tamYMarco5=300;

  //Asigno ls valores de la pantalla7
  Zombie=loadImage("Zombie.png");
  posXZ=-200;
  posYZ=0;
  tamXZ=200;
  tamYZ=200;
  Zombie2=loadImage("Zombie2.png");
  posXZ2=700;
  posYZ2=270;
  tamXZ2=200;
  tamYZ2=200;
  Hermanas2=loadImage("HermanasOwens_4copia.png");
  posXH2=-200;
  posYH2=200;
  tamXH2=400;
  tamYH2=300;

  posXMarco6=200;
  posYMarco6=10;
  tamXMarco6=400;
  tamYMarco6=300;
  
  //Asigno los valores de la pantalla8 
  GaryHallet=loadImage("Aidan Quinn copia.png");
  posXGH=-200;
  posYGH=3;
  tamXGH=300;
  tamYGH=300;
  GH2=loadImage("Practical Magic-one of the best Halloween movies ever! I love this movie couple! copia.png");
  posXGH2=700;
  posYGH2=200;
  tamXGH2=300;
  tamYGH2= 300;
  GH3=loadImage("GH3.png");
  posXGH3=-200;
  posYGH3=200;
  tamXGH3=300;
  tamYGH3=300;
  
  posXMarco7=200;
  posYMarco7=10;
  tamXMarco7=400;
  tamYMarco7=300;
  
}

void draw() {
  contador=frameCount-FrameInicio;
  smooth();
  if (estado==1) {
    background(Imagen1Fondo);
    BotonInicio();
  } else if (contador>= 0 && contador< 600) {
    estado=2;
    Pantalla2();
  } else if (contador>=600 && contador<1200) {
    estado=3;
    Pantalla3();
  } else if (contador>=1200 && contador<1800) {
    estado=4;
    Pantalla4();
  } else if (contador>=1800 && contador<2400) {
    estado=5;
    Pantalla5();
  } else if (contador>=2400 && contador<3000) {
    estado=6;
    Pantalla6();
  } else if (contador>=3000 && contador<3600) {
    estado=7;
    Pantalla7();
  } else if(contador>=3600 && contador<4200){
  estado=8;
  Pantalla8();
  } else if( contador>=4260 ){
    estado=9;
  BotonReinicio();
  }
}
