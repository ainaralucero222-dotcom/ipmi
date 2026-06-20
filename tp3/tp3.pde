//Ainara Lucero, comisión 1
//https://youtu.be/FFUB9eVWWxc

PImage Imagen;
int columnas;
int filas;
int tamCelda;
boolean Interaccion;

void setup() {
  size(800, 400);
  Imagen=loadImage("10.jpg");
  filas=6;
  columnas=6;
  tamCelda= 400/ columnas;
  Interaccion= false;
}
void draw() {
  background(255);
  image(Imagen, 0, 0 );
  pushMatrix();
  translate(400, 0);// estoy trasladando la grilla a la mitad derecha
  grilla(tamCelda, columnas, filas, mouseX-400, mouseY, Interaccion);
  popMatrix();
}


void grilla(float tamCelda, int cantColumnas, int cantFilas, float mx, float my, boolean tecla) {
  for (int i=0; i < cantColumnas; i++) {
    for (int j=0; j < cantFilas; j++) {
      // Acá estoy calculando el centro de la celda actual
      float px = tamCelda * i + tamCelda / 2;
      float py = tamCelda * j + tamCelda / 2;

      // Enviamos la posición de la celda y los datos del mouse a cuadrados()
      cuadrados(px, py, tamCelda, mx, my, tecla);
    }
  }
}


void cuadrados(float posX, float posY, float tamBase, float mx, float my, boolean interactivo) {//el tamBase es el tamaño fijo de la celda que viene desde la grilla.
  noFill();
  stroke(0);
  strokeWeight(3);
  float tamVariable = tamBase; //el tamVariable es el tamaño cambiante del cuadrado que se está dibujando en ese microsegundo dentro del bucle.
  float mapeo=0;

  if (mx +400 > width / 2) {// si mi mouse esta a mas de 400 pixeles borde izquierdo, entonces calcula el angulo de rotación
    mapeo = calcularAnguloDeRotacion(posX, posY, mx, my);  // enviamos la posición de la celda y la del mouse
  }
  
  for (int i = 0; i < 5; i++) {
    if (interactivo) { // estoy indicando que si se cumple mi condicion,  mis cuadrados se dibujen desde el centro y tengan interaccion
      fill(random(255), random(255), random(255)); 
      pushMatrix();
      translate(posX, posY);
      rotate(radians(mapeo * i));
      rectMode(CENTER);
      rect(0, 0, tamVariable, tamVariable);
      popMatrix();
    } else { // estoy indicando que si no se cumple la condicion, entonces mis cuatrados internos, se dibujen desde el la esquina superior izquierda
      float esquinaX = posX - tamBase/2;
      float esquinaY = posY - tamBase/2;
      rectMode(CORNER);
      rect(esquinaX, esquinaY, tamVariable, tamVariable);
    }
    tamVariable= tamVariable * 0.85; // este porcentaje me varia el tamaño mis cuadrados internos
  }
}

//Creo una funcion propia que calcule mi distancia entre la celda y el mouse
float calcularAnguloDeRotacion(float x1, float y1, float x2, float y2) {
  float distancia= dist(x1, y1, x2, y2);
  float resultado = map(distancia, 0, 400, 360, 0);//con la funcion map() indicamos que si la distancia que ya está calculada, es 0 entonces los cuadrados internos se mueven 360grados y si es mayor, entonces que no se muevan nada
  return resultado;
}

void keyPressed() {
  if (key == 'i' || key == 'I') {
    Interaccion = true; // Se activa el efecto interactivo
  }
  if (key == 'r' || key == 'R') {
    Interaccion = false; // Se reinicia         y vuelve al estado inicial
  }
}
