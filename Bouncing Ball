float x, y, vx, vy, ax, ay;
int dia;

void setup() {
  size(displayWidth, displayHeight);
  colorMode(HSB,360,100,100,100);
  x=width/2;
  y=0.2*height;
  dia=40;
  vx=0;
  vy=1;
  ax=0;
  ay=2;
}

void draw() {
  background(0);
  fill(map(y,0,height,0,360),100,100);
  ellipse(x, y, dia, dia);
  vx+=ax;
  vy+=ay;
  x+=vx;
  y+=vy;
  if(y+dia/2 > height) {
    y=height-dia/2;
    vy*=-1;
  }
}
