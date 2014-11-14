float x1;
float y1;
float x2;
float y2;

void setup() {
  size(600,600);
  background(map(mouseX,0,width,0,255),map(mouseX,0,width,0,255),map(mouseY,0,height,0,255));
 
}

void draw() {
  
  noStroke();
  fill(map(height-mouseY,0,height,0,255),map(width-mouseX,0,width,0,255),map(width-mouseX,0,width,0,255));
  ellipse(mouseX,mouseY,mouseX/10,mouseY/10);
  fill(map(width-mouseY,0,height,0,255),map(width-mouseY,0,height,0,255),map(width-mouseX,0,width,0,255));
  stroke(random(255),random(255),random(255));
   x1 = random(width);
  x2 = x1 + 10;
  y1 = random(height);
  y2 = y1 + 10;
  line(x1,y1,x2,y2);
}
