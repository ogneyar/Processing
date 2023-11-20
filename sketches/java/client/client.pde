import processing.net.*;

Client c;
String data = "";

void setup() {
  textAlign(CENTER, CENTER);
  size(200, 200);
  background(50);
  fill(200);
  c = new Client(this, "server.leidtogi.ru", 80);  // Connect to server on port 80
  c.write("GET /echo HTTP/1.0\n");  // Use the HTTP "GET" command to ask for a webpage
  c.write("Host: server.leidtogi.ru\n\n"); // Tell the server for which domain you are making the request
}

void draw() {
  if (c.available() > 0) {    // If there's incoming data from the client...
    data += c.readString();   // ...then grab it and print it
  }else {
    if (data != "") {
      String[] list = split(data, "\r\n\r\n");
      //String[] m = match(list[1], "ok");
      println(list[1]);
      text(list[1], width/2, height/2);
      data = "";
    }
  }
}
