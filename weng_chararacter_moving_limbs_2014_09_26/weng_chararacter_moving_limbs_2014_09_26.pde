int x;
int y;
int wingx;
int wingy;
int mouthy;
int eyex;
int eyey;
int armx;
int army;
int legx;
int vx;
int vy;

void setup() {
  size(600,600);
  noCursor();
  vx=2;
  vy=3;
 // 200 150
}

void draw() {
  background(160,230,230);

  if(x >= width) {
    vx=-vx;
  }
  
  if(x <= 0) {
    vx=2;
  }
  
  if(y >= height) {
    vy=-vy;
  }
  
  if(y <= 0) {
    vy=3;
  }

  x=x+vx;
  y=y+vy;
  
//wings
  colorMode(HSB);
  fill(frameCount%255, 160,180);
  triangle(x,y+65,x+50+wingx,y+55+wingy,x+100+wingx,y+125+wingy);
  triangle(x,y+65,x-50-wingx,y+55+wingy,x-100-wingx,y+125+wingy);
  
  wingx=0;
  wingy=0;
  
  if(mousePressed == true) {
    wingx=-20;
    wingy=-25;
  }
  
//head
  colorMode(RGB);
  fill(198,166,245);
  ellipse(x,y,150,100);

//eyes
  fill(255,255,255);
  ellipse(x-50,y,eyex+25,eyey+25);
  ellipse(x+50,y,eyex+25,eyey+25);

  fill(0,0,0);
  ellipse(x-43.75,y,12.5,12.5);
  ellipse(x+43.75,y,12.5,12.5);
  
  eyex=0;
  eyey=0;
  
  if(mousePressed == true) {
    eyex=-25;
    eyey=-25;
  }

//mouth
  fill(252,46,87);
  triangle(x-12.5,y+10,x+12.5,y+10,x,y+30+mouthy);
  
  mouthy=0;
  
  if(mousePressed == true) {
    mouthy=-20;
  }

//body
  line(x,y+50,x,y+100);

//legs
  line(x,y+100,x-25+legx,y+125);
  line(x,y+100,x+25-legx,y+125);
  
  legx=0;
  
  if(mousePressed == true) {
    legx=30;
  }

//arms
  line(x,y+75,x+25,y+70);
  line(x+25,y+70,x+45+armx,y+50+army);
  fill(0,0,0);
  ellipse(x+45+armx,y+50+army,7,7);

  line(x,y+75,x-25,y+70);
  line(x-25,y+70,x-45-armx,y+50+army);
  fill(0,0,0);
  ellipse(x-45-armx,y+50+army,7,7);
  
  armx=0;
  army=0;
  
  if(mousePressed == true) {
    armx=20;
    army=10;
  }

//halo
  fill(247,250,96);
  ellipse(x,y-56,60,25);
  fill(160,230,230);
  ellipse(x,y-56,40,12.5);
}

