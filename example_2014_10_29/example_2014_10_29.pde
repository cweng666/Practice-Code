float x,y,dx,dy;
float ease = .01;

void setup(){
  size(800,600);
  x = width/2;
  y = height/2;
}

void draw(){
  background(255);
  ellipse(x,y,20,20);
  dx = mouseX - x;
  dy = mouseY - y;
  x+= dx*ease;
  y+= dy*ease;
  
}
