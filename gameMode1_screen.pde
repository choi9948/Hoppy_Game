//Declares game mode1 screen function
//This function initiates all the graphics within this screen
public void gameMode1_screen(){
  //Sets backgroundcolour
  background(#E8C15F); 
  
  //Labels heading
  textAlign(LEFT);
  fill(#000000);
  textFont(headingFont);
  text("Game Mode",15,50);
  
  //Labels subheading
  textAlign(CENTER);
  text("Difficulty\nLevel",250,250);
  
  //Draws panel
  stroke(#000000);
  fill(#FFFCD8);
  rect(135,300,230,400);
  
  //Draws difficulty level slots
  slot(175,350,#FCE883); //Easy slot
  slot(175,430,#FCE883); //Normal slot
  slot(175,510,#FCE883); //Difficult slot
  
  //Checks mouse collision with easy slot
  if (175 <= mouseX && mouseX <= 325 && 350<= mouseY && mouseY <= 385){
    slot(175,350,#DAA520); //Changes colour
  } 
  
  //Checks mouse collision with normal slot
  if (175<= mouseX && mouseX <= 325 && 430<= mouseY && mouseY <= 465){
    slot(175,430,#DAA520); //Changes colour
  } 
  
  //Checks mouse collision with difficult slot
  if (175<= mouseX && mouseX <= 325 && 510<= mouseY && mouseY <= 545){
    slot(175,510,#DAA520); //Changes colour
  } 
  
  //Labels difficulty level slots
  textSize(25);
  fill(#000000);
  text("EASY", 250, 377);
  text("NORMAL", 250, 457);
  text("DIFFICULT", 250, 537);
  
  //Draws enter button
  enter_button(200,600,#FCE883);
  //Checks mouse collision with enter button
  if (200 <= mouseX && mouseX <= 400 && 600<= mouseY && mouseY <= 640){
    enter_button(200,600,#DAA520); //Changes colour
  } 
}
