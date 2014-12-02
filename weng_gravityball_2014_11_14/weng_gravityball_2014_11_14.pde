ball alpha;

void setup() {
  size(displayWidth, displayHeight);
  colorMode(HSB, 360, 100, 100, 100);
  alpha = new ball();
}

void draw() {
  background(0);
  fill(200, 100, 100);
  alpha.move();
  alpha.bounce();
  alpha.Loop();
  alpha.display();
}

class ball {
  float x, y, vx, vy, ax, ay;
  float dia;

  ball() {
    x=0;
    y=0.2*height;
    dia=40;
    vx=2;
    vy=1;
    ax=0;
    ay=.6;
  }

  void display() {
    ellipse(x, y, dia, dia);
  }

  void move() {
    vx+=ax;
    vy+=ay;
    x+=vx;
    y+=vy;
  }

  void bounce() {
    if (y+dia/2 > height) {
      y=height-dia/2;
      vy*=-1;
    }
  }
  void Loop() {
    if (x-dia/2 > width) {
      x = -dia/2;
    }
  }
}

