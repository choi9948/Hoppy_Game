//Declares high score array
int[] highScores = new int [5];

//Declares and assigns high score calculation status variable as not completed
boolean highScoreCalculation = true;

//Declares end1 screen function
//This function initiates all of the graphics and calculations within this screen
public void end1_screen(){
  //Sets background colour
  background(#FFFCD8);
  
  //Draws double rectangular border
  stroke(#DAA520);
  strokeWeight(15);
  noFill();
  rect(7.5,7.5,485,885);
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
  
  //Draws high score slots
  fill(#E8C15F);
  rect(150,360,200,25);
  rect(150,395,200,25);
  rect(150,430,200,25);
  rect(150,465,200,25);
  rect(150,500,200,25);
   
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
  
  //Labels "high scores" subheading
  textFont(textFont);
  textSize(20);
  text("High Scores",190,340);
  
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
  
  //Checks high score calculation status
  if (highScoreCalculation){
    for (int i = 0; i < highScores.length;i++){
      //Checks for greater score
      if (score1 > highScores [i]){
        //Shifts existing high scores
        for (int j = highScores.length-1; j > i; j--){
         highScores[j] = highScores[j-1]; 
        }
        //Assigns new high score
        highScores[i] = score1;
        //Exit loop
        break;
      }
    }
    //Update high score calculation status to completed
    highScoreCalculation=false;
  }
  
  //Displays high score in its corresponding positions
  textFont(basicFont);
  text(highScores[0],245,378);
  text(highScores[1],245,413);
  text(highScores[2],245,448);
  text(highScores[3],245,483);
  text(highScores[4],245,518);
  
}
