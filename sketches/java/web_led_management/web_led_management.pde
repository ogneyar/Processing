
import controlP5.*;
import processing.net.*;

ControlP5 cp5;
Client c;

String data = "";
color white = color(255);
color black = color(0);
String[] list;

void setup() {
  textSize(28);
  size(400,600);
  noStroke();
  cp5 = new ControlP5(this);
  
  // create a new button with name 'led_on'
  cp5.addButton("led_on")
     .setPosition(100,100)
     .setSize(200,19)
  ;
  // create a new button with name 'led_off'
  cp5.addButton("led_off")
     .setPosition(100,140)
     .setSize(200,19)
  ;
}

void draw() {
  background(white);
  fill(black);
  
  if (c != null && c.available() > 0) {    // If there's incoming data from the client...
    data += c.readString();   // ...then grab it and print it
  }else {
    if (data != "") {
      list = split(data, "\r\n\r\n");
      //String[] m = match(list[1], "ok");
      //println(list[1]);
      println(data);
      data = "";
    }
  }
  if (list != null && list[1] != null) text(list[1], width/2, height/2);
}

void led_on() {
  list = null;
  println("a button event from led_on");
  
  c = new Client(this, "webled.local", 80);
  c.write("GET /led_on HTTP/1.0\r\n");
  c.write("\n\n");
}

void led_off() {
  list = null;
  println("a button event from led_off");
  
  c = new Client(this, "webled.local", 80);
  c.write("GET /led_off HTTP/1.0\r\n");
  c.write("\n\n");
}
