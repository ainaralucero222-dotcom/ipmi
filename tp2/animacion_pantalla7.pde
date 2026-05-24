PImage Zombie, Zombie2, Hermanas2;
float posXMarco6, posYMarco6, tamXMarco6, tamYMarco6;
float posXZ, posYZ, tamXZ, tamYZ;
float posXZ2, posYZ2, tamXZ2, tamYZ2;
float posXH2, posYH2, tamXH2, tamYH2;

void Pantalla7(){
 if (estado==7) {
    tint(168, 80, 203);
    image(Imagen1Fondo, 0, 0, width, height);
    noTint();
  }
  if (contador<34900){
    if (posXZ<3){
  posXZ=posXZ+velImagen;
  }else {
  posXZ=3;
  }
  if (posXZ2>400){
  posXZ2=posXZ2-velImagen;
  } else{
  posXZ2=400;
  }
  if (posXH2<3){
  posXH2=posXH2+velImagen; 
  }else{
  posXH2=3;
  }
 } else {
 posXZ= posXZ-velImagen;
 posXZ2=posXZ2+velImagen;
 posXH2=posXH2-velImagen;
 posXMarco6=posXMarco6+velImagen;
 }
  
  fill(168, 80, 203);
rect(posXMarco6, posYMarco6, tamXMarco6, tamYMarco6);
fill (255);
textFont(mifuente);
textAlign(CENTER, CENTER);
textSize(30);
text("Agregar\n contenido\n de la histria", posXMarco6, posYMarco6, tamXMarco6, tamYMarco6);
noFill();
image(Zombie, posXZ, posYZ, tamXZ, tamYZ);
image(Zombie2, posXZ2, posYZ2, tamXZ2, tamYZ2);
image(Hermanas2, posXH2, posYH2, tamXH2, tamYH2);
}
