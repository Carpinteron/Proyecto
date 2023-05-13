float xr, yr, lado, esp;
String x,y;

void setup() { //Intrucciones que se ejecutan al inicio

  size(800, 500); //JFrame Ancho y alto de la ventana
  textSize(30);
  
  
 
}
void draw() //intrucciones que se ejecutan repetidamente
{
   background(75, 111, 148); //Colorea la ventana Azul Lindo
  x=String.valueOf(mouseX);
  y=String.valueOf(mouseY);
  
  text ("x:"+x+" y: "+y,20,30);
}
