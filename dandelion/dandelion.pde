ArrayList <Seed> dandelion = new ArrayList <Seed>();
PImage seed, girl;

void setup() {
  girl = loadImage("girl with dandelion.png");
  size(girl.width, girl.height);
  noStroke();
}

void draw() {
  background(0);
  image(girl, 0, 0);
  
  //initialize images
  seed = loadImage("dandelion seed.png");
  
  //add in new seeds
  dandelion.add(new Seed());
  
  //reference each seed, display, move, and remove
  for (int i = dandelion.size() - 1; i >= 0; i--) {
    Seed currentSeed = dandelion.get(i);
    currentSeed.display();
//    if(mousePressed) {
//      currentSeed.moving();
//    }
    if(currentSeed.active) {
      currentSeed.move();
    }
    if (currentSeed.isDead()) {
      dandelion.remove(i);
    }
  }
  
}

void mousePressed() {
  for (int i = dandelion.size() - 1; i >= 0; i--) {
    Seed currentSeed = dandelion.get(i);
    currentSeed.active = true;
  }
}

//set up the class
class Seed {
  PVector loc, vel, acc;
  float dia;
  float rx, ry;
  boolean active;

//class constructor
  Seed() {
    //generate seeds in a circle in middle
    rx = randomGaussian();
    ry = randomGaussian();
    rx = rx*20 + width/2-30;
    ry = ry*20 + height/2+70;

    loc = new PVector (rx, ry);
    vel = new PVector(random(0, -2), random(-3, 3));
    acc = new PVector(0.1, 0);
    dia = 50;
    active = false;
  }

//class methods
  void display() {
    image(seed, loc.x,loc.y, dia, dia);
  }

  void move() {
    vel.add(acc);
    loc.add(vel);
  }

//boolean for removal of seeds when they go off the screen  
  boolean isDead() {
    if (loc.x -dia/2 < 0) {
      return true;
    } else {
      return false;
    }
  }
}

