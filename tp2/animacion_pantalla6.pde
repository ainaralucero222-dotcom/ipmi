PImage JimmyAngelov, JimmyGilly;
float posXJA, posYJA, tamXJA, tamYJA;
float posXJG, posYJG, tamXJG, tamYJG;
float posXMarco5, posYMarco5, tamXMarco5, tamYMarco5;

void Pantalla6() {
  if (estado==6) {
    tint(168, 80, 203);
    image(Imagen1Fondo, 0, 0, width, height);
    noTint();
  }
  if (contador<2900) {
    if (posYJA>300) {
      posYJA=posYJA-velImagen;
    } else {
      posYJA=300;
    }
    if (posXJG<3) {
      posXJG=posXJG+velImagen;
    } else {
      posXJG=3;
    } } else {  //Salida
    posYJA   = posYJA    + velImagen;
    posXJG  = posXJG   - velImagen;
    posYMarco5  = posYMarco5 + 10;
    }
  
fill(168, 80, 203);
rect(posXMarco5, posYMarco5, tamXMarco5, tamYMarco5);
fill (255);
textFont(mifuente);
textAlign(CENTER, CENTER);
textSize(30);
text("Agregar\n contenido\n de la histria", posXMarco5, posYMarco5, tamXMarco5, tamYMarco5);
noFill();
image(JimmyAngelov, posXJA, posYJA, tamXJA, tamYJA);
image(JimmyGilly, posXJG, posYJG, tamXJG, tamYJG);
}
