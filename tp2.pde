

PImage[] imagenes = new PImage[3];
String[] textos = {
  "El arte electrónico\n es una forma de arte que  \n usa tecnología como parte \n esencial de la obra.",
  "Puede incluir pantallas,\n sensores, sonido digital \n o programación, \n y muchas veces permite la \n interacción del público.",
  "Además, reflexiona sobre \n temas actuales como la \n inteligencia artificial o \n la vida digital."
};


PFont fuente;

int estado = 0;             
int tiempoInicio;
int duracion = 5000;        

// Animación del texto
float yTexto = 120;
float alpha = 0;
float escala = 0.8;



void setup() {
  size(640, 480);

  imagenes[0] = loadImage("arte1.JPG");
  imagenes[1] = loadImage("arte2.JPG");
  imagenes[2] = loadImage("arte3.JPG");

  
  fuente = createFont("Arial", 28); 
  textFont(fuente);

 
  textAlign(LEFT, TOP);

  tiempoInicio = millis();
}



void draw() {
  background(20); 

  if (estado < 3) {
    
    image(imagenes[estado], 0, 0, width, height);

    // Animación del texto
    float t = millis() - tiempoInicio;
    alpha = map(t, 0, 1500, 0, 255);
    escala = map(t, 0, 2000, 0.8, 1.1);
    yTexto += 0.1; 

    fill(255, alpha);
    textSize(28 * escala);
    text(textos[estado], 80, yTexto); 

    
    if (t > duracion) {
      estado++;
      tiempoInicio = millis();
      yTexto = 120;
      alpha = 0;
      escala = 0.8;
    }

  } else {
    
    background(10);
    fill(255);
    textSize(24);
    text("Fin de la presentación", 60, 80);

    
    fill(100, 200, 255);
    rect(60, 140, 160, 40, 10);
    fill(0);
    textSize(18);
    text("Reiniciar", 85, 150);
  }
}



void mousePressed() {
  if (estado == 3) {
    estado = 0;
    tiempoInicio = millis();
    yTexto = 120;
    alpha = 0;
    escala = 0.8;
  }
}
