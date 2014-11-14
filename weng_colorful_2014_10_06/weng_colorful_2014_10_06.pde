
void setup() {
  size(600,600);
  colorMode(HSB,360,100,100,100);
}

void draw() {
  background(0);
  for(int x=0; x<=width; x+=60) {
   for(int y=0; y<=height; y+=60) {
      ellipse(x,y,30,30);
      noStroke();
      fill(50,100,100,10);
      }
    }
  }
