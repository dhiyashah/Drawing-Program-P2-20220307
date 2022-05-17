//Global Variables
Boolean draw=false;
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight, drawingDiameter;
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
  drawingDiameter = width*1/100;
  //
  rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
}//End setup
//
void draw() {
  //
  //Drawing Tools, with a combined Boolean (combined uses)
  if ( draw==true && mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight ) line( mouseX, mouseY, pmouseX, pmouseY ) ; //End Line Draw
  if ( draw==true && mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight ) ellipse ( mouseX, mouseY, drawingDiameter, drawingDiameter );
}//End draw
//
void keyPressed() {}//End keyPressed
//
void mousePressed() {
  //
  if (mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight) {}//Button Paper (Drawing Surface)
    if (draw == false) {
    draw = true;
  } else {
    draw = false;
  }//End draw Boolean
}//End mousePressed
//
//End MAIN
