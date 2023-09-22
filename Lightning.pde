// van de graaff
int startX = 250;
int startY = 260;
int endX = 250;
int endY = 260;

void setup(){
  size(500, 500);
  strokeWeight(4);
  background(250, 250, 250);
}

void draw(){
  // van de graaff
    // top of machine
    beginShape();
    ellipse(150,250,100,100);
 
    // base
    fill(200,200,200);
    line(140,300,140,400);
    line(160,300,160,400);
    line(140,400,160,400);
 
    // bottom
    line(120,400,180,400);
    line(120,400,120,425);
    line(180,400,180,425);
    line(120,425,180,425);
 
    endShape();
   
  // person
    // head
    beginShape();
    ellipse(260,250,60,60);
   
    // body
    line(260,280,260,350);
    line(260,350,230,420);
    line(260,350,290,420);
    line(260,310,200,250);
    line(260,310,200,270);
   
    endShape();
 
  // lines
  // stroke((int)(Math.random() * 250), (int)(Math.random() * 250), (int)(Math.random() * 250));
  stroke(0,0,0);
  while (endX < 350) {
    endX = startX + (int)(Math.random() * 10); // fix
    endY = startY + (int)((Math.random() * 20) - 10); // fix
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
}

void mousePressed(){
  startX = 250;
  startY = 260;
  endX = 250;
  endY = 260;
}
