int count = 100;
PVector[] loc = new PVector[count];
PVector[] v = new PVector[count];
PVector[] a = new PVector[count];
float [] dia = new float[count];
float[] mass = new float[count];
int mindia = 5;
int maxdia = 10;

void setup() {
  size(displayWidth, displayHeight);
  colorMode(HSB, 360, 100, 100, 100);
  for (int i = 0; i<count; i++) {
    dia[i] = random(mindia, maxdia);
    loc[i] = new PVector(random(dia[i], width - dia[i]), random(dia[i], height-dia[i]));
    v[i] = new PVector(random(-2, 4), random(-4, 4));
    a[i] = new PVector(0, 0);
    mass[i] = map(dia[i], mindia, maxdia, 0.05, 2);
  }
}

void draw() {
  background(0);
  for (int i = 0; i<count; i++) {
    v[i].add(a[i]);
    loc[i].add(v[i]);

    for (int j = 0; j<count; j++) {
      if (i!=j) {
        if (loc[i].dist(loc[j]) < dia[i]/2 + dia[j]/2) {
//          if (loc[i].x < loc[j].x) {
//            v[i].x = -abs(v[i].x);
//            v[j].x = abs(v[j].x);
//          } else {
//            v[i].x = abs(v[i].x);
//            v[j].x = -abs(v[j].x);
//          }
//          if (loc[i].y < loc[j].y) {
//            v[i].y = -abs(v[i].y);
//            v[j].y = abs(v[j].y);
//          } else {
//            v[i].y = abs(v[i].y);
//            v[j].y = -abs(v[j].y);
//          }
            v[i] = PVector.sub(loc[i],loc[j]);
            v[i].normalize();
            v[i].div(mass[i]);
        }
      }
    }
    
    fill(map(v[i].x,-4,4,0,360),100,100,90);
    ellipse(loc[i].x, loc[i].y, dia[i], dia[i]);

    if (loc[i].x+dia[i]/2>width || loc[i].x-dia[i]/2<0) {
      v[i].x*=-1;
    }
    if (loc[i].y+dia[i]/2>height || loc[i].y-dia[i]/2<0) {
      v[i].y*=-1;
    }
  }
}

