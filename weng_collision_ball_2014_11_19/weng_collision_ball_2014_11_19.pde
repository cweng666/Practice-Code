int count = 100;
Bouncer[] bouncers = new Bouncer[100];
float[] mass = new float[count];
int mindia = 5;
int maxdia = 10;
float dia[] = new float[count];

void setup() {
  size(displayWidth, displayHeight);
  colorMode(HSB, 360, 100, 100, 100);
  for (int i = 0; i<count; i++) {
    bouncers[i] = new Bouncer(random(5, 50), random(.5, 10));
    dia[i] = random(10, 20);
    mass[i] = map(dia[i], mindia, maxdia, 0.05, 2);
  }
}

void draw() {
  background(0);
  for (int i = 0; i<count; i++) {
    bouncers[i].display();
    bouncers[i].move();
    for (int j = 0; j<count; j++) {
      if (i!=j) {
        bouncers[i].collideWith(bouncers[j]);
      }
    }
  }
}

class Bouncer {
  PVector loc, v;
  float dia;
  float speed;
  float sz;

  Bouncer(float tempdia, float tempspeed) {
    dia = tempdia;
    loc = new PVector(random(sz, width-sz), random(sz, height-sz));
    v = PVector.random2D();
    speed = tempspeed;
    v.mult(speed);
  }

  void display() {
    fill(map(v[i].x, -4, 4, 0, 360), 100, 100, 90);
    ellipse(loc[i].x, loc[i].y, dia[i], dia[i]);
  }
  void move() {
    v[i].add(a[i]);
    loc[i].add(v[i]);
  }
  void wallbounce() {
    if (loc[i].x+dia[i]/2>width || loc[i].x-dia[i]/2<0) {
      v[i].x*=-1;
    }
    if (loc[i].y+dia[i]/2>height || loc[i].y-dia[i]/2<0) {
      v[i].y*=-1;
    }
  }
  void collideWith(Bouncer someOtherBall) {
    if (loc.dist(someOtherBall.loc) < dia/2 + someOtherBall.dia/2) {
      v = PVector.sub(loc, someOtherBall.loc);
      v.normalize();
      v.setMag(speed);
    }
  }
}

