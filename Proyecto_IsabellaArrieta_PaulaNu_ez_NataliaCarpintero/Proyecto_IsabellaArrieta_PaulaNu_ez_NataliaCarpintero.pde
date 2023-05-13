float xr, yr, lado, esp;
String x,y;

void setup() { //Intrucciones que se ejecutan al inicio

  size(900, 500); //JFrame Ancho y alto de la ventana
  textSize(30);
 
  
 
}
void draw() //intrucciones que se ejecutan repetidamente Como un ciclo
{
  background(75, 111, 148); //Colorea la ventana Azul Lindo
  
  text("Calculadora",216,130);
  
  
  
  
  
  //Coordenadas (Despues se quita) 
  x=String.valueOf(mouseX);
  y=String.valueOf(mouseY);
  
  text ("x:"+x+" y: "+y,20,30);
  
}
