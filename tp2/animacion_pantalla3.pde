PImage Tias, Tias2, Tias3;

float posXMarco2, posYMarco2, tamXMarco2, tamYMarco2;
float posXTias, posYTias, tamXTias, tamYTias;
float posXTias2, posYTias2, tamXTias2, tamYTias2;
float posXTias3, posYTias3, tamXTias3, tamYTias3;

void Pantalla3() {
  if (estado==3) {
    tint(168, 80, 203);
    image(Imagen1Fondo, 0, 0, width, height);
    noTint();
  }
  if (contador < 1050) {
    if (posYTias < 10) {
      posYTias = posYTias + velImagen;
    } else {
      posYTias = 10;
    }
    if (posXTias2>300) {
      posXTias2=posXTias2-velImagen;
    } else {
      posXTias2=300;
    }

    if (posYTias3 < 10) {
      posYTias3= posYTias3+velImagen;
    } else {
      posYTias3=10;
    }

    // Animación del Marco 3
    if (posYMarco2 < 210) {
      posYMarco2 = posYMarco2 + velImagen;
    } else {
      posYMarco2 = 210;
    }
  } else {  //Salida
    posXTias    = posXTias    + velImagen;
    posXTias2   = posXTias2   + velImagen;
    posXTias3   = posXTias3   + velImagen;
    posXMarco2  = posXMarco2  + 10;
  }

  // agregar text e imagenes

  fill(168, 80, 203);
  rect(posXMarco2, posYMarco2, tamXMarco2, tamYMarco2);
  fill (255);
  textFont(mifuente);
  textAlign(CENTER, CENTER);
  textSize(30);
  text("Agregar\n contenido\n de la histria", posXMarco2, posYMarco2, tamXMarco2, tamYMarco2);
  noFill();
  image(Tias, posXTias, posYTias, tamXTias, tamYTias);
  image (Tias2, posXTias2, posYTias2, tamXTias2, tamYTias2);
  image(Tias3, posXTias3, posYTias3, tamXTias3, tamYTias3);
}
