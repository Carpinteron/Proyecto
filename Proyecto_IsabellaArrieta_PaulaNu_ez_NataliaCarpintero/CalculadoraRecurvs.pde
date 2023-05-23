int num;
void setupR(){
  recur();
  surface.setTitle("CALCULADORA RECURSIVA");
  
  miseria=new Serial(this,Serial.list()[0],9600); //conectar arduino
  //Boton volver
  fill(245, 234, 138); //Cambio color amarillo
  stroke(21, 21, 62); //Borde color
  rect(15, 15, 80, 30, 25); //Rectangulo con puntas redondas
  fill(21, 21, 62); // Color de texto
  textSize(20);
  textFont(fsubtitulo);
  text("Volver", 24, 39);
  
  textSize(40);
  fill(245, 234, 138);
  text("Recursiva",47,250);
  
}
void recur(){
  
  background(60,52,95);
  image(calc,25,200); 
  

   //cuadro pantalla numeros
  fill(#DCD5E0);
  noStroke();
   rect(9, 9, 683, 180, 25); //Rectangulo con puntas redondas
  //coordenadas
  
  fdigital1 = createFont("Calculator.ttf", 32);
  textFont(fdigital1);
  x=String.valueOf(mouseX);
  y=String.valueOf(mouseY);
  fill(0);
  text ("x:"+x+" y: "+y, 17, 72);
  
  //Imprimir numeros
   pushStyle();
  fill(0);
  textAlign(LEFT);
  textFont(fdigital1);
  textSize(40);
  text(numeroI, 171, 63);
  textAlign(RIGHT);
  textSize(65);
  text(res, 657, 158);
  popStyle();
  
   if (dib) {
    if (opa>0) {
      fill(255, 131, 235, opa);
      noStroke();
      ellipse(mouseX, mouseY, 60, 60);
      time+=1500;
      opa=map(time, 0, seg, 255, 0);
     
      if (time>=seg) {
        dib=false;
        time=0;
        opa=255;
      }
    }
  }
}

void MousePressedR() {
  
  int n = 6; // Número de filas de botones
  int m = 4; // Número de columnas de botones
  int ancho = 98; // Ancho de cada botón
  int altura = 68; // Alto de cada botón
  int startX = 38; // Coordenada x inicial del primer botón
  int startY = 262; // Coordenada y inicial del primer botón
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < m; j++) {

      int x = startX + i * (ancho + 7);
      int y = startY + j * (altura + 7);

      if (mouseX>=x && mouseX<=x+ancho && mouseY>=y && mouseY<=y+altura) {
        botonesR(i, j);
      }
    }
  }
}


void botonesR(int i, int j) { // Se ejecuta al presionar los botones
  if (mousePressed) {
    switch (j) { // CAMBIA DE ACUERDO CON LA FILA DE BOTONES
    case 0: // FILA 0 DE BOTONES
      switch (i) { // CAMBIA DE ACUERDO CON LA COLUMNA DE BOTONES
      case 0:
        println("BORRAR TODO");
        numeroI = "";
        resultado = resultado * 0;
        res = String.valueOf(resultado);
        break;
      case 1:
        println("SUMA");
        numeroI += "+";
        operador = "+";
        break;
      case 2:
        println("RESTA");
        numeroI += "-";
        operador = "-";
        break;
      case 3:
        println("9");
        numeroI += "9";
        break;
      case 4:
        println("8");
        numeroI += "8";
        break;
      case 5:
        println("7");
        numeroI += "7";
        break;
      }
      break;
    case 1: // FILA 1 DE BOTONES
      switch (i) {
      case 0:
        println("BORRAR"); // Acciones para el botón en la posición [1][0]
        if (!numeroI.isEmpty()) {
          numeroI = numeroI.substring(0, numeroI.length() - 1); // Elimina el último dígito del número actual
        }
        break;
      case 1:
        println("MULTIPLICACION");// Acciones para el botón en la posición [1][1]
        numeroI += "*";
        operador = "*";
        break;
      case 2:
        println("DIVISION");// Acciones para el botón en la posición [1][2]
        numeroI += "/";
        operador = "/";
        break;
      case 3:
        println("6");
        numeroI += "6";
        break;
      case 4:
        println("5");
        numeroI += "5";
        break;
      case 5:
        println("4");
        numeroI += "4";
        break;
      }
      break;
    case 2: // FILA 2 DE BOTONES
      switch (i) {
      case 0:
        println("PI");
        numeroI += "π";
        break;
      case 1:
        println("DIV");
        break;
      case 2:
        println("MOD");
        numeroI += "%";
        operador = "%";
        break;
      case 3:
        println("3");
        numeroI += "3";
        break;
      case 4:
        println("2");
        numeroI += "2";
        break;
      case 5:
        println("1");
        numeroI += "1";
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
        //numeroI=fac(numeroI);
        break;
      case 3:
        println("COMA");
        numeroI += ".";
        break;
      case 4:
        println("0");
        numeroI += "0";
        break;
      case 5:
        println("IGUAL");
        println(numeroI);

        calcularResultado();
        res = String.valueOf(resultado);

        
        break;
      }
      break;
    }
    mousePressed = false;
  }
}


void mouseClickedR() {
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
  
    if(!dib){
    dib=true;
    opa=255;
    time =0;
  }
}

void calcularResultadoRe() {

 
  String[] numeros = numeroI.split("[+\\-*/^!]+");
  String[] operadores = numeroI.split("\\d+");

  float[] operandos = new float[numeros.length];

  for (int i = 0; i < numeros.length; i++) {
    operandos[i] = Float.parseFloat(numeros[i]);
  }

  resultado = operandos[0];

  for (int i = 1; i < operandos.length; i++) {
    String operador = operadores[i];

    switch (operador) {
    case "+":
      resultado = resultado + operandos[i];
      break;
    case "-":
      resultado = resultado - operandos[i];
      break;
    case "*":
      resultado = resultado * operandos[i];
      break;
    case "/":
      resultado = resultado / operandos[i];
      break;
    case "^":
      //resultado = pow(resultado, operandos[i]);
      break;
    case "!":
      //resultado = fac(resultado);
      break;
    }
  }
}

int suma(int num, int j, int i){
  if(j==3 &i==5){
    return num;
  }else{
    return num+suma(num,j,i);
  }
  
}
int fac(int n){
  if(n==1){
    return 1;
    
  }else{
    return n*fac(n-1);
  }
}
