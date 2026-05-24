PImage GaryHallet, GH2, GH3;
float posXGH, posYGH, tamXGH, tamYGH;
float posXGH2, posYGH2, tamXGH2, tamYGH2;
float posXGH3, posYGH3, tamXGH3, tamYGH3;
float posXMarco7, posYMarco7, tamXMarco7, tamYMarco7;

void Pantalla8() {
  if (estado==8) {
    tint(168, 80, 203);
    image(Imagen1Fondo, 0, 0, width, height);
    noTint();
  }
  if (contador<4200) {
    if (posXGH<10) {
      posXGH=posXGH+velImagen;
    } else {
      posXGH=20;
    }
    if (posXGH2>350) {
      posXGH2=posXGH2-velImagen;
    } else {
      posXGH2=350;
    }
    if (posXGH3<5) {
      posXGH3=posXGH3+velImagen;
    } else {
      posXGH3=5;
    }
  } else {
    posXGH= posXGH-velImagen;
    posXGH2=posXGH2+velImagen;
    posXGH3=posXGH3-velImagen;
    posXMarco7=posXMarco7+velImagen;
  }

  fill(168, 80, 203);
  rect(posXMarco6, posYMarco6, tamXMarco6, tamYMarco6);
  fill (255);
  textFont(mifuente);
  textAlign(CENTER, CENTER);
  textSize(30);
  text("Agregar\n contenido\n de la histria", posXMarco6, posYMarco6, tamXMarco6, tamYMarco6);
  noFill();
  image(GaryHallet, posXGH, posYGH, tamXGH, tamYGH);
  image(GH2, posXGH2, posYGH2, tamXGH2, tamYGH2);
  image(GH3, posXGH3, posYGH3, tamXGH3, tamYGH3);
}
