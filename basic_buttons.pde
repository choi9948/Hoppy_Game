//Declares play button function
//This function displays the play button
public void play_button(int x, int y, int colour){
  //Draws border of button
  fill(colour);
  stroke(#000000);
  strokeWeight(3);
  strokeCap(ROUND);
  rect(x,y,150,50);
  
  //Draws outline
  stroke(#DAA520);
  line(x-3,y-3,x-3,y+43);
  line(x-3,y-3,x+140,y-3);
  
  //Labels button
  textAlign(LEFT);
  fill(#000000);
  textFont(headingFont);
  text("Play",x+30,y+40); 
}

//Declares login button function
//This function displays the login button
public void login_button(int x, int y, int colour){
  //Draws border of button
  fill(colour);
  stroke(#000000);
  strokeWeight(3);
  strokeCap(ROUND);
  rect(x,y,100,40);
  
  //Draws outline
  stroke(#DAA520);
  line(x-3,y-3,x-3,y+35);
  line(x-3,y-3,x+95,y-3);
  
  //Labels button
  textAlign(LEFT);
  fill(#000000);
  textFont(headingFont);
  textSize(25);
  text("Log In", x+13, y+30);
}

//Declares enter button function
//This function displays the enter button
public void enter_button(int x, int y, int colour){
  //Draws border of button
  fill(colour);
  stroke(#000000);
  strokeWeight(3);
  strokeCap(ROUND);
  rect(x,y, 100, 40);
  
  //Draws outline
  stroke(#DAA520);
  line(x-3,y-3,x-3,y+35);
  line(x-3,y-3,x+95,y-3);
  
  //Labels button
  textAlign(LEFT);
  fill(#000000);
  textFont(headingFont);
  textSize(25);
  text("Enter", x+13, y+30);
}

//Declares continue button function
//This function displays the continue button
public void continue_button(int x, int y, int colour){
  //Draws border of button
  fill(colour);
  stroke(#000000);
  strokeWeight(3);
  strokeCap(ROUND);
  rect(x,y,130,40);
  
  //Draws outline
  stroke(#DAA520);
  line(x-3,y-3,x-3,y+35);
  line(x-3,y-3,x+125,y-3);
  
  //Labels button
  textAlign(LEFT);
  fill(#000000);
  textFont(headingFont);
  textSize(25);
  text("Continue", x+7, y+30);
}

//Declares skip button function
//This function displays the skip button
public void skip_button(int x, int y, int colour){
  //Draws border of button
  fill(colour);
  stroke(#000000);
  strokeWeight(3);
  strokeCap(ROUND);
  rect(x,y, 70, 40);
  
  //Draws outline
  stroke(#DAA520);
  line(x-3,y-3,x-3,y+35);
  line(x-3,y-3,x+65,y-3);
  
  //Labels button
  textAlign(LEFT);
  fill(#000000);
  textFont(headingFont);
  textSize(25);
  text("Skip", x+10, y+30);
}

//Declares slot function
//This function displays the slot
public void slot(int x, int y, int colour){
  //Draws border of slot
  noStroke();
  fill(colour);
  rect(x,y,150,35);
  strokeWeight(3);
  stroke(#000000);
  line(x,y,x+20,y);
  line(x,y,x,y+20);
  line(x+147,y+32,x+127,y+32);
  line(x+147,y+32,x+147,y+12);
}

//Declares help button function
//This function displays the help button
public void help_button(int colour){
  //Draws border of button
  strokeWeight(3);
  stroke(#000000);
  fill(colour);
  circle(470, 30, 40);
  
  //Labels button
  textFont(textFont);
  textSize(25);
  fill(#000000);
  text("?", 464, 39);
}

//Declares play again button function
//This function displays the play again button
public void playAgain_button(int x, int y, int colour){
  //Draws border of button
  fill(colour);
  stroke(#000000);
  strokeWeight(3);
  strokeCap(ROUND);
  rect(x,y,150,40);
  
  //Draws outline
  stroke(#DAA520);
  line(x-3,y-3,x-3,y+35);
  line(x-3,y-3,x+145,y-3);
  
  //Labels button
  textAlign(LEFT);
  fill(#000000);
  textFont(headingFont);
  textSize(25);
  text("playAgain", x+13, y+30);
}

//Declares exit button function
//This function displays the exit button
public void exit_button(int x, int y, int colour){
  //Draws border of button
  fill(colour);
  stroke(#000000);
  strokeWeight(3);
  strokeCap(ROUND);
  rect(x,y, 75, 40);
  
  //Draws outline
  stroke(#DAA520);
  line(x-3,y-3,x-3,y+35);
  line(x-3,y-3,x+70,y-3);
  
  //Labels button
  textAlign(LEFT);
  fill(#000000);
  textFont(headingFont);
  textSize(25);
  text("exit", x+13, y+30);
}
