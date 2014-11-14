
void setup() {
  size(600,600);
}

void draw() {
  for(int x=0; x<=width; x+=60) {
    ellipse(x,mouseX,20,20);
  }
  for(int y=0; y<=height; y+=60) {
      ellipse(mouseY,y,30,30);
    }
  }
