
import http.requests.*;
import controlP5.*;

ControlP5 cp5;

String data = "";
color white = color(255);
color black = color(0);


void setup() {
  textSize(28);
  //size(400,600);
  smooth();
  noStroke();
  cp5 = new ControlP5(this);
  
  // create a new button with name 'led_on'
  cp5.addButton("led_on")
     .setPosition(100,100)
     .setSize(400,100)
  ;
  // create a new button with name 'led_off'
  cp5.addButton("led_off")
     .setPosition(100,250)
     .setSize(400,100)
  ;
}

void draw() {
  background(white);
  fill(black);
  if (data != "") {
    text(data, 100, 400);
  }
}

void led_on() {
  data = "";  
  try {
    GetRequest get = new GetRequest("http://webled.local/led_on");
    get.send(); 
    //data = get.getContent();
    data = "led_on";
  } catch (Exception e) {
    data = "led_on (Exception)";
  }   
}

void led_off() {
  data = "";  
  try {
    GetRequest get = new GetRequest("http://192.168.0.130/led_off");
    get.send(); 
    //data = get.getContent();
    data = "led_off";
  } catch (Exception e) {
    data = "led_off (Exception)";
  }   
}
