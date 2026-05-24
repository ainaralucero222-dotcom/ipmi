float posXBoton= 220;
float posYBoton= 300;
float tamXBoton= 200;
float tamYBoton= 100;

void BotonInicio() {
  image(ImagenBoton, posXBoton, posYBoton, tamXBoton, tamYBoton);
  if (mouseX > posXBoton && mouseX < posXBoton + tamXBoton && mouseY > posYBoton && mouseY < posYBoton+tamYBoton) { //delimito el area del boton y ahora tengo que decirle la acción
    tint(200, 200, 255);
  } else {
    noTint();
  }
  if (BotonActivado) {
    contador++;
    if (contador>0 && contador<60) {
      opacidad=map(contador, 0, 50, 0, 255);
    }
    if (contador>60) {
      contador=0;
      estado=2;
      BotonActivado= false;
    }
  }
}
void mousePressed() {
  if (estado==1) {
    if ( mouseX>posXBoton && mouseX<posXBoton+tamXBoton && mouseY> posYBoton && mouseY < posYBoton + tamYBoton) {
      BotonActivado=true;
      estado=2;
      FrameInicio=frameCount;
    } else if (estado==9){
    if (mouseX > posXBotonReinicio && mouseX < posXBotonReinicio + tamXBotonReinicio && mouseY > posYBotonReinicio && mouseY < posYBotonReinicio+tamYBotonReinicio)
    BotonReiniciar=true;
    estado=1;
    FrameInicio=frameCount;
    }
  }
}
   
