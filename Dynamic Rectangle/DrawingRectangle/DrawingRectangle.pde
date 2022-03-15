/* Note: 
 Fix rectangle drawing bug, population bug
 Add liseners: keyboard and mouse
 Remember to add a black background() to rightMouseButton
 See: https://processing.org/reference/mouseButton.html
 Prototype small program to verify mouseClicking
 */

//Global Variables
int x = width*1/4, y = height*1/4, rectWidth = width*1/2, rectHeight = height*1/2;
int backgroundBlue;
int strokeRest=1;
int thin=width*1/50, thick=2*thin;
color strokeColour, fillColour;
color yellow=#F8FC03, purple=#FA00F6, whiteReset=#FFFFFF, blackReset=#000000;
// Colour design must limit blue as much as possible ... notice purple
color yellowNightMode=#F8FC00, purpleNightMode=#FA0096; //No blue light for the colour shade
Boolean nightMode=false; //Daytime is false
//
void setup()
{
  size(700, 500); //Display Geometry (Orientations): Square, Landscape, Portrait
  //fullScreen(); //displayWidth, displayHeigth
  //Populatiion
  x = width*1/4;
  y = height*1/4;
  rectWidth = width*1/2;
  rectHeight = height*1/2;
  thin = width*1/50;
  thick = 2*thin;
  println("Canvas Size", width, height);
  println("Display", "width: ", displayWidth, " height: ", displayHeight);
}//End setup
//
void draw()
{
  // Background as gray scale, 0-255 (notice 256 #'s)
  background(50);
  // New Background Function "covers" old gray scale background()
  // Background as colour, RGB, random(a,b)
  // Night Mode means background cannot have blue // change randome for night mode
  //
  if ( nightMode==true ) //Night Mode Choices
  {
    backgroundBlue = 0;
    strokeColour = yellowNightMode;
    fillColour = purpleNightMode;
  } else
  {
    backgroundBlue = int( random(255) );
    strokeColour = yellow;
    fillColour = purple;
    println("here", backgroundBlue);
  } //End Night Mode
  //
  background( color(random(0, 255), random(255), backgroundBlue) );
  strokeWeight(thick);
  stroke(strokeColour);
  fill(fillColour);
  rect(x, y, rectWidth, rectHeight);
  //rest to defaults
  fill(whiteReset);
  stroke(blackReset);
  strokeWeight(strokeRest);
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
}//End mousePressed



/*
 
 
 //End of Program
 */
