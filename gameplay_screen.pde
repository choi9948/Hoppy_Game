//Declares and assigns starting coordinates of players
float player1x = 420, player1y = 800; //Player 1 coordinates
float player2x = 345, player2y = 800; //Player 2 coordinates
float player3x = 270, player3y = 800; //Player 3 coordinates

//Declares and assigns starting level
int level = 1;

//Declares list of player scores
int score1 = 0; //Player 1 score
int score2 = 0; //Player 2 score
int score3 = 0; //Player 3 score

//Declares array to store all scores
int [] multiplayerScores = new int[3]; 

//Declares and assigns starting status of players
String status1 = "dead"; //Player 1 status
String status2 = "dead"; //Player 2 status
String status3 = "dead"; //Player 3 status

//Declares variable for the result (victory vs defeat)
String result;

//Declares gameplay screen function
//This function initiates all the graphics and animations within this screen
public void gameplay_screen(){
  //Sets background image corresponding to the level
  gameplayBackground(level);
  
  //Sets platform map coressponding to platform type
  switch(platformType){
    case 1:
      platform1(30, 20, 40); //Initiates platform 1 map
      break;
    case 2:
      platform2(20, -30, 15); //Initiates platform 2 map
      break;
    case 3:
      platform3(-20, -30, 30); //Initiates platform 3 map
  }
  
  //Initiates players corresponding to the number of players
  switch(players) {
    case 1:
      playerScore(1); //Initiates player 1 scoreboard
      image(birdImg1, player1x, player1y); //Displays player 1 character image
      status1 = "alive"; //Sets player 1 status to active
      break;
    case 2:
      playerScore(1); //Initiates player 1 scoreboard
      playerScore(2); //Initiates player 2 scoreboard
      image(birdImg1, player1x, player1y); //Displays player 1 character image
      image(birdImg2, player2x, player2y); //Displays player 2 character image
      status1 = "alive"; //Sets player 1 status to active
      status2 = "alive"; //Sets player 2 status to active
      break;
    case 3:
      playerScore(1); //Initiates player 1 scoreboard
      playerScore(2); //Initiates player 2 scoreboard
      playerScore(3); //Initiates player 3 scoreboard
      image(birdImg1, player1x, player1y); //Displays player 1 character image
      image(birdImg2, player2x, player2y); //Displays player 2 character image
      image(birdImg3, player3x, player3y); //Displays player 3 character image
      status1 = "alive"; //Sets player 1 status to active
      status2 = "alive"; //Sets player 2 status to active
      status3 = "alive"; //Sets player 3 status to active
  }
 
  //Displays help button
  help_button(#FCE883);  
  //Checks mouse collision with help button
  if (450 <= mouseX && mouseX <= 490 && 10 <= mouseY && mouseY <= 50){
    help_button(#DAA520); //Changes colour
  } 
  
  //Initiates calculations of apple scores
  appleScore();
  
  //Initiates obstacle maps
  airplaneMap(); //Airplane map
  spikeObstacle(); //Spike map
  
  //Initiates platform map and downwards movement of players
  fallDown(); 
  
  //Initiates screen boundary corrections for player positions
  screenBoundaries(player1x, player1y); //Player 1 
  screenBoundaries(player2x, player2y); //Player 2
  screenBoundaries(player3x, player3y); //Player 3
 
  //Initiates airplane colllision elimination for player positions 
  airplaneCollision(player1x, player1y); //Player 1
  airplaneCollision(player2x, player2y); //Player 2
  airplaneCollision(player3x, player3y); //Player 3
  
  //Checks for eliminated player statuses
  if (status1 == "dead" && status2 == "dead" && status3 == "dead") {
    page = 9; //Transitions to gameover screen
    result = "Defeat"; //Sets result as defeat
    
    //Stores final scores into array
    multiplayerScores[0] = score1; 
    multiplayerScores[1] = score2;
    multiplayerScores[2] = score3;
    
    //Resets eaten apple statuses
    for (int i = 0; i < ateApple.length; i++) {
      ateApple[i] = 0; 
    }
  
  //Checks for active player statuses
  } else if ((status1 == "nextlvl" || status1 == "dead") && (status2 == "nextlvl" || status2 == "dead") && (status3 == "nextlvl" || status3 == "dead")) {
    //Proceeds to the next level
    level++; 
    
    //Randomizes new platform map
    platformType = (int) (random(1,4)); 
    
    //Increases airplane speed
    airplaneSpeed *= 1.8; 
    
    //Resets eaten apple statuses
    for (int i = 0; i < ateApple.length; i++) {
      ateApple[i] = 0; 
    }
    
    //Updates status and position for successful players for the next level
    if (status1 == "nextlvl"){
      status1 = "alive";
      player1x = 420;
      player1y = 800;
    } 
    if (status2 == "nextlvl") {
      status2 = "alive";
      player2x = 345; 
      player2y = 800;
    }
    if (status3 == "nextlvl") {
      status3 = "alive"; 
      player3x = 270; 
      player3y = 800;
    }
  }
}

//Declares gameplay background function
//This function displays the background image and map number corresponding to the level
public void gameplayBackground(int level) {
  switch(level) {
    //Level 1 background and map number
    case 1:
      image(gameplayImg1, -150, 0);
      map_heading(#000000);
      break;
      
    //Level 2 background and map number
    case 2:
      image(gameplayImg2, -150, 0);
      map_heading(#FCE883);
      break;
      
    //Level 3 background and map number
    case 3:
      image(gameplayImg3, -60, -70);
      map_heading(#FCE883);
      break;
      
    //Level 4 background and map number
    case 4:
      image(gameplayImg4, -10, -120);
      map_heading(#FCE883);
      break;
      
    //Level 5 background and map number
    case 5:
      image(gameplayImg5, -50, 0);
      map_heading(#FCE883);
      break;
      
    //Level 6 background and map number
    case 6:
      image(gameplayImg6, 0, -90);
      map_heading(#FCE883);
      break;
      
    //Level 7 background and map number
    case 7:
      image(gameplayImg7, -50, 0);
      map_heading(#FCE883);
      break;
      
    //Level 8 background and map number
    case 8:
      image(gameplayImg8, -50, 0);
      map_heading(#FCE883);
      break;
      
    //Victory screen
    default:
      result = "Victory"; //Sets result to victory
      
      //Stores final scores into array
      multiplayerScores[0] = score1;
      multiplayerScores[1] = score2;
      multiplayerScores[2] = score3;
      
      page = 10; //Transitions to victory screen
  }
}


//Declares map heading function
//This function displays the map number and heading
public void map_heading(int colour){
  //Text formatting of map heading
  fill(colour);
  textAlign(LEFT);
  textFont(headingFont);
  
  //Displays map heading
  text("Map", 15, 50);
  
  //Text formatting of map number
  textFont(textFont);
  textSize(40);
  
  //Displays map number
  text(level, 105, 50);
}

//Declares player score function
//This function displays player scoreboard 
public void playerScore(int player){
  switch(player){
    //Player 1
    case 1:
      //Formatting of scoreboard box
      strokeWeight(3);
      stroke(#000000);
      fill(#A7C7E7);
     
      //Draws scoreboard box
      rect(350,12,95,30,10,10,10,10);
      
      //Text formatting of score label
      fill(#000000);
      textFont(textFont);
      textSize(20); 
      
      //Displays player 1 scores
      text("Score: " + score1, 355, 33);
      break;
    
    //Player 2
    case 2:
      //Formatting of scoreboard box
      strokeWeight(3);
      stroke(#000000);
      fill(#C1E1C1);
      
      //Draws scoreboard box
      rect(245,12,95,30,10,10,10,10);
      
      //Text formatting of score label
      fill(#000000);
      textFont(textFont);
      textSize(20); 
      
      //Displays player 2 scores
      text("Score: " + score2, 250, 33);
      break;
   
    //Player 3
    case 3:
      //Formatting of scoreboard box
      strokeWeight(3);
      stroke(#000000);
      fill(#FAA0A0);
      
      //Draws scoreboard box
      rect(140,12,95,30,10,10,10,10);
      
      //Text formatting of score label
      fill(#000000);
      textFont(textFont);
      textSize(20); 
      
      //Displays player 3 scores
      text("Score: " + score3, 145, 33);
  }  
}

//Declares screen boundaries function
//This function corrects the position of the players when surpassing the screen boundaries
public void screenBoundaries(float playerx, float playery) {
  //Checks for player movement beyond the left screen boundary
  if (playerx <= 0) {
    //Adjusts player position 
    if (playerx == player1x && playery == player1y) {
      player1x = 0; //Sets player 1 x-coordinate as left screen boundary 
    } else if (playerx == player2x && playery == player2y) {
      player2x = 0; //Sets player 2 x-coordinate as left screen boundary 
    } else if (playerx == player3x && playery == player3y) {
      player3x = 0; //Sets player 3 x-coordinate as left screen boundary 
    }
    
  //Checks for player movement beyond the right screen boundary
  } else if (playerx+75 >= 500) {
    if (playerx == player1x && playery == player1y) {
      player1x = 425; //Sets player 1 x-coordinate as right screen boundary 
    } else if (playerx == player2x && playery == player2y) {
      player2x = 425; //Sets player 2 x-coordinate as right screen boundary 
    } else if (playerx == player3x && playery == player3y) {
      player3x = 425; //Sets player 3 x-coordinate as right screen boundary 
    }
    
  //Checks for player movement beyond the top screen boundary  
  } if (playery <= 0) {
    if (playerx == player1x && playery == player1y) {
      status1 = "nextlvl"; //Sets player 1 status to next level
    } else if (playerx == player2x && playery == player2y) {
      status2 = "nextlvl"; //Sets player 2 status to next level
    } else if (playerx == player3x && playery == player3y) {
      status3 = "nextlvl"; //Sets player 3 status to next level
    }
    
  //Checks for player movement beyond the bottom screen boundary
  } else if (playery >= 835) {
    if (playerx == player1x && playery == player1y) {
      status1 = "dead"; //Sets player 1 status to dead
    } else if (playerx == player2x && playery == player2y) {
      status2 = "dead"; //Sets player 2 status to dead
    } else if (playerx == player3x && playery == player3y) {
      status3 = "dead"; //Sets player 3 status to dead
    }
  }
}
