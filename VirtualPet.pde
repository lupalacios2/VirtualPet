import processing.serial.*;
import cc.arduino.*;
Arduino arduino;

void setup() {
  size(400, 400);
  noStroke();
  arduino = new Arduino(this, Arduino.list()[1], 57600);
}

void draw() {
  // 1 - left button
  // 2 - switch
  // 5 - light sensor
  // 6 - right button

  int col = arduino.analogRead(5);
  boolean isMad = false;

  if (arduino.analogRead(2) == 0) {
    isMad = false;
  } else {
    isMad = true;
  }

  // colors
  color rainbow = color(col * 0.5, col * 0.75, col * 0.25);
  color brown   = color(183, 137, 0.75 * col);
  color peach   = color(251, 203, 139);
  color black   = color(53, 52, 44);
  color red     = color(252, 108, 1.5 * col);

  // outer ears
  fill(brown);
  ellipse(115, 200, 65, 65);
  ellipse(285, 200, 65, 65);

  // inner ears
  fill(peach);
  ellipse(115, 200, 45, 45);
  ellipse(285, 200, 45, 45);

  // outer head
  fill(brown);
  ellipse(200, 200, 180, 185);

  // inner head
  fill(peach);
  ellipse(200, 200, 150, 155);

  // eyes and nose
  fill(black);
  ellipse(175, 175, 20, 26);
  ellipse(225, 175, 20, 26);
  ellipse(200, 200, 30, 20);

  // mouth
  fill(red);
  ellipse(200, 235, 70, 25);

  // eyebrows
  fill(rainbow);
  if (isMad) {
    ellipse(175, 150, 25, 10);
    ellipse(225, 150, 25, 10);
  }
}
