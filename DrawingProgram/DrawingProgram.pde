//Global Variables
Boolean draw=false;
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight, drawingDiameter;
//
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
int reset=1;
color white=255, resetColour=white, red=#FF0303, black=0, quitButtonColour;
String quitButtonString = "QUIT";
//
PFont font;
int initialFontSize=55;
int size;
//
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
  font = createFont ("Harrington", initialFontSize);
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
  //Quit Button Hoverover
  if ( mouseX>=quitButtonX && mouseX<=quitButtonX+quitButtonWidth && mouseY>=quitButtonY && mouseY<=quitButtonY+quitButtonHeight ) {
    quitButtonColour = red;
  } else {
    quitButtonColour = black;
  }//End Quit Button Hoverover
  fill(quitButtonColour);
  noStroke(); //removes rect() outline
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  stroke(reset);
  fill(resetColour); //White, not night mode friendly
  //
  //Text, Quit Button
  fill(black); //Ink
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  size = 20; //Change until fits
  textFont(font, size);
  text(quitButtonString, quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  //
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
  {//Button Paper (Drawing Surface)
  //
  if ( mouseX>=quitButtonX && mouseX<=quitButtonX+quitButtonWidth && mouseY>=quitButtonY && mouseY<=quitButtonY+quitButtonHeight ) exit();
  //
}//End mousePressed
//
//End MAIN
