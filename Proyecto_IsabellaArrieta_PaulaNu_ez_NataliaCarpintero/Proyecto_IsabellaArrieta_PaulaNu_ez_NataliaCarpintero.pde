
String x, y;//coordenaadas
PFont ftitulo, fsubtitulo, fn;
int valorprueba, pag = 0;

//Variable para el tipo de letra
void setup()
{ //Intrucciones que se ejecutan al inicio
  surface.setTitle("MATHS-SOLVES");
  size(800, 450); //JFrame Ancho y alto de la ventana
  ftitulo=loadFont("Ravie-38.vlw"); //Le asigno este tipo de letra
  fsubtitulo=loadFont("Constantia-BoldItalic-20.vlw");
  fn=loadFont("MS-Gothic-20.vlw");
  valorprueba=0;
  pag=0;
}
void draw() //intrucciones que se ejecutan repetidamente Como un ciclo
{

  background(75, 111, 148); //Colorea la ventana Azul Lindo

  textFont(fn);
  //Coordenadas (Despues se quita)
  x=String.valueOf(mouseX);
  y=String.valueOf(mouseY);
  fill(255);
  text ("x:"+x+" y: "+y, 20, 30);



  textFont(ftitulo);
  textSize(50);
  text("MATHS-SOLVES", 158, 130);

  textFont(fsubtitulo);
  textSize(26);
  fill(25, 40, 67);
  text("N I P creations", 318, 165);

  //Crear Botones

  //Boton para Calculadora Iterativa
  fill(245, 234, 138); //Cambio color amarillo
  stroke(21, 21, 62); //Borde color

  rect(114, 260, 200, 90, 25); //Rectangulo con puntas redondas
  fill(21, 21, 62);
  text("Calculadora \n   Iterativa", 138, 296);

  //Boton para calculadora recursiva
  fill(245, 234, 138); //Cambio color amarillo
  stroke(21, 21, 62); //Borde color
  strokeWeight(5); //Borde grosor
  rect(456, 260, 200, 90, 25); //Rectangulo con puntas redondas
  fill(21, 21, 62);
  text("Calculadora \n  Recursiva", 486, 296);

  println(valorprueba);

  //Menu principal
  if (pag==0) {
    setup();
  } else if (pag==1) {
   setupI();
  } else if (pag==2) {
    setupR();
  }
}


void mousePressed () {
  if (mouseX>=114 & mouseX<=314 & mouseY>=260 & mouseY<=350) {
   pag=1;
  } else if (mouseX>=456 & mouseX<=656 & mouseY>=260 & mouseY<=350) {
    pag=2;
  } else if (mouseX>=15 & mouseX<=95 & mouseY>=15 & mouseY<=45) {
    pag = 0;
    }
}
