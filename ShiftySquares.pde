int x = 0;
int y = 0;
int r = 4;
int g = 8;
int b = 90;
int s = 20;
int f = 25;
int c = 15;
int bk = 255;
int rp = 0;
int gp = 0;
int bp = 0;
int sz = 500;
int theSeed = 0;
float z = 5;
float sx0 = 0;
float sy0 = 0;
float sx1 = 0;
float sy1 = 0;
float sx2 = 0;
float sy2 = 0;
float sx3 = 0;
float sy3 = 0;
void setup() {
  size (1920, 1080);
};



void draw() {
  randomSeed(theSeed);
  background(bk);
  fill(r, g, b, f);
  noStroke();
  x = 0;
  y = 0;
  while (y<=height) {
    while (x<width) {
      z = random(1, 700);
      sx0 = mouseX/z * random(-1, 1);
      sy0 = mouseY/z * random(-1, 1);
      sx1 = mouseX/z * random(-1, 1);
      sy1 = mouseY/z * random(-1, 1);
      sx2 = mouseX/z * random(-1, 1);
      sy2 = mouseY/z * random(-1, 1);
      sx3 = mouseX/z * random(-1, 1);
      sy3 = mouseY/z * random(-1, 1);
      beginShape();
      vertex(x+sx0, y+sy0);
      vertex(x+s+sx1, y+sy1);
      vertex(x+s+sx2, y+s+sy2);
      vertex(x+sx3, y+s+sy3);
      endShape();
      x = x+s;
    };
    y=y+s;
    x=0;
  };
};
void mousePressed() {
  theSeed=(int)random(1000009);
};
void keyPressed () {
  if (key=='r') {
    rp = 1;
    gp = 0;
    bp = 0;
  };
  if (key=='g') {
    rp = 0;
    gp = 1;
    bp = 0;
  };
  if (key=='b') {
    rp = 0;
    gp = 0;
    bp = 1;
  };
  if ((key=='s')&&(bk == 255)) {
    bk = 0;
    f = 100;
  };
  if ((key=='a')&&(bk == 0)) {
    bk = 255;
    f = 25;
  };
  if (bp == 1) {
    if (keyCode == UP) {
      b = b+c;
    };
    if (keyCode == DOWN) {
      b = b-c;
    };
  };
  if (rp == 1) {
    if (keyCode == UP) {
      r = r+c;
    };
    if (keyCode == DOWN) {
      r = r-c;
    };
  };
  if (gp == 1) {
    if (keyCode == UP) {
      g = g+c;
    };
    if (keyCode == DOWN) {
      g = g-c;
    };
  };
};
