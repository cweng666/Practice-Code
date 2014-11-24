int count = 1000;
PVector[] loc = new PVector[count];
PVector[] v = new PVector[count];
PVector[] a = new PVector[count];
float[] dia = new float[count];

void setup() {
  size(displayWidth,displayHeight);
  for(int i = 0; i<count; i++) {
    dia[i] = random(2,10);
    loc[i] = new PVector(random(width), random(-height,-dia[i]/2));
    v[i] = new PVector(0, random(0.5));
    a[i] = new PVector(0,0.01);
  }
  noStroke();
}

void draw() {
  background(0);
  for(int i=0; i<count; i++) {
    v[i].add(a[i]);
    loc[i].add(v[i]);
    v[i].limit(2);
    ellipse(loc[i].x, loc[i].y, dia[i], dia[i]);
    a[i].x = random(-.1, .1);
    if (loc[i].y - dia[i]/2 > height) {
      loc[i].set(random(width), random(-height, -dia[i]/2));
      v[i].set(0, 1);
    }
  }
}