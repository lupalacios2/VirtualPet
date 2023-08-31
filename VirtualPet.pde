  import processing.serial.*;
  import cc.arduino.*;
  Arduino arduino;
  
  void setup() {
      size(400, 400);
      noStroke();
      arduino = new Arduino(this, Arduino.list()[1], 57600);
  }
  
  void draw() {
    int x = arduino.analogRead(5);
  
    // colors
    color brown = color(183,137, 0.75 * x);
    color peach = color(251,203,139);
    color black = color(53,52,44);
    color red   = color(252,108, 1.5 * x);
  
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
  }
