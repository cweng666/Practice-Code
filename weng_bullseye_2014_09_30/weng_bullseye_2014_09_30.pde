int diameter;

void setup() {
  size(600,600);
  diameter=550;
}

void draw() {

  while(diameter>10) {
    ellipse(width/2,height/2,diameter,diameter);
    diameter=diameter-10;
  }
}
