float[] x = new float[1];
float[] y = new float[1];
float[] eSize = new float[1];
float[] speed = {1.0};
float minSize = 1.0;
float maxSize = 50.0;
boolean mouseFlag = false;

void setup() {
  size(400, 400);
  background(255);
  noStroke();
}

void draw() {
  background(255);
  
  if (x.length >= 0) {
    for (int i = 0; i < x.length; i ++) {
      eSize[i] += speed[i];    //円のサイズを変化させる
      if (eSize[i] > maxSize || eSize[i] < minSize) speed[i] = -speed[i];
      ellipse(x[i], y[i], eSize[i], eSize[i]);    //円を描く
    }
  }
}

void mouseDragged() {
  
  x = append(x, mouseX);
  y = append(y, mouseY);
  eSize = append(eSize, random(1.0, 2.0));
  speed = append(speed, random(0.1, 2.0));
}

void mouseReleased() {
  if (x.length > 1) {
    x = shorten(x);
    y = shorten(y);
    eSize = shorten(eSize);
    speed = shorten(speed);
  }
}
