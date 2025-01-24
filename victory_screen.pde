//Declares and assigns x-coordinate for background image
int ximage2 = -100;

//Declares and assigns speed of background image
float xspeed2 = 2;

//Declares victory screen function
//This function initiates all the graphics and animation within this screen
public void victory_screen(){
  //Calls the animation function
  background_animation2();
  
  //Draws the result banner
  fill(#DAA520);
  strokeWeight(3);
  stroke(#000000);
  rect(-5,380,507,150);
  
  //Labels the results banner
  fill(#000000);
  textFont(titleFont);
  textSize(160);
  text("Victory",30,480);
  
  //Draws the skip button
  skip_button(410,20,#FCE883);
  //Checks mouse collision with skip button
  if (410 <= mouseX && mouseX <= 480 && 20<= mouseY && mouseY <= 60){
    skip_button(410,20,#DAA520); //Changes colour
  }   
}

//Declares background animation2 function
//This function initiates the horizontal animation
public void background_animation2(){
  //Displays background image
  image(backgroundImg2, ximage2, 0);

  //Updates horizontal position of background image
  ximage2 += xspeed2;

  //Checks if the image exceeds the screen boundaries
  if (ximage2 <= -1400 || ximage2 >= 0) {
    xspeed2 *= -1; //Changes direction
  }
}
