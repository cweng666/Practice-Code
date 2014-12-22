ArrayList <Seed> dandelion = new ArrayList <Seed>();
PImage seed, girl;

void setup() {
  //initialize background image
  girl = loadImage("girl with dandelion.png");
  size(girl.width, girl.height);
  noStroke();
}

void draw() {
  //set up background
  background(0);
  image(girl, 0, 0);
  
  //initialize images for dandelion seeds
  seed = loadImage("dandelion seed.png");
  
  //add in new seeds
  dandelion.add(new Seed());
  
  //reference each seed and display
  for (int i = dandelion.size() - 1; i >= 0; i--) {
    Seed currentSeed = dandelion.get(i);
    currentSeed.display();
    
    //move seeds
    if(currentSeed.active) {
      currentSeed.move();
    }
    
    //remove seeds
    if (currentSeed.isDead()) {
      dandelion.remove(i);
    }
  }
  
}

//move seeds when mouse is pressed
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

    //initialize location, velocity, acceleration, diameter, and active
    loc = new PVector (rx, ry);
    vel = new PVector(random(0, -2), random(-7, 3));
    acc = new PVector(random(0.1,0.2), random(-0.1,0.05));
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
    vel.limit(5);
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

