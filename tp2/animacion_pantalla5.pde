PImage GillyOwens, GillyOwens2, GillyOwens3;
float posXMarco4, posYMarco4, tamXMarco4, tamYMarco4;
float posXGillyOwens, posYGillyOwens, tamXGillyOwens, tamYGillyOwens;
float posXGillyOwens2, posYGillyOwens2, tamXGillyOwens2, tamYGillyOwens2;
float posXGillyOwens3, posYGillyOwens3, tamXGillyOwens3, tamYGillyOwens3;


void Pantalla5() { //Agregar entrada del marco
  if (estado==5) {
    tint(168, 80, 203);
    image(Imagen1Fondo, 0, 0, width, height);
    noTint();
  }
  if (contador<2350) {
    if (posXGillyOwens>450) {
      posXGillyOwens= posXGillyOwens-velImagen;
    } else {
      posXGillyOwens=450;
    }
    if (posXGillyOwens2<5) {
      posXGillyOwens2=posXGillyOwens2+velImagen;
    } else {
      posXGillyOwens2=5;
    }
    if (posXGillyOwens3<10 ) {
      posXGillyOwens3=posXGillyOwens3+velImagen;
    } else {
      posXGillyOwens3=10;
    }
  } else {  //Salida
    posXGillyOwens    = posXGillyOwens    + velImagen;
    posXGillyOwens2   = posXGillyOwens2   - velImagen;
    posXGillyOwens3   = posXGillyOwens3   - velImagen;
    posXMarco4  = posXMarco4  + 10;
  }


  fill(168, 80, 203);
  rect(posXMarco4, posYMarco4, tamXMarco4, tamYMarco4);
  fill (255);
  textFont(mifuente);
  textAlign(CENTER, CENTER);
  textSize(30);
  text("Agregar\n contenido\n de la histria", posXMarco4, posYMarco4, tamXMarco4, tamYMarco4);
  noFill();
  image(GillyOwens, posXGillyOwens, posYGillyOwens, tamXGillyOwens, tamYGillyOwens);
  image (GillyOwens2, posXGillyOwens2, posYGillyOwens2, tamXGillyOwens2, tamYGillyOwens2);
  image(GillyOwens3, posXGillyOwens3, posYGillyOwens3, tamXGillyOwens3, tamYGillyOwens3);
}
