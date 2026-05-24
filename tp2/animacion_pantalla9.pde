float posXBotonReinicio= 220;
float posYBotonReinicio= 300;
float tamXBotonReinicio= 200;
float tamYBotonReinicio= 100;

void BotonReinicio(){
if (estado==9) {
    tint(168, 80, 203);
    image(Imagen1Fondo, 0, 0, width, height);
    noTint();
  }
  image(ImagenBotonReinicio, posXBotonReinicio, posYBotonReinicio, tamXBotonReinicio, tamYBotonReinicio);
  if (mouseX > posXBotonReinicio && mouseX < posXBotonReinicio + tamXBotonReinicio && mouseY > posYBotonReinicio && mouseY < posYBotonReinicio+tamYBotonReinicio) { 
    tint(200, 200, 255);
  } else {
    noTint();
  }
  if (BotonReiniciar){
   estado=1;
  FrameInicio=frameCount;
  }
   
}
