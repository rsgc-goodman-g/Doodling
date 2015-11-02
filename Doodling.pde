float x = 200;
float y = 200;
float hue = 0;

void setup() {
  size(400, 400);

  //Enable HSB Colour model
  colorMode(HSB, 360, 100, 100);

  // white background
  background(0, 0, 100);
}

void draw() {

  // black fill
  stroke(hue, 80, 90);

  // draw the circle
  line(x, y, 200, 200);

  // change position
  x = x + random(-5, 5);
  y = y + random(-5, 5);

  // cycle through the hues
  hue = hue + 1;

  // make sure that colour resets
  if (hue > 360) {
    hue = 0;
  }
}

// capture a screenshot
void keyPressed() {

  saveFrame("output-########.png");
}