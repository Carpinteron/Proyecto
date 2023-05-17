 
void setupI() {
  iterativ();
  surface.setTitle("CALCULADORA ITERATIVA");
  fill(245, 234, 138); //Cambio color amarillo
  stroke(21, 21, 62); //Borde color
  rect(15, 15, 80, 30, 25); //Rectangulo con puntas redondas
  fill(21, 21, 62);
  textSize(20);
  textFont(fsubtitulo);
  text("Volver", 24, 39);
}
 PFont fdigital1;

void iterativ() {
  background(52,62,95);
  
  
    //cuadro pantalla numeros
  fill(#D7D5E0);
  noStroke();
  rect(9, 9, 780, 180, 25); //Rectangulo con puntas redondas
  
  fdigital1 = createFont("Calculator.ttf", 32);
  textFont(fdigital1);
  //coordenadas mientras mientras
  x=String.valueOf(mouseX);
  y=String.valueOf(mouseY);
  fill(0);
  text ("x:"+x+" y: "+y, 200, 30);
}
public void llamarMousePressed() {
  mousePressed();
}
