ArrayList <Seed> dandelion = new ArrayList <Seed>();

void setup() {
  size(displayWidth, displayHeight);
  noStroke();
  background(0);
}

void draw() {
  background(0);
  dandelion.add(new Seed());
  for (int i = dandelion.size() - 1; i >= 0; i--) {
    Seed currentSeed = dandelion.get(i);
    currentSeed.display();
    if(mousePressed) {
      currentSeed.move();
    }
    if (currentSeed.isDead()) {
      dandelion.remove(i);
    }
  }
  
}

class Seed {
  PVector loc, vel, acc;
  float dia;
  float rx, ry;

  Seed() {
    rx = randomGaussian();
    ry = randomGaussian();
    rx = rx*30 + width/2;
    ry = ry*30 + height/2;

    loc = new PVector (rx, ry);
    vel = new PVector(random(-5, -2), random(-3, 3));
    acc = new PVector(0.1, 0);
    dia = 10;
  }

  void display() {
    ellipse(loc.x,loc.y, dia, dia);
  }

  void move() {
    vel.add(acc);
    loc.add(vel);
  }
  
  boolean isDead() {
    if (loc.x -dia/2 < 0) {
      return true;
    } else {
      return false;
    }
  }
}

