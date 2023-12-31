/* autogenerated by Processing revision 1293 on 2023-11-19 */
import processing.core.*;
import processing.data.*;
import processing.event.*;
import processing.opengl.*;

import java.util.HashMap;
import java.util.ArrayList;
import java.io.File;
import java.io.BufferedReader;
import java.io.PrintWriter;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.IOException;

public class first_test extends PApplet {


int red = color(255, 0, 0);
int green = color(0, 255, 0);
int blue = color(0, 0, 255);
int black = color(0, 0, 0);
int white = color(255, 255, 255);

public void setup() {
  frameRate(144);
  windowTitle("first test");
  noCursor();
  background(black);
  /* size commented out by preprocessor */;
  fill(green);
  //ellipse(400, 300, 10, 10);
}

  
public void draw() {
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


  public void settings() { size(800, 600); }

  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "first_test" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
