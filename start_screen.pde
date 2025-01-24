//Declares and assigns x-coordinate for background image
int ximage1 = -100;

//Declares and assigns speed of background image
float xspeed1 = 2;
 
//Declares start screen function
//This function initiates all the graphics and animation within this screen
public void start_screen(){
  //Calls the animation function
  background_animation1();
  
  //Text formatting of title
  textFont(titleFont);
  textAlign(CENTER);
  strokeWeight(5);
  
  //Title outline
  for(int x = -1; x < 5; x++){
    fill(#000000);
    text("Hoppy\nLand", 240+x,400);
    text("Hoppy\nLand", 240,400+x);
  }
  
  //Display title
  fill(#FCE883);
  text("Hoppy\nLand", 240,400);
  
  //Display play button
  play_button(175,570,#FCE883);
  //Check mouse collision with play button
  if (175 <= mouseX && mouseX <= 325 && 570<= mouseY && mouseY <= 620){
    play_button(175,570,#DAA520); //Changes colour
  }  
}

//Declares background animation1 function
//This function initiates the horizontal animation
public void background_animation1(){
  //Displays background image
  image(backgroundImg1, ximage1, 0);

  //Updates horizontal position of background image
  ximage1 += xspeed1;

  //Checks if the image exceeds the screen boundaries
  if (ximage1 <= -1400 || ximage1 >= 0) {
    xspeed1 *= -1; //Changes direction
  }
}
