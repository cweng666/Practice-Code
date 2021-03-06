float[] x = new float[20];
float[] y = new float[20];

void setup() {
  size(displayWidth, displayHeight);
  colorMode(HSB, 360, 100, 100, 100);
  noStroke();
  for (int i = 19; i>0; i--) {
    x[i] = random(width);
    y[i] = random(height);
  }
}

void draw() {
  background(0);
  if (keyPressed) {
    if (keyCode == UP) {
      y[19]-=10;
    }
    if (keyCode == DOWN) {
      y[19]+=10;
    }
    if (keyCode == LEFT) {
      x[19]-=10;
    }
    if (keyCode == RIGHT) {
      x[19]+=10;
    }
  }
  //      x[19] = mouseX;
  //      y[19] = mouseY;
  for (int i=0; i<x.length-1; i++) {
    x[i] = x[i+1];
    y[i] = y[i+1];
  }
  for (int i = 19; i>0; i--) {
    fill(map(x[i], 0, width, 0, 360), 100, 100, 50);
    ellipse(x[i], y[i], i*5, i*5);
  }
}

