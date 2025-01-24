//Declares storyline screen function
//This function initiates all the graphics within this screen
public void storyline_screen(){
  //Sets background colour
  background(#FFFCD8);
  
  //Labels heading
  textAlign(LEFT);
  fill(#000000);
  textFont(headingFont);
  text("Storyline",15,50);
  
  //Displays skip button
  skip_button(410,20,#FCE883);
  //Checks mouse collision with skip button
  if (410 <= mouseX && mouseX <= 480 && 20<= mouseY && mouseY <= 60){
    skip_button(410,20,#DAA520); //Changes colour
  } 
  
  //Draw text messages
  stroke(#000000);
  strokeWeight(1);
  fill(#DAA520);
  rect(40,90,300,120,40,40,40,0);  //narrator text message box
  rect(40,250,300,120,40,40,40,0); //narrator text message box
  rect(40,410,300,120,40,40,40,0); //narrator text message box
  rect(40,570,300,120,40,40,40,0); //narrator text message box
  fill(#FCE883);
  rect(200,760,260,80,40,40,0,40); //player text message box
  
  //Display narrator description
  textFont(textFont);
  textSize(15);
  fill(#000000);
  text("In the pixelated realm of Hoppy land,\na legendary creature known as the\nHoppy Bird inhabited the area. ",60,135);
  text("Hoppy Bird once ruled the vast skies\nof Hoppy land with its magnificent\ndives, twirls, and flaps. ",60,295);
  text("Now, he finds himself confined in\nsolitude, isolated in his nest, unable to\nexplore the skies due to its injured\nwings. ",60,445);
  text("Forbidden to soar freely and absorb\nthe elegant landscapes, Hoppy Bird\nmust embark on a dangerous quest in\nhopes to reclaim its flight.",60,605);
  
  //Display player response
  textSize(20);
  text("Let the quest begin!",235,805);
}
