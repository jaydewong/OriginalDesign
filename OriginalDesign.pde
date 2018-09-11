void setup(){
  size(600,600);
  frameRate(5);
  loop();
}

int y = 0;
void draw(){
    background(215,245,247);
    pan();
    egg();
    y = y + 20;
    if(y == 400){
      crack();
      frypan();

      y = 0;
   }

    
}

void egg(){
   fill(255);
   noStroke();
   ellipse(300,y, 150,200);
}

void crack(){
  background(215,245,247);
  yolk();
  drawCrack();
}

void drawCrack(){
  fill(255,255,255);
  bezier(200,550,200,400,250,400,300,400);
  bezier(400,550,400,400,350,400,300,400);
  beginShape();
  vertex(200,550);
  vertex(250,530);
  vertex(238,490);
  vertex(280,480);
  vertex(275,440);
  vertex(300,430);
  vertex(298,400);
  endShape(CLOSE);
  beginShape();
  vertex(302,400);
  vertex(310,440);
  vertex(330,450);
  vertex(310,480);
  vertex(360,490);
  vertex(340,520);
  vertex(390,530);
  vertex(370,545);
  vertex(400,550);
  endShape(CLOSE);
}

void yolk(){
  noStroke();
  fill(252,252,232);
  ellipse(300,500,300,150);
  fill(255,189,64);
  ellipse(300,500,150,100);
}

void frypan(){
  noStroke();
  background(215,245,247);
  fill(90,90,87);
  rect(100,500,400,90);
  fill(106,106,105);
  ellipse(300,500,400,160);
  yolk();
  drawCrack();
}

void pan(){
  fill(90,90,87);
  rect(100,500,400,90);
  fill(106,106,105);
  ellipse(300,500,400,160);
}




