float x = 200;
float y = 200;
float hue = 0;
float saturation = 0;

void setup() {
  size(400, 400);

  //Enable HSB Colour model
  colorMode(HSB, 360, 100, 100);

  // white background
  background(0, 0, 100);
}

void draw() {

  // black fill
  stroke(hue, saturation, 90);

  // draw the line
  line(x, y, 200, 200);

  // change position
  x = x + random(-5, 5);
  y = y + random(-5, 5);

  // stop at edges
  if (x < 0) {
    x = 200;
  }
  if (y > 400) {
    y = 200;
  }
  if (x > 400) {
    x = 200;
  }
  if (y < 0) {
    y = 200;
  }

  // cycle through the hues
  hue = hue + 1;

  // cycle through saturation
  saturation = saturation + 1;

  // make sure that colour resets
  if (hue > 360) {
    hue = 0;
  }

  // make sure that saturation resets
  if (saturation > 100) {
    saturation = 0;
  }
}

// capture a screenshot
void keyPressed() {

  saveFrame("output-########.png");
}