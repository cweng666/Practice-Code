PVector loc, v, a, loc2, v2, a2;
float dia, dia2;

void setup() {
  size(displayWidth, displayHeight);
  colorMode(HSB, 360, 100, 100, 100);
  loc= new PVector(width/2, height/2);
  v= new PVector (random(-2, 4), random(-4, 4));
  a = new PVector(0, 0);
  loc2= new PVector(width*0.8,height*0.8);
  v2 = new PVector(random(-1,2),random(-1,1));
  a2 = new PVector(0,0);
  
//  mouse = new PVector();
  dia=40;
  dia2=20;
  noCursor();
}

void draw() {
  background(0);
  v.add(a);
  loc.add(v);
  v2.add(a2);
  loc2.add(v2);
//  mouse.set(mouseX, mouseY);

//  if (loc.dist(mouse) < dia/2) {
//    fill(120, 100, 100, 100);
//    if (loc.x < mouse.x) {
//      v.x = -abs(v.x);
//    } else {
//      v.x = abs(v.x);
//    }
//    if (loc.y < mouse.y) {
//      v.y = -abs(v.y);
//    } else {
//      v.y = abs(v.y);
//    }
//  } else {
//    fill(200, 100, 100, 40);
//  }

if (loc.dist(loc2) < dia/2 + dia2/2) {
    if (loc.x < loc2.x) {
      v.x = -abs(v.x);
      v2.x = abs(v2.x);
    } else {
      v.x = abs(v.x);
      v2.x = -abs(v2.x);
    }
    if (loc.y < loc2.y) {
      v.y = -abs(v.y);
      v2.y = abs(v2.y);
    } else {
      v.y = abs(v.y);
      v2.y = -abs(v2.y);
    }
  }

  ellipse(loc.x, loc.y, dia, dia);

  if (loc.x+dia/2>width || loc.x-dia/2<0) {
    v.x*=-1;
  }
  if (loc.y+dia/2>height || loc.y-dia/2<0) {
    v.y*=-1;
  }

  ellipse(loc2.x, loc2.y, 10, 10);
}

