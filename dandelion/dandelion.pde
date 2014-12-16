ArrayList <Seed> dandelion = new ArrayList <Seed>();

void setup() {
  size(displayWidth, displayHeight);
  noStroke();
  background(0);
}

void draw() {
  dandelion.add(new Seed());
  for (int i = dandelion.size ()-1; i >= 0; i--) {
    Seed currentSeed = dandelion.get(i);
    currentSeed.display();
    if(mousePressed) {
      currentSeed.move();
    }
    if (currentParticle.isDead()) {
      allMyParticles.remove(i);
    }
  }
  
}

class Seed {
  PVector loc, vel, acc;
  float dia;

  Seed() {
    float rx, ry;
    rx = randomGaussian();
    ry = randomGaussian();
    rx = rx*30 + width/2;
    ry = ry*30 + height/2;

    loc = new PVector (rx, ry);
    vel = new PVector(random(-5, -2), random(-3, 3));
    acc = new PVector(0, 0.1);
    dia = 10;
  }

  void display() {
    ellipse(rx, ry, dia, dia);
  }

  void move() {
    vel.add = (acc);
    loc.add = (vel);
  }
}

