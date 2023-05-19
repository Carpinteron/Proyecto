
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
  if (mousePressed) {
    if (mouseX>=12 & mouseX<=97 & mouseY>=12 & mouseY<=45) {
      pag = 0; // volver a menu principal
    } else // PRIMERA LINEA (se hace por separado al resto debido a las proporciones de los botones
    if (mouseX>=245 && mouseX<=348 && mouseY>=210 && mouseY<=257) {
      println("COMBINATORIA");
    } else if (mouseX>=355 && mouseX<=457 && mouseY>=210 && mouseY<=259) {
      println("SENO");
    } else if (mouseX>=461 && mouseX<=556 && mouseY>=211 && mouseY<=261) {
      println("COSENO");
    } else if (mouseX>=559 && mouseX<=655 && mouseY>=210 && mouseY<=260) {
      println("TANGENTE");
    }
  }
  int n = 6; // Número de filas de botones
  int m = 4; // Número de columnas de botones
  int ancho = 97; // Ancho de cada botón
  int altura = 68; // Alto de cada botón
  int startX = 38; // Coordenada x inicial del primer botón
  int startY = 262; // Coordenada y inicial del primer botón
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < m; j++) {

      int x = startX + i * (ancho + 5);
      int y = startY + j * (altura + 5);

      if (mouseX>=x && mouseX<=x+ancho && mouseY>=y && mouseY<=y+altura) {
        botones(i, j);
      }
    }
  }
}


void botones(int i, int j) { // Se ejecuta al presionar los botones
  if (mousePressed) {
    switch (j) { // CAMBIA DE ACUERDO CON LA FILA DE BOTONES
    case 0: // FILA 0 DE BOTONES
      switch (i) { // CAMBIA DE ACUERDO CON LA COLUMNA DE BOTONES
      case 0:
        println("BORRAR TODO");
        break;
      case 1:
        println("SUMA");
        break;
      case 2:
        println("RESTA");
        break;
      case 3:
        println("9");
        break;
      case 4:
        println("8");
        break;
      case 5:
        println("7");
        break;
      }
      break;
    case 1: // FILA 1 DE BOTONES
      switch (i) {
      case 0:
        println("BORRAR"); // Acciones para el botón en la posición [1][0]
        break;
      case 1:
        println("MULTIPLICACION");// Acciones para el botón en la posición [1][1]
        break;
      case 2:
        println("DIVISION");// Acciones para el botón en la posición [1][2]
        break;
      case 3:
        println("6");
        break;
      case 4:
        println("5");
        break;
      case 5:
        println("4");
        break;
      }
      break;
    case 2: // FILA 2 DE BOTONES
      switch (i) {
      case 0:
        println("PI");
        break;
      case 1:
        println("DIV");
        break;
      case 2:
        println("MOD");
        break;
      case 3:
        println("3");
        break;
      case 4:
        println("2");
        break;
      case 5:
        println("1");
        break;
      }
      break;
    case 3: // FILA 3 DE BOTONES
      switch (i) {
      case 0:
        println("EULER");
        break;
      case 1:
        println("POTENCIA");
        break;
      case 2:
        println("FACTORIAL");
        break;
      case 3:
        println("COMA");
        break;
      case 4:
        println("0");
        break;
      case 5:
        println("IGUAL");
        break;
      }
      break;
    }
  }
}
