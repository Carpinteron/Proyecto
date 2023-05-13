float xr, yr, lado, esp;
String x, y;
PFont ftitulo, fsubtitulo, fn;

//Variable para el tipo de letra
void setup()
{ //Intrucciones que se ejecutan al inicio

  size(900, 500); //JFrame Ancho y alto de la ventana
  ftitulo=loadFont("Ravie-38.vlw"); //Le asigno este tipo de letra
  fsubtitulo=loadFont("Constantia-BoldItalic-20.vlw");
  fn=loadFont("MS-Gothic-20.vlw");
}
void draw() //intrucciones que se ejecutan repetidamente Como un ciclo
{
  background(75, 111, 148); //Colorea la ventana Azul Lindo

textFont(fn);
  //Coordenadas (Despues se quita)
  x=String.valueOf(mouseX);
  y=String.valueOf(mouseY);

  text ("x:"+x+" y: "+y, 20, 30);



  textFont(ftitulo);
  textSize(50);
  text("Calculadora", 216, 130);
  textFont(fsubtitulo);
  textSize(26);
  text("N I P creations", 303, 165);
}
