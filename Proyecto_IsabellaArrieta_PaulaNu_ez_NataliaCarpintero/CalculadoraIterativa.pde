
PFont fdigital1;
int n1;
void setupI() {

  iterativ();
  surface.setTitle("CALCULADORA ITERATIVA");
  //Boton volver
  fill(245, 234, 138); //Cambio color amarillo
  stroke(21, 21, 62); //Borde color
  rect(15, 15, 80, 30, 25); //Rectangulo con puntas redondas
  fill(21, 21, 62); // Color de texto
  textSize(20);
  textFont(fsubtitulo);
  text("Volver", 24, 39);

  textSize(40);
  text("Iterativa", 56, 250);
}


void iterativ() {



  background(52, 62, 95); //Color de fondo
  image(calc, 25, 200);  //Imagen de botones

  //cuadro pantalla numeros
  fill(#D7D5E0);
  noStroke();
  rect(9, 9, 683, 180, 25); //Rectangulo con puntas redondas



  //coordenadas mientras mientras
  fdigital1 = createFont("Calculator.ttf", 32);
  textFont(fdigital1);
  x=String.valueOf(mouseX);
  y=String.valueOf(mouseY);
  fill(0);
  text ("x:"+x+" y: "+y, 17, 72);
}

//void drawButton(int x, int y, int ancho, int altura, int i, int j) {
//  if (mouseX>=x && mouseX<=x+ancho && mouseY>=y && mouseY<=y+altura) {
//  }
//}

void MousePressedI() {
  if (mouseX>=15 & mouseX<=95 & mouseY>=15 & mouseY<=45) {
    pag = 0; // volver a menu principal
  }
  int n = 6; // Número de filas de botones
  int m = 4; // Número de columnas de botones
  int ancho = 97; // Ancho de cada botón
  int altura = 68; // Alto de cada botón
  int startX = 38; // Coordenada x inicial del primer botón
  int startY = 262; // Coordenada y inicial del primer botón
  for (int i = 0; i < m; i++) {
    for (int j = 0; j < n; j++) {

      int x = startX + i * (ancho + 5);
      int y = startY + j * (altura + 5);

      if (mouseX>=x && mouseX<=x+ancho && mouseY>=y && mouseY<=y+altura) {
        botones(i, j);
      }
    }
  }
}


void botones(int i, int j) {
  if(mousePressed){
   switch (i) {
    case 0:
      switch (j) {
        case 0: //PRUEBA
          pag=0;// Acciones para el botón en la posición [0][0]
          break;
        case 1: //PRUEBA
          pag=2;// Acciones para el botón en la posición [0][1] ESTA MAL EL ORDEN (pero funciona)
          break;
        case 2:
          // Acciones para el botón en la posición [0][2]
          break;
        // Continuar con los demás casos
      }
      break;
    case 1:
      switch (j) {
        case 0:
          // Acciones para el botón en la posición [1][0]
          break;
        case 1:
          // Acciones para el botón en la posición [1][1]
          break;
        case 2:
          // Acciones para el botón en la posición [1][2]
          break;
        // Continuar con los demás casos
      }
      break;
    // Continuar con los demás casos
  }
  }
}
