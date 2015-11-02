float x = 200;
float y = 200;

void setup() {
  size(400, 400);
  
  // white background
  background(255);
}

void draw() {

  // black fill
  fill(0);

  // draw the circle
  line(x, y, 200, 200);

  // change position
  x = x + random(-5, 5);
  y = y + random(-5, 5);
}