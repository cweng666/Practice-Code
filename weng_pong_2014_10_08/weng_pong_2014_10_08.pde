int x;
int y;
int dia=30;
float vx;
float vy;
int rx=580;
int ry;
int w=10;
int l=50;
int lx=20;
int ly=300;
int countDownl;
int countDownr;
int scorer;
int scorel;
int countDownrr;
int countDownll;
int running=1;
int fc1=0;
int q=0;

void setup() {
  size(600, 600);
  x=width/2;
  y=height/2;
  vx=random(2, 6);
  vy=random(2, 6);
  textSize(40);
  scorer=0;
  scorel=0;
}

void draw() {
  if (running==1) {
    background(0);

    //draw ball

    x+=vx;
    y+=vy;
    ry=mouseY;
    noStroke();
    fill(map(x, 0, height, 0, 255), map(y, 0, width, 0, 255), 255);
    ellipse(x, y, dia, dia);
    if (x+dia/2>=width || x-dia/2<=0) {
      vx = -vx;
    }
    if (y+dia/2>=height || y-dia/2<=0) {
      vy*=-1;
    }

    //draw right paddle and make ball bounce off it

    fill(map(mouseY, 0, height, 100, 255), 0, 200);
    rect(rx, ry-l/2, w, l);
    if (x+dia/2>=rx && y>=ry && y<=ry+l) {
      vx=-abs(vx);
    }

    //draw left paddle and make ball bounce off it

    fill(0, map(ly, 0, height, 100, 255), 200);
    rect(lx, ly, w, l);
    if (keyPressed) {
      if (key == 'w') {
        ly-=15;
      }
      if (key == 's') {
        ly+=15;
      }
    }
    if (x-dia/2<=lx && y>=ly && y<=ly+l) {
      vx=abs(vx);
    }

    //show points scored

    if (countDownr>0) {
      text("POINT FOR LEFT", width/2-140, height/2);
      countDownr--;
    }
    if (x+dia/2>=width) {
      countDownr=50;
      scorel++;
      x=width/2;
      y=height/2;
    }
    if (countDownl>0) {
      text("POINT FOR RIGHT", width/2-140, height/2);
      countDownl--;
    }
    if (x-dia/2<=0) {
      countDownl=50;
      scorer++;
      x=width/2;
      y=height/2;
    }

    //score

    textSize(32);
    fill(0, 0, 255);
    text("score", 240, 40);
    text(scorer, 350, 40);
    text(scorel, 190, 40);

    //when one side wins

    if (scorer==2) {
      background(random(255), random(150, 255), random(150, 2000));
      text("YOU WIN!", 350, 270);
      text("YOU LOSE!", 100, 270);
      x=width/2;
      y=height/2;
      vx=0;
      vy=0;
      if (q==0) {
        fc1=frameCount;
        q=1;
      }
      if (frameCount-fc1==200) {
        running=0;
      }
    }

    if (scorel==2) {
      background(random(255), random(150, 255), random(150, 2000));
      text("YOU WIN!", 100, 270);
      text("YOU LOSE!", 350, 270);
      x=width/2;
      y=height/2;
      vx=0;
      vy=0;
      if (q==0) {
        fc1=frameCount;
        q=1;
      }
      if (frameCount-fc1==200) {
        running=0;
      }
    }
  }
  if (running==0) {
    background(0);
    text("THE END", 250, 300);
  }
}

void mousePressed() {
  running=1;
  scorer=0;
  scorel=0;
  vx=random(2, 6);
  vy=random(2, 6);
}

