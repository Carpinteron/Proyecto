void setupR(){
  recur();
  surface.setTitle("CALCULADORA RECURSIVA");
  
 
  //Boton volver
  fill(245, 234, 138); //Cambio color amarillo
  stroke(21, 21, 62); //Borde color
  rect(15, 15, 80, 30, 25); //Rectangulo con puntas redondas
  fill(21, 21, 62);
  textSize(20);
  text("Volver", 24, 39);
  
  
}
void recur(){
  
  background(60,52,95);

   //cuadro pantalla numeros
  fill(#DCD5E0);
  noStroke();
  rect(9, 9, 780, 180, 25); //Rectangulo con puntas redondas
  
  
  //coordenadas
  x=String.valueOf(mouseX);
  y=String.valueOf(mouseY);
  fill(0);
  text ("x:"+x+" y: "+y, 200, 30);
  
  
  
}
