
color red = color(255, 0, 0);
color green = color(0, 255, 0);
color blue = color(0, 0, 255);

void setup() {
  background(0);
  size(800, 600);
  fill(green);
  ellipse(400, 300, 80, 80);
}

void draw() {
  ellipse(mouseX, mouseY, 80, 80);
}
