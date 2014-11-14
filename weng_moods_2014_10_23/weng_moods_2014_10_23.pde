String[] karensmoods = {
  "happy", "derpy", "sad", "forlorn", "enamorada", "bored", "fatigued", "perturbed", "florid", "variegated", "petrified", "loopy", "silly"
};
int mood;
float x, y;

void setup() {
  size(displayWidth, displayHeight);
  textSize(50);
  colorMode(HSB, 360, 100, 100, 100);
  background(0);
}

//void draw() {
//  
//  int i=0; i<12; i+=1) {
//    fill(random(360),random(100),random(100),50);
//    text(karensmoods[i],random(width),random(height));
//    if(mousePressed) {
//      i+=0;
//    }
//  }
//}

void draw() {
  if (!mousePressed) {
    x = random(width);
    y=random(height);
    mood = int(random(karensmoods.length));
    println(mood);
    fill(random(360), random(100), random(100), 50);
    text(karensmoods[mood], x, y);
  } else {
    background(0);
    text(karensmoods[mood], width/2, height/2);
  }
}

