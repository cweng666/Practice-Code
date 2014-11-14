int pointx;
int pointy;
int changex=2;
int changey=3;

void setup() {
  size(600, 600);
}

void draw() {
  background(255);
  for (int x=0; x<=width; x+=20) {
    line(x, mouseY, pointx, pointy);
  }
  pointx=pointx+changex;
  pointy=pointy+changey;

  if (pointx>=width) {
    changex=-changex;
  }
  if (pointx<=0) {
    changex=-changex;
  }
  if (pointy>=height) {
    changey=-changey;
  }
  if (pointy<=0) {
    changey=-changey;
  }
}

