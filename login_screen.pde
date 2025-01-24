//Declares login screen function
//This function initiates all the graphics within this screen
public void login_screen(){
  //Sets background colour
  background(#DAA520);
  
  //Draws panel
  stroke(#000000);
  strokeCap(ROUND);
  strokeWeight(3);
  fill(#FFFCD8);
  rect(125,250,250,400);
  
  //Text formatting of title
  textFont(titleFont);
  textAlign(CENTER);
  textSize(90);
  strokeWeight(5);
  
  //Title outline
  for(int x = -1; x < 5; x++){
    fill(#000000);
    text("Hoppy\nLand", 245+x,320);
    text("Hoppy\nLand", 245,320+x);
  }
  
  //Display title
  fill(#FCE883);
  text("Hoppy\nLand", 245,320);
  
  //Display login button
  login_button(200,580,#FCE883);
  //Check mouse collision with login button
  if (200 <= mouseX && mouseX <= 300 && 580<= mouseY && mouseY <= 620){
    login_button(200,580,#DAA520); //Changes colour
  } 
  
  //Labels username and password slots
  textFont(textFont);
  text("USERNAME",180,420);
  text("PASSWORD",180,500);
  
  //Displays slots
  slot(180,430,#FCE883); //Username slot
  slot(180,510,#FCE883); //Password slot
  
  //Check mouse collision with username slot
  if (180 <= mouseX && mouseX <= 330 && 430<= mouseY && mouseY <= 465){
    slot(180,430,#DAA520); //Changes colour
  } 
  
  //Check mouse collision with password slot
  if (180<= mouseX && mouseX <= 330 && 510<= mouseY && mouseY <= 545){
    slot(180,510,#DAA520); //Changes colour
  } 
  
  //Displays user input of username and password
  textFont(basicFont);
  fill(#000000);   
  text(username,195,452);
  text(password,195,532); 
}
