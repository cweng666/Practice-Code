
void setup() {
  size(displayWidth, displayHeight);
  colorMode(HSB,360,100,100,100);
}

//void draw() {
//  background(0);
//  textSize(50);
//  fill(255);
//  text("x = " + quadp(2,7,5) + " or " + quadn(2,7,5),width/2-100,height/2);
//}
//
//float quadp(float a, float b, float c) {
//  float x = (-b + sqrt(sq(b) - 4*a*c))/(2*a);
//  text("a = " + a + "; b = " + b + "; c = " + c, width/2-150, height/2-100);
//  return x;
//}
//
//float quadn(float a, float b, float c) {
//  float x = (-b - sqrt(sq(b) - 4*a*c))/(2*a);
//  text("a = " + a + "; b = " + b + "; c = " + c, width/2-150, height/2-100);
//  return x;
//}

float[] (float a, float b, float c) {
  float [] answers = new float[2];
  
  
