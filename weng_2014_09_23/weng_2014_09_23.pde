int x;
int y;
int vx;
int vy;
int ax;
int ay;

void setup() {
  size(600,600);
  x=0;
  y=0;
  vx=ax;
  vy=ay;
  ax=10;
  ay=6;
  background(255,255,255);
}

void draw() {
  colorMode(RGB);
  
  noStroke();
 // fill(map(x,0,width,0,255),map(y,0,height,0,255),map(y/2,0,width,0,255));
  colorMode(HSB);
  fill(frameCount%255, 160,180);
  ellipse(x,y,50,50);
  if(x>=width) {
    vx=-ax;
  }
  if(x<=0) {
    vx=5;
  }
  if(y>=height) {
    vy=-ay;
  }
  if(y<=0) {
    vy=2;
  }
  x=x+vx;
  y=y+vy;
}
