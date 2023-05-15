 
void setupI() {
  iterativ();
  surface.setTitle("CALCULADORA ITERATIVA");
  fill(245, 234, 138); //Cambio color amarillo
  stroke(21, 21, 62); //Borde color
  rect(15, 15, 80, 30, 25); //Rectangulo con puntas redondas
  fill(21, 21, 62);
  textSize(20);
  text("Volver", 24, 39);
}
void iterativ() {
  background(55, 11, 148);
  x=String.valueOf(mouseX);
  y=String.valueOf(mouseY);
  fill(255);
  text ("x:"+x+" y: "+y, 200, 30);
}
public void llamarMousePressed() {
  mousePressed();
}
