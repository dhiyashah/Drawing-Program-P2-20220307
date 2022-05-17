//Global Variables
Boolean draw=false;
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight, drawingDiameter;
//
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
void setup() {
  fullScreen(); 
  println(displayWidth, displayHeight);
  //
  //Population
  population();
  quitButtonX = width*9/10;
  quitButtonY = height*0;
  quitButtonWidth = width*1/10;
  quitButtonHeight = height*1/20;
  //
  rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
}//End setup
//
void draw() {
  //
  //Drawing Tools, with a combined Boolean (combined uses)
  if ( draw==true && mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight ) line( mouseX, mouseY, pmouseX, pmouseY ) ; //End Line Draw
  if ( draw==true && mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight ) ellipse ( mouseX, mouseY, drawingDiameter, drawingDiameter );
  //
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
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
