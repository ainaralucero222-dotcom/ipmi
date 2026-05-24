PImage Hermanas;
float posXinicialM;
float posXHermanas;
float posXMarco, posYMarco, tamXMarco, tamYMarco;
float posYHermanas, tamXHermanas, tamYHermanas;
int velImagen, velMarcos;

void Pantalla2() {
  if (estado==2) {
    tint(168, 80, 203);
    image(Imagen1Fondo, 0, 0, width, height);
    noTint();
  }
  if (posXinicialM < posXMarco) {
    posXinicialM = posXinicialM + velMarcos;
  }
  if (posXHermanas < 10) {
    posXHermanas = posXHermanas + velImagen;
  }
  if (contador>= 500) {
    posYHermanas= posYHermanas+velImagen;
    posYMarco=posYMarco+velMarcos;
  }

  image(Hermanas, posXHermanas, posYHermanas, tamXHermanas, tamYHermanas);
  fill(168, 80, 203);
  rect(posXinicialM, posYMarco, tamXMarco, tamYMarco);
  fill (255);
  textFont(mifuente);
  textAlign(CENTER, CENTER);
  textSize(30);
  text("Agregar\n contenido\n de la historia", posXinicialM, posYMarco, tamXMarco, tamYMarco);
  noFill();
}
