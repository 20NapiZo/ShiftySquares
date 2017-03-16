//Shifty Squares
//Andy Seiple

int x = 0;
int y = 0;
int sz = 50;
int theSeed = 0;
int scale = 0;
int r = 255;
int g = 255;
int b = 255;
//String text = "Press R, G, or B to change color. Press mouse 1 to reset squares and color";
void setup()
{
  size(500, 500);
  background(255, 255, 255);
  noStroke();
}

void draw()
{
  background(5, 5, 5);
  fill(r, g, b, 255);
  randomSeed(theSeed);
  x = 0;
  while (x <= 450)
  {
    while (y <= 500)
    {
      float shiftX1 = scale + mouseX/10 * random(-1, 1);
      float shiftY1 = scale + mouseY/10 * random(-1, 1);
      beginShape();
      vertex(x + shiftX1, y + shiftY1);
      vertex(x + sz + shiftX1, y + shiftY1);
      vertex(x + sz + shiftX1, y + sz  + shiftY1);
      vertex(x + shiftX1, y + sz + shiftY1);
      endShape();
      y = y + sz;
    }
    x = x + sz;
    y = 0;
  }
  //fill(255);
  //text(text, 10, 20);
}

void mousePressed() {
  theSeed = (int)random(1000);
  r = (int)random(255);
  g = (int)random(255);
  b = (int)random(255);
  
  
}

void keyPressed() {
  if (key == 'r'){
    r = r - 10;
  }
  
  if (key == 'g'){
    g = g - 10;
  }
  
  if (key == 'g'){
    b = b - 10;
  }
}
