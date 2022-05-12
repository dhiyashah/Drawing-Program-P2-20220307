//Global Variables
Boolean draw=false;
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight;
//
void setup() {
  fullScreen(); 
  println(displayWidth, displayHeight);
  //
  //Population
  drawingSurfaceX = displayWidth*1/8;
  drawingSurfaceY = displayHeight*1/10;
  drawingSurfaceWidth = displayWidth*6/8;
  drawingSurfaceHeight = displayHeight*8/10;
  //
  rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
}//End setup
//
void draw() {
  if ( draw==true ) line( mouseX, mouseY, pmouseX, pmouseY ) ; //End Line Draw
}//End draw
//
void keyPressed() {}//End keyPressed
//
void mousePressed() {
  if (draw == false) {
    draw = true;
  } else {
    draw = false;
  }//End draw Boolean
}//End mousePressed
//
//End MAIN
