// coffee shop
void setup() {
  size(800, 600);
}
void draw() {
  background(220); 
  drawCoffeeHouse(200, height / 2 + 50);
}
void drawCoffeeHouse(int x, int y){
  noStroke();
  rectMode(CENTER); 
  //main building
   fill(#FFFEE0);
   rect(x,y,270,180);
   fill(#333539);
   rect(x,y+90,300,5);
   
   //red sign area
   fill(#B94D4D);
   rect(x,y-110,290,50);
   
   //"coffee house" text
   fill(#FCFAD1);
   textSize(30);
   textAlign(CENTER,CENTER);
   text("COFFEE HOUSE", x-5, y-110);
   fill(#463D1D);
   textSize(30);
   textAlign(CENTER,CENTER);
   text("COFFEE HOUSE", x-6, y-109);
   fill(#463D1D);
   textSize(30);
   textAlign(CENTER,CENTER);
   text("COFFEE HOUSE", x-7, y-108);
   fill(#FCFAD1);
   textSize(30);
   textAlign(CENTER,CENTER);
   text("COFFEE HOUSE", x-4, y-110);
   fill(#FCFAD1);
   textSize(30);
   textAlign(CENTER,CENTER);
   text("COFFEE HOUSE", x-3, y-110);
   fill(#FCFAD1);
   textSize(30);
   textAlign(CENTER,CENTER);
   text("COFFEE HOUSE", x-2, y-110);
   
   //door
   fill(#333539);
   rect(x + 82, y + 15, 74, 145);
   
   //door panels
  stroke(#343434);
  strokeWeight(2);
  fill(#576074);
  rect(x + 66, y - 35, 20, 25);
  rect(x + 95, y - 35, 20, 25);
  rect(x + 66, y, 20, 25);
  rect(x + 95, y, 20, 25); 
  
  // windows
  stroke(#343434);
  strokeWeight(4);
  fill(#576074);
  rect(x - 89, y - 20, 60, 60);
  rect(x - 12, y - 20, 60, 60);
  drawAwning(x, y - 25);
}
  
void drawAwning(int x, int y) {
  noStroke();
  float leftEdge = x - 130;
  float rightEdge = x + 18;
  float awningWidth = rightEdge - leftEdge;
  float awningHeight = 41;
  float stripeWidth = 20;

  rectMode(CORNER); // draw stripes left-to-right
  for (int i = 0; i < awningWidth / stripeWidth; i++) {
    if (i % 2 == 0) {
      fill(112, 85, 60);  // dark brown
    } else {
      fill(188, 155, 130); // light brown
    }
    rect(leftEdge + i * stripeWidth, y - awningHeight, stripeWidth, awningHeight);
  }
}
