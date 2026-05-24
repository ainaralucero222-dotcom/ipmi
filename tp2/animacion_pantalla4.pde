PImage SallyOwens, SallyOwens2, SallyOwens3;
float posXMarco3, posYMarco3, tamXMarco3, tamYMarco3;
float posXSallyOwens, posYSallyOwens, tamXSallyOwens, tamYSallyOwens;
float posXSallyOwens2, posYSallyOwens2, tamXSallyOwens2, tamYSallyOwens2;
float posXSallyOwens3, posYSallyOwens3, tamXSallyOwens3, tamYSallyOwens3;


void Pantalla4() {
  if (estado==4) {
    tint(168, 80, 203);
    image(Imagen1Fondo, 0, 0, width, height);
    noTint();
  }
  if (contador >= 1200 && contador < 1500) {
    opacidad = map(contador, 1200, 1300, 0, 255);
  } else {
    opacidad = map(contador, 1700, 1800, 255, 0);
  }

  // agregar text e imagenes
  
  fill(168, 80, 203, opacidad);
  rect(posXMarco3, posYMarco3, tamXMarco3, tamYMarco3);
  noFill();
  fill (255, opacidad);
  textFont(mifuente);
  textAlign(CENTER, CENTER);
  textSize(30);
  text("Agregar\n contenido\n de la histria", posXMarco3, posYMarco3, tamXMarco3, tamYMarco3);
  noFill();
  tint(255, opacidad);
  image (SallyOwens, posXSallyOwens, posYSallyOwens, tamXSallyOwens, tamYSallyOwens);
  noTint();
  tint(255, opacidad);
  image (SallyOwens2, posXSallyOwens2, posYSallyOwens2, tamXSallyOwens2, tamYSallyOwens2);
  noTint();
  tint(255, opacidad);
  image (SallyOwens3, posXSallyOwens3, posYSallyOwens3, tamXSallyOwens3, tamYSallyOwens3);
  noTint();
}
