// tp3 
// comicion 3
// santino zinani
//https://youtu.be/jMHSAyYLW_M
PImage ajedrez;
void setup() {
  size (800, 400);
  background (255);
  
  ajedrez = loadImage ("ajedrez.png");
}
void draw () {
  image(ajedrez, 0, 0, 400, 400);
 cuadrados(20,10); 
}
void keyPressed () { 
  if (key =='s') {
    background (random(255), random(255), random(255));
  }
  if (key =='r') {
    background (255);
  }
}
void cuadrados (int sis, int sus) {
  sis = 20;
  sus = width/sis;
for (int sas =10; sas<sis; sas++) {
    //filas
    for (int ses=0; ses<sis; ses++) {
      //columnas
      if ((sas + ses) % 2 == 0) {
  fill(0);
  rect(sas * sus, ses * sus, sus, sus);

  float d = dist(mouseX, mouseY, sas * sus + sus/2, ses * sus + sus/2);
  if (d < sus *3) {
    fill(255,0,0);
  } else {
    fill(255);
  }
  ellipse(sas * sus + sus/2, ses * sus + sus/2, sus/2, sus/2);
} else {
  float d = dist(mouseX, mouseY, sas * sus + sus/2, ses * sus + sus/2);
  if (d < sus *3) {
    fill(0,255,0);
  } else {
    fill(0);
  }
  ellipse(sas * sus + sus/2, ses * sus + sus/2, sus/2, sus/2);
}
    }
  }
}
