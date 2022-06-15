float[][] cells;
float r1, g1, b1;
float r2, g2, b2;
float eSize;
PFont font;
String[] fontList = PFont.list();

void setup() {
  size(600, 600);
  noStroke();
  
  printArray(fontList);
  
  font = createFont("Arial",30);
  textFont(font);

  cells = new float[31][31];

  for (int iy = 0; iy <= 30; iy++) {
    for (int ix = 0; ix <= 30; ix++) {
      cells[iy][ix] = 30.0;
    }
  }
}

void draw() {

  background(r1, g1, b1);
  fill(r2, g2, b2, 200);

  for (int iy = 0; iy <= 30; iy++) {
    for (int ix = 0; ix <= 30; ix++) {

      if (random(1) < 0.2) {
        cells[iy][ix] -= random(3);
      }
      eSize = cells[iy][ix];

      if (cells[iy][ix] > 100 || cells[iy][ix] <= 30)
        cells[iy][ix] = -cells[iy][ix];

      ellipse (ix * 20, iy * 20, eSize, eSize);
    }
  }
  
  textSize(30);
  fill(255);
  text("click", width/2, height/2);
  
  textAlign(CENTER, CENTER);
}

void mouseMoved() {

  int ix = round(mouseX / 20.0);
  if (ix < 0) {
    ix = 0;
  } else if (ix >= 30) {
    ix = 30;
  }

  int iy = round(mouseY / 20.0);
  if (iy < 0) {
    iy = 0;
  } else if (iy >= 30) {
    iy = 30;
  }

  cells[iy][ix] += 5;
}

void mousePressed() {

  r1 = int(random(50, 255));
  g1 = int(random(50, 255));
  b1 = int(random(50, 255));

  r2 = int(random(255));
  g2 = int(random(255));
  b2 = int(random(255));
}
