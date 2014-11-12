int wx=60;
int wy=60;

void setup() {
  size(600,600);
  colorMode(HSB, 360, 100, 100);
}

void draw() {
  for(int x=0; x<=width; x+=wx) {
    for(int y=0; y<=height; y+=wy) {
      if(mouseX>x && mouseX<x+wx && mouseY>y && mouseY<y+wy){
        fill(map(mouseX,0,width,0,255),map(mouseX,0,width,200,255),map(mouseY,0,height,150,255));
      }
      else {
        fill(255);
      }
      rect(x,y,wx,wy);
    }
  }
}
