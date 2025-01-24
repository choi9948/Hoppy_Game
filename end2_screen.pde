//Declares list of variables for places
int firstPlaceScore, secondPlaceScore, thirdPlaceScore;

//Declares and assigns rank calculation status variable as not completed
boolean rankCalculation = true;

//Declares end2 screen function
//This function initiates all of the graphics and calculations within this screen
public void end2_screen(){
  //Sets background colour
  background(#FFFCD8);
  
  //Draws double rectangular border
  stroke(#DAA520);
  strokeWeight(15);
  noFill();
  rect(7.5, 7.5, 485, 885);
  strokeWeight(2);
  rect(35,35,430,830);
  
  //Draws triangular corners
  fill(#DAA520);
  triangle(0,0,0,120,120,0);
  triangle(0,0,0,120,120,0);
  triangle(500,0,500,120,380,0);
  triangle(0,900,0,780,120,900);
  triangle(500,900,500,780,380,900);
  
  //Draws triangular corner design
  stroke(#FFFCD8);
  
  //Top left corner
  line(15,15,35,15);
  line(15,15,15,35);
  line(15,80,15,60);
  line(15,80,30,65);
  line(80,15,60,15);
  line(80,15,65,30);
  
  //Bottom right corner
  line(485,885,465,885);
  line(485,885,485,865);
  line(485,820,485,840);
  line(485,820,470,835); 
  line(420,885,435,870);
  line(420,885,440,885);
  
  //Bottom left corner
  line(15,885,35,885);
  line(15,885,15,865);
  line(15,820,15,840);
  line(15,820,30,835);
  line(80,885,65,870);
  line(80,885,60,885);  

  //Top right corner
  line(485,15,465,15);
  line(485,15,485,35);  
  line(485,80,485,60);
  line(485,80,470,65); 
  line(420,15,440,15);
  line(420,15,435,30);
  
  //Draws circles for each corner
  fill(#FFFCD8);
  circle(37,37,15);
  circle(463,863,15);
  circle(37,863,15);
  circle(463,37,15); 
  
  //Draws result display banner
  fill(#DAA520);
  noStroke();
  rect(100,230,300,70);
  
  //Draws leaderboard slots
  fill(#E8C15F);
  rect(200,360,170,40);
  rect(200,410,170,40);
  rect(200,460,170,40);

  //Draws medals
  fill(#D4AF37);
  circle(160,380,40);
  fill(#C0C0C0);
  circle(160,430,40);
  fill(#9F7A34);
  circle(160,480,40);
  
  //Labels the medals
  textFont(textFont);
  fill(0);
  text("#1",152,384);
  text("#2",152,434);
  text("#3",152,484);
  
  //Draws high score panel
  noFill();
  stroke(#000000);
  rect(100,200,300,500);
  
  //Displays result status
  fill(#000000);
  textFont(titleFont);
  textSize(90);
  text(result,130,280);
  
  //Labels the "results" title
  textFont(headingFont);
  text("Results",170,180);
  
  //Displays star decoration
  image(starImg,160,100);
  image(starImg,225,75);
  image(starImg,290,100);
  
  //Labels "leaderboard" subheading
  textFont(textFont);
  textSize(20);
  text("Leaderboard",190,340);
  
  
  //Displays play again button
  playAgain_button(175,550,#FCE883);
  //Checks mouse collision with play again button
  if (175 <= mouseX && mouseX <= 325 && 550<= mouseY && mouseY <= 590){
    playAgain_button(175,550,#DAA520); //Change colour
  } 
  
  //Displays exit button
  exit_button(210,620,#FCE883);
  //Checks mouse collision with exit button
  if (210 <= mouseX && mouseX <= 285 && 620<= mouseY && mouseY <= 660){
    exit_button(210,620,#DAA520); //Change colour
  } 
  
  //Checks rank calculation status
  if (rankCalculation){
    for (int i = 0; i < multiplayerScores.length; i++){
      //Checks for greater first place
      if (multiplayerScores[i] > firstPlaceScore){
        //Shifts existing places
        thirdPlaceScore = secondPlaceScore;
        secondPlaceScore = firstPlaceScore;
        
        //Assigns new place
        firstPlaceScore = multiplayerScores[i];
      
      //Checks for greater second place
      } else if (multiplayerScores[i] > secondPlaceScore) {
        //Shifts existing places
        thirdPlaceScore = secondPlaceScore;
        
        //Assigns new place
        secondPlaceScore = multiplayerScores[i];
      
      //Checks for greater third place
      } else {
        //Assigns new high score
        thirdPlaceScore = multiplayerScores[i];
      }
    }
    //Update rank calculation status to completed
    rankCalculation = false;
  }
  
  //Displays player and scores in its corresponding positions
  rankDisplay(firstPlaceScore, 220,385);
  rankDisplay(secondPlaceScore, 220,435);
  rankDisplay(thirdPlaceScore, 220,485);
}

//Declares the rank display function
//This function identifies the player that coresponds to the score of the places (ranks)
public void rankDisplay (int placeScore, int x, int y) {
  //Text formatting of rank display
  textFont(basicFont);
  fill(0);
  
  //Checks for correspondence with player 1 score
  if (placeScore == score1){
    text("Player 1", x, y); //Display player 1 name
    text(placeScore, x + 120, y + 7); //Displays player 1 score
    
  //Checks for correspondence with player 2 score
  } else if (placeScore == score2) {
    text("Player 2",x,y); //Display player 2 name
    text(placeScore, x + 120, y + 7); //Displays player 1 score
    
  //Checks for correspondence with player 3 score
  } else if (placeScore == score3) {
    text("Player 3", x, y); //Display player 3 name
    text(placeScore, x + 120, y + 7); //Displays player 1 score
  }
}
