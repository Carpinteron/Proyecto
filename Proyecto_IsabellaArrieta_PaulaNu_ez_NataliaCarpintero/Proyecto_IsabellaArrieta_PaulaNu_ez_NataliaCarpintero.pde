import meter.*;

import processing.serial.*;

Serial Ardu;
Meter miseria;

String x, y;//coordenaadas
PFont ftitulo, fsubtitulo, fn;
int pag = 0;
PImage Bs;
PImage calc;
float opa=255, tam=0;
boolean dib=false;
float time=0, seg=40000;

//Variable para el tipo de letra
void setup()
{ //Intrucciones que se ejecutan al inicio
  calc=loadImage("calc.png");
  Bs=loadImage("/imagen/calc.png");
  surface.setTitle("MATHS-SOLVES");
  size(700, 600); //frame Ancho y alto de la ventana
  ftitulo=loadFont("Ravie-38.vlw"); //Le asigno este tipo de letra
  fsubtitulo=loadFont("Constantia-BoldItalic-20.vlw");
  fn=loadFont("MS-Gothic-20.vlw");
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
  fill(0);
  text("MATHS-SOLVES", 95, 134);
  fill(255);
  text("MATHS-SOLVES", 97, 130);

  textFont(fsubtitulo);
  textSize(26);
  fill(25, 40, 67);
  text("N I P creations", 262, 181);

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
  rect(403, 260, 200, 90, 25); //Rectangulo con puntas redondas
  fill(21, 21, 62);
  text("Calculadora \n  Recursiva", 424, 296);
  //Menu principal



  //PUNTERO
  if (dib) {
    if (opa>0) {
      fill(255, 208, 131, opa); //Circulo 1
      noStroke();
      ellipse(mouseX, mouseY, 50, 50);
      fill(214, 102, 11, opa); //Circulo 2 el que sera mas pequeño y crecera
      noStroke();
      ellipse(mouseX, mouseY, 10+tam, 10+tam);

      time+=1500; //tiempo en aumento
      opa=map(time, 0, seg, 255, 0); //transparencia
      tam=map(time, 0, seg, 0, 40);//tamaño

      if (time>=seg) { //si el tiempo en aumento llega al limite de segundos del efecto que pare y se reinicie
        dib=false;
        time=0;
        opa=255;
        tam=0;
      }
    }
    
   
    
  }


  if (pag==0) {
    setup();
  } else if (pag==1) { //Calculadora Iterativa
    setupI();
    MousePressedI();
  } else if (pag==2) { //Calculadora recursiva
    setupR();
    MousePressedR();
  }
}

//Cambiar "pagina" al presionar un boton
void mouseClicked() {

  if (pag == 0) {
    if (mouseX>=114 & mouseX<=314 & mouseY>=260 & mouseY<=350) {
      pag=1;
    } else if (mouseX>=456 & mouseX<=656 & mouseY>=260 & mouseY<=350) {
      pag=2;
    }
  } else if (pag == 1) {
    mouseClickedI();
  } else if (pag ==2) {
    mouseClickedR();
  }

  if (!dib) {
    dib=true;
    opa=255;
    time =0;
    tam=0;
  }
}
