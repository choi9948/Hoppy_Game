//Declares and assigns y-coordinate for background image
int yimage = -100;

//Declares and assigns speed of background image
float yspeed = 1.2;
  
//Declares game over screen function
//This function initiates all the graphics and animation within this screen
public void gameover_screen(){
  //Calls the animation function
  background_animation3();
  
  //Draws the result banner
  fill(#DAA520);
  strokeWeight(3);
  stroke(#000000);
  rect(-5,380,507,150);
  
  //Labels the results banner
  fill(#000000);
  textFont(titleFont);
  textSize(135);
  text("Game Over",10,480);
  
  //Draws the skip button
  skip_button(410,20,#FCE883);
  //Checks mouse collision with skip button
  if (410 <= mouseX && mouseX <= 480 && 20<= mouseY && mouseY <= 60){
    skip_button(410,20,#DAA520); //Changes colour
  }  
}

//Declares background animation3 function
//This function initiates the vertical animation
public void background_animation3(){
  //Displays background image
  image(backgroundImg3, -90, yimage);
  
  //Updates vertical position of background image
  yimage += yspeed;

  //Checks if the image exceeds the screen boundaries
  if (yimage <= -300 || yimage >= 0) {
    yspeed *= -1; //Changes direction
  }
}
