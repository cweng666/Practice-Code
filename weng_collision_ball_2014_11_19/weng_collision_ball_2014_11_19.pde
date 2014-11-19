PVector loc, v, a;
float dia;

void setup() {
  size(displayWidth, displayHeight);
  colorMode(HSB,360,100,100,100);
  loc= new PVector(width/2, height/2);
  v= new PVector (3, 2);
  a = new PVector(0, 0);
  dia=40;
  noCursor();
}

void draw() {
  background(0);
  v.add(a);
  loc.add(v);

  if (dist(mouseX, mouseY, loc.x, loc.y) < dia/2) {
    fill(120,100,100,100);
  }
  else {
    fill(200,100,100,10);
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

