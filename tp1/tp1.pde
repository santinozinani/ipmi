PImage img;
void setup()
{
size (800,400);
img = loadImage("autorretrato.png");
image(img,0,0,400,400);
}
void mouseClicked() {
  println("X: " + mouseX + " | Y: " + mouseY);
}

void draw(){
  image(img, 0,0, 400, 400); 
  fill(0);
ellipse(600,350,280,180);
fill(240,208,140);
rect(540, 180, 120, 220);
fill(77,55,5);
ellipse (600,150,200,220);
fill(240,208,140);
quad(490,149,480,182,500,214,570,200);
quad(710,149,720,182,700,214,630,200);
ellipse (600,180,180,210);
quad(600,160,580,210,600,220,620,210);
fill (0);
rect(400,373,400,100);
quad(400,373,530,300,670,300,800,373);
fill (240,208,140);
triangle(530,300,670,300,600,380);
fill(255);
ellipse (560,160,50,25);
ellipse (640,160,50,25);
fill(0);
ellipse (560,160,25,20);
ellipse (640,160,25,20);
fill (77,55,5);
quad (585,140, 580,130, 550,120, 535,135);
quad (615,140, 620,130, 650,120, 665,135);
ellipse(630,60,150,100);
ellipse(540,70,100,120);
noFill();
arc(600, 225, 70, 70, 0, PI);
}
  
