int x;
int y;
int vcx;
int vcy;
int vrx;
int vry;
int cx;
int cy;
int r;
int rx;
int ry;
int rw;
int rh;

void setup() {
  size(600,600);
  x=0;
  y=0;
  vcx=1;
  vcy=3;
  vrx=2;
  vry=1;
  cx=0;
  cy=0;
  r=50;
  rx=0;
  ry=0;
  rw=100;
  rh=50;
}

void draw() {
  background(69,map(x,0,width,0,69),69);
  frameRate(200);
  noStroke();
  fill(map(width-x,0,width,0,255),19,211);
  rect(rx,ry,rw,rh);
  if(cx>=width) {
    vcx=-vcx;
  }
  if(cx<=0) {
    vcx=1;
  }
   if(rx>=width) {
    vrx=-vrx;
  }
  if(rx<=0) {
    vrx=2;
  }
  fill(255,255,255);
  ellipse(cx,cy,r,r);
  if(cy>=height) {
    vcy=-vcy;
  }
  if(cy<=0) {
    vcy=3;
  }
   if(ry>=height) {
    vry=-vry;
  }
  if(ry<=0) {
    vry=1;
  }
  if(cy+r>=ry && cx>rx && cx<rx+rw) {
    vcy=-vcy;
  }
  if(cy-r<=ry+rh && cx>rx && cx<rx+rw) {
    vcy=-vcy;
  }
  if(cx+r>=rx && cy>ry+rh && cy<ry) {
    vcx=-vcx;
  }
  if(cx-r<=rx+rw && cy>ry+rh && cy<ry) {
    vcx=-vcx;
  }
    
  cx=cx+vcx;
  cy=cy+vcy;
  rx=rx+vrx;
  ry=ry+vry;
}
