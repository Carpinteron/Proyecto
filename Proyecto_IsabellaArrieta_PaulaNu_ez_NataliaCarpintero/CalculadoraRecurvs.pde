
void setupR(){
  recur();
  surface.setTitle("CALCULADORA RECURSIVA");
  
 
  //Boton volver
  fill(245, 234, 138); //Cambio color amarillo
  stroke(21, 21, 62); //Borde color
  rect(15, 15, 80, 30, 25); //Rectangulo con puntas redondas
  fill(21, 21, 62); // Color de texto
  textSize(20);
  textFont(fsubtitulo);
  text("Volver", 24, 39);
  
  textSize(40);
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
}

//public void llamarMousePressed1() {
//  mousePressed();
//}
