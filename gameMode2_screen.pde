//Declares game mode2 screen function
//This function initiates all the graphics within this screen
public void gameMode2_screen(){
  //Sets background colour
  background(#E8C15F); 
  
  //Labels heading
  textAlign(LEFT);
  fill(#000000);
  textFont(headingFont);
  text("Game Mode",15,50);
  
  //Labels subheading
  textAlign(CENTER);
  text("Players",250,280);
  
  //Draws panel
  stroke(#000000);
  fill(#FFFCD8);
  rect(135,300,230,400);
  
  //Draws player mode slots
  slot(175,380,#FCE883); //Solo button
  slot(175,490,#FCE883); //Multi button
  
  //Checks mouse collision with solo slot
  if (175 <= mouseX && mouseX <= 325 && 380<= mouseY && mouseY <= 415){
    slot(175,380,#DAA520); //Changes colour
  } 
  
  //Checks mouse collision with multi slot
  if (175<= mouseX && mouseX <= 325 && 490<= mouseY && mouseY <= 525){
    slot(175,490,#DAA520); //Changes colour
  }  
  
  //Labels player mode slots
  textSize(25);
  fill(#000000);
  text("SOLO",250,407);
  text("MULTI",250,517);
  
  //Draws enter button
  enter_button(200,600,#FCE883);
  //Checks mouse collision with enter button
  if (200 <= mouseX && mouseX <= 300 && 600<= mouseY && mouseY <= 640){
    enter_button(200,600,#DAA520); //Changes colour
  } 
}
