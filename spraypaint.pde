int sprayWeight;
int spraySize;
boolean isMousePressed = false;

void setup() {
  size(1280, 720);
  background(50);
  sprayWeight = 10;
  spraySize = 5;
}

void draw() {
  if (isMousePressed) {
    spray();
  }
}

void mousePressed() {
  isMousePressed = true;
}

void mouseReleased() {
  isMousePressed = false;
}

void spray() {
  for(int i = 0; i < sprayWeight; i++) {
    set(mouseX + (int)random(-spraySize, spraySize), mouseY + (int)random(-spraySize, spraySize), color(255,0,0));
  }
}

void keyPressed() {
  if (keyCode == UP) {
    sprayWeight += 1;
  } else if (keyCode == DOWN) {
    if (sprayWeight > 10) {
      sprayWeight -= 1;
    }
  } else if (keyCode == 'W') {
    spraySize += 1;
  } else if (keyCode == 'S') {
    if (spraySize > 5) {
      spraySize -= 1;
    }
  } else if (keyCode == BACKSPACE) {
    background(50);
  }
}