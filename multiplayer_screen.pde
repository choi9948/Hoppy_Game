//Declares multiplayer screen function
//This function initiates all the graphics within this screen
public void multiplayer_screen(){
  //Sets background colour
  background(#E8C15F); 
  
  //Labels heading
  textAlign(LEFT);
  fill(#000000);
  textFont(headingFont);
  text("Game Mode",15,50);
  
  //Labels subheading
  textAlign(CENTER);
  text("Multiplayer",250,280);
  
  //Draws panel
  stroke(#000000);
  fill(#FFFCD8);
  rect(135,300,230,400);
  
  //Displays instructions
  fill(#000000);
  textFont(textFont);
  textSize(20);
  text("Enter number\nof players",250,400);
  
  //Displays slot
  slot(175,490,#FCE883); 
  //Checks mouse collision with slot
  if (175<= mouseX && mouseX <= 325 && 490<= mouseY && mouseY <= 525){
    slot(175,490,#DAA520); //Changes colour
  } 
  
  //Displays continue button
  continue_button(185,600,#FCE883);
  //Checks ,pise collision with continue button
  if (185 <= mouseX && mouseX <= 315 && 600<= mouseY && mouseY <= 640){
    continue_button(185,600,#DAA520); //Changes colour
  } 
  
  //Displays user input of the number of players
  textFont(basicFont);
  fill(#000000);   
  text(players,240,515);
}
