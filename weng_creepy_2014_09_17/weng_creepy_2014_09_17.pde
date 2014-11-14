int x;
int y;

void setup() {
  size(600,600);
  x=0;
  y=0;
}

void draw() {
  background(22,237,map(width-x,0,width,0,255));
  frameRate(20);
  noStroke();
  fill(22,map(y,0,height,0,255),237);
  ellipse(width/2-100,height/2,100,1/sin(x));
  fill(22,map(y,0,height,0,255),237);
  ellipse(width/2+100,height/2,100,1/sin(x));
  stroke(255,0,0);
  strokeWeight(x);
  line(width/2-x,height/2+100,width/2+x,height/2+100);
  x=x+1;
  y=y+1;
}
