float x,y,vx,vy,ax,ay,dia;

void setup() {
  size(displayWidth,displayHeight);
  colorMode(HSB,360,100,100,100);
  dia=40;
  x=width/2;
  y=height/2;
  vx=0;
  vy=0;
  ax=random(-0.5,0.5);
  ay=random(-0.5,0.5);
  background(0);
}

void draw() {
  ax=random(-0.5,0.5);
  ay=random(-0.5,0.5);
  vx+=ax;
  vy+=ay;
  x+=vx;
  y+=vy;
  noStroke();
  fill(frameCount%360,100,100,map(x,0,width,0,50));
  ellipse(x,y,dia,dia);
  if(x+dia/2<0) {
    x=width+dia/2;
  }
  if(x-dia/2>width) {
    x=-dia/2;
  }
  if(y+dia/2<0) {
    y=height +dia/2;
  }
  if(y-dia/2>height) {
    y=-dia/2;
  }
}
