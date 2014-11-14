int iy=0;
int ix=0;
int vx=0;
int vy=0;

void setup() {
  size(600,600);
}

void draw() {
  background(0);
  for(int ix=0; ix<=width; ix+=vx) {
    for(int iy=0; iy<=height; iy+=vy) {
      vx=1;
      vy=2;
      fill(255);
      rect(ix,iy,20,40);
    }
    if(mouseX>ix && mouseX<ix+20 && mouseY>iy && mouseY<iy+40) {
       vx=2;
       vy=5;
    }
  }
}
