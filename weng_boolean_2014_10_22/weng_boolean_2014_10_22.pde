boolean cindy=true;

void setup() {
  size(displayWidth, displayHeight);
}

void draw() {
  background(0);
  if (cindy==true) {
    fill(0, 0, 200);
    ellipse(mouseX,mouseY,100,80);
  } else {
    fill(170, 50, 240);
    rect(mouseX-50, mouseY-75, 100, 150);
    //megacodecodecode
  }
}

void mousePressed() {
  if (mousePressed) {
    cindy=!cindy;
  }
}

