Ball[] alpha = new Ball[200];

void setup() {
  noStroke();
  size(displayWidth, displayHeight);
  colorMode(HSB, 360, 100, 100, 100);
  for (int i = 0; i < alpha.length; i++) {
    if (i%5 == 0) {
      alpha[i] = new Ball(30);
    } else if (i%31 == 0) {
      alpha[i] = new Ball(50);
    } else {
      alpha[i] = new Ball();
    }
  }
}
void draw() {
  background(0);
  for (int i = 0; i < alpha.length; i++) {
    alpha[i].move();
    alpha[i].bounce();
    alpha[i].Loop();
    alpha[i].display();
  }
}

class Ball {
  PVector loc, v, a;
  float dia;
  float hue, sat, bright, trans;

  Ball() {
    dia=15;
    loc = new PVector(random(dia, width-dia), random(height/2));
    v = new PVector(0, 0);
    a = new PVector(0, .1);
    hue = random(160, 260);
    sat = 100;
    bright = 100;
    trans = 30;
  }

  Ball(float tempdia) {
    dia = tempdia;
    loc = new PVector(random(dia, width-dia), random(height/2));
    v = new PVector(0, 0);
    a = new PVector(0, .1);
    hue = random(160, 260);
    sat = 100;
    bright = 100;
    trans = 30;
  }

  void display() {
    fill(hue, sat, bright, trans);
    ellipse(loc.x, loc.y, dia, dia);
  }

  void move() {
    v.add(a);
    loc.add(v);
  }

  void bounce() {
    if (loc.y > height - dia/2) {
      loc.y = height - dia/2;
      v.y = -abs(v.y);
    }
  }
  void Loop() {
    if (loc.x-dia/2 > width) {
      loc.x = -dia/2;
    }
  }
}

