PVector loc, v, a, mouse;
float dia;

void setup() {
  size(displayWidth, displayHeight);
  colorMode(HSB,360,100,100,100);
  loc= new PVector(width/2, height/2);
  v= new PVector (random(-2,4),random(-4,4));
  a = new PVector(0, 0);
  mouse = new PVector();
  dia=40;
  noCursor();
}

void draw() {
  background(0);
  v.add(a);
  loc.add(v);
  mouse.set(mouseX,mouseY);

  if (loc.dist(mouse) < dia/2) {
    fill(120,100,100,100);
    if(loc.x < mouse.x){
      v.x = -abs(v.x);
    }
    else {
      v.x = abs(v.x);
    }
    if(loc.y < mouse.y) {
      v.y = -abs(v.y);
    }
    else {
      v.y = abs(v.y);
    }
  }
  else {
    fill(200,100,100,40);
  }

    ellipse(loc.x, loc.y, dia, dia);

    if (loc.x+dia/2>width || loc.x-dia/2<0) {
      v.x*=-1;
    }
    if (loc.y+dia/2>height || loc.y-dia/2<0) {
      v.y*=-1;
    }

    ellipse(mouseX, mouseY, 10, 10);
  }

