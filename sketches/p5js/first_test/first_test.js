
let setup = () => {
  createCanvas(1400, 600);
  background("#ff0000");
  fill("#00ff00");
}

let draw = () => {
  ellipse(mouseX, mouseY, 80, 80);
}
