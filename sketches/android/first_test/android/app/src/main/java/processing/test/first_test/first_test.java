package processing.test.first_test;

/* autogenerated by Processing revision 1293 on 2023-11-20 */
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

public void setup() {
  background(0);
  /* size commented out by preprocessor */;
  fill(green);
  ellipse(400, 300, 80, 80);
}

public void draw() {
  ellipse(mouseX, mouseY, 80, 80);
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
