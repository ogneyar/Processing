
color red = color(255, 0, 0);
color green = color(0, 255, 0);
color blue = color(0, 0, 255);
color black = color(0, 0, 0);
color white = color(255, 255, 255);

boolean redRect = false;

void setup() {
  frameRate(144);
  background(black);
  size(displayWidth, displayHeight);
  fill(green);
}

void draw() {
  noStroke();
  fill(green);
  ellipse(mouseX, mouseY, 40, 40);
  
  if ( ! mousePressed ) background(black);
  
  fill(blue);
  rect(width - 100, 0, width, 100);
  
  if (mouseX > (width - 100) && mouseY < 100 /*&& mousePressed*/) 
  {
     exit();
     redRect = true;
  } 
  fill(red);
  if (redRect) rect(width - 100, 0, width, 100);
  
  stroke(white);
  line(width - 80, 20, width - 20, 80);
  line(width - 80, 80, width - 20, 20);
}
