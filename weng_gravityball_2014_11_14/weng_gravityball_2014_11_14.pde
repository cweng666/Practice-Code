ball[] alpha = new ball[200];

void setup() {
  noStroke();
  size(displayWidth, displayHeight);
  colorMode(HSB, 360, 100, 100, 100);
  for (int i = 0; i < alpha.length; i++) {
    alpha[i] = new ball();
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

class ball {
  PVector loc, v, a;
  float dia;

  ball() {
    dia=15;
    loc = new PVector(random(dia, width-dia), random(height/2));
    v = new PVector(0, 0);
    a = new PVector(0, .1);
  }

  void display() {
    fill(200, 100, 100,map(loc.y, 0, height, 0, 100));
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

