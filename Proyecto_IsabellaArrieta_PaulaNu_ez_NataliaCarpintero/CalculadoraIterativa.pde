 
 PFont fdigital1;
int n1;
void setupI() {
  
   iterativ();
  surface.setTitle("CALCULADORA ITERATIVA");
  //Boton volver
  fill(245, 234, 138); //Cambio color amarillo
  stroke(21, 21, 62); //Borde color
  rect(15, 15, 80, 30, 25); //Rectangulo con puntas redondas
  fill(21, 21, 62);
  textSize(20);
  textFont(fsubtitulo);
  text("Volver", 24, 39);


}


void iterativ() {
  background(52,62,95); //Color de fondo
  image(calc,25,200);  //Imagen de botones
  
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

public void MousePressedI(){
  if (mouseX>=561 & mouseX<=442 & mouseY>=415 & mouseY<=482) {
    n1=1;
    textSize(20);
    text("1",20,20);
  } 
}
//public void llamarMousePressed() {
//  mousePressed();
//}
