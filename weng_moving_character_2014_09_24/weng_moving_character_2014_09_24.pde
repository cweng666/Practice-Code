int x;
int y;

void setup() {
  size(600,600);
  noCursor();
 // 200 150
}

void draw() {
  background(160,230,230);
  x=mouseX;
  y=mouseY;

//head
  fill(198,166,245);
  ellipse(x,y,150,100);

//eyes
  fill(255,255,255);
  ellipse(x-50,y,25,25);
  ellipse(x+50,y,25,25);

  fill(0,0,0);
  ellipse(x-43.75,y,12.5,12.5);
  ellipse(x+43.75,y,12.5,12.5);

//mouth
  fill(252,46,87);
  triangle(x-12.5,y+10,x+12.5,y+10,x,y+30);

//body
  line(x,y+50,x,y+100);

//legs
  line(x,y+100,x-25,y+125);
  line(x,y+100,x+25,y+125);

//wings
  colorMode(HSB);
  fill(frameCount%255, 160,180);
  triangle(x,y+65,x+50,y+55,x+100,y+125);
  triangle(x,y+65,x-50,y+55,x-100,y+125);

//arms
  line(x,y+75,x+25,y+70);
  line(x+25,y+70,x+45,y+50);
  colorMode(RGB);
  fill(0,0,0);
  ellipse(x+45,y+50,7,7);

  line(x,y+75,x-25,y+70);
  line(x-25,y+70,x-45,y+50);
  fill(0,0,0);
  ellipse(x-45,y+50,7,7);

//halo
  fill(247,250,96);
  ellipse(x,y-56,60,25);
  fill(160,230,230);
  ellipse(x,y-56,40,12.5);
}

