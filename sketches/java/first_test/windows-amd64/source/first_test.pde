
color red = color(255, 0, 0);
color green = color(0, 255, 0);
color blue = color(0, 0, 255);
color black = color(0, 0, 0);
color white = color(255, 255, 255);

void setup() {
  frameRate(144);
  windowTitle("first test");
  noCursor();
  background(black);
  size(800, 600);
  fill(green);
  //ellipse(400, 300, 10, 10);
}

  
void draw() {
  if ( ! mousePressed ) background(black);
  fill(red);
  stroke(white);
  square(750, 0, 50);
  line(760, 10, 790, 40);
  line(760, 40, 790, 10);
  if (mouseX > 750 && mouseY < 50 && mousePressed) exit();  
  noStroke();
  fill(green);
  ellipse(mouseX, mouseY, 10, 10);
}
