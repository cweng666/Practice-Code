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
  for (int i = dandelion.size () - 1; i >= 0; i--) {
    Seed currentSeed = dandelion.get(i);
    currentSeed.display();

    //move seeds
    if (currentSeed.active) {
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
  for (int i = dandelion.size () - 1; i >= 0; i--) {
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
  float theta, spin;

  //class constructor
  Seed() {
    //generate seeds in a circle in middle
    rx = randomGaussian();
    ry = randomGaussian();
    rx = rx*20 + width/2-20;
    ry = ry*20 + height/2+80;

    //initialize location, velocity, acceleration, diameter, and active
    loc = new PVector (rx, ry);
    vel = new PVector(random(0, -2), random(-7, 3));
    acc = new PVector(random(0.1, 0.2), random(-0.1, 0.05));
    dia = 50;
    active = false;
    theta = random(TWO_PI);
    spin = random(-0.05, 0.05);
  }

  //class methods
  void display() {    
    pushMatrix();
    translate(loc.x, loc.y);
    rotate(theta);    
    image(seed, 0, 0, dia, dia);
    popMatrix();
  }

  void move() {
    vel.add(acc);
    loc.add(vel);
    vel.limit(5);

    //spin
    theta += spin;
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

