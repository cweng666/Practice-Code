int barwidth=50;

void setup() {
  size(600, 600);
}

void draw() {
  background(0);
  for (int i=0; i<=width; i+=50) {
    if (mouseX>i && mouseX<i+barwidth) {
      colorMode(HSB);
      fill(mouseY%255, 100, 200);
    }
    else {
      fill(random(200, 255), random(150, 255), map(mouseY, 0, height, 0, 255));
    }
    rect(i, 0, barwidth, height);
  }
}

