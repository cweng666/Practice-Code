PVector loc,v,a;
float dia;

void setup() {
  size(displayWidth,displayHeight);
  colorMode(HSB,360,100,100,100);
  dia=40;
  loc=new PVector(width/2,height/2);
  v = new PVector(0,0);
  a = new PVector(random(-0.5,0.5),random(-0.5,0.5));
  background(0);
}

void draw() {
  a.set(random(-0.5,0.5),random(-0.5,0.5));
  v.add(a);
  v.limit(10);
  loc.add(v);
  noStroke();
  fill(frameCount%360,100,100,map(loc.x,0,width,0,50));
  ellipse(loc.x,loc.y,dia,dia);
  if(loc.x+dia/2<0) {
    loc.x=width+dia/2;
  }
  if(loc.x-dia/2>width) {
    loc.x=-dia/2;
  }
  if(loc.y+dia/2<0) {
    loc.y=height +dia/2;
  }
  if(loc.y-dia/2>height) {
    loc.y=-dia/2;
  }
}
