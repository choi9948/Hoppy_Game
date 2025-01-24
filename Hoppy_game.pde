/**
* <h1> Hoppy Game </h1>
* This Hoppy Game program implements an entertaining application that allows the user(s) to perform a platformer dodging game.
* The player(s) are required to sucessfully dodge the moving and fixed obstacles while obtaining as much points as possible 
* by collecting the golden apples. Successfully completing all 10 levels will result in a victory.
* <p> 
* Players are required to create a new username and password which will be reused when logging in to play again. User input of
* the difficulty level, player mode, and the number of players will be required before playing the game. At the end, players
* would recieve a choice of playing again or exiting the game.
* <p>
* The objective of the game is to enhance the players' concentration level, memory, and hand-eye coordination. Essentially, its
* purpose is to offer a source of entertainment and alleviate boredom.
* 
* @author  Seunghee Choi
* @version 1.0
* @since   2024-01-18
*/

import java.io.*;

//Declares a list of variables for images
PImage backgroundImg1, backgroundImg2, backgroundImg3; 
PImage gameplayImg1, gameplayImg2, gameplayImg3, gameplayImg4, gameplayImg5, gameplayImg6, gameplayImg7, gameplayImg8; 
PImage birdImg1, birdImg2, birdImg3; 
PImage appleImg, airplaneImg, spikeImg; 
PImage starImg;

//Declares a list of variables for fonts
PFont titleFont, headingFont, textFont, basicFont;

//Declares a list of variables required for gameplay
int page = 1, players = 0, game = 1;
String playerMode;

//Declares a list of variables necessary for login and game configuration
String username = "", password = ""; 
String originalUsername, originalPassword;
boolean usernameTyping = false, passwordTyping = false, playersTyping = false;
boolean invalidInput = false; 

//Declares a list of variables for file.i.o.
BufferedReader reader;
PrintWriter writer;

public void setup(){
  //Sets the game screen dimensions
  size(500,900);
  
  //Assigns fonts
  titleFont = createFont("RobusFont.otf",180);
  headingFont = createFont("TenyFont.otf",40);
  textFont = createFont("MelancholySerifFont.otf",15);
  basicFont = createFont("FreeSansFont.otf",15);
   
  //Assigns background images
  backgroundImg1 = loadImage("floating_islands.jpg");
  backgroundImg2 = loadImage("victory_bird.png");
  backgroundImg3 = loadImage("gameover_bird.jpg");
  
  //Assigns gameplay background images
  gameplayImg1 = loadImage("daytime_forest.jpg");
  gameplayImg2 = loadImage("nighttime_forest.jpg");
  gameplayImg3 = loadImage("daytime_streets.jpg");
  gameplayImg4 = loadImage("sunset_streets.jpg");
  gameplayImg5 = loadImage("nighttime_streets.jpg");
  gameplayImg6 = loadImage("sky.jpg");
  gameplayImg7 = loadImage("atmosphere.jpg");
  gameplayImg8 = loadImage("galaxy.jpg");
  
  //Assings player character images
  birdImg1 = loadImage("bird1.png");
  birdImg2 = loadImage("bird2.png");
  birdImg3 = loadImage("bird3.png");
  
  //Assigns obstacles and item images
  appleImg = loadImage("golden_apple.png");
  airplaneImg = loadImage("airplane.png");
  spikeImg = loadImage("spike.png");
  
  //Assigns decoration images
  starImg = loadImage("star.png");
  
  //Initializes writer and reader 
  writer = createWriter("accounts.txt");
  reader = createReader("accounts.txt"); 
}

public void draw(){
  //Displays the appropriate screen
  if (page == 1){ 
    start_screen(); //Shows the start screen
  } else if (page == 2){
    login_screen(); //Shows the login screen
    
    //Text formatting of error messages
    textFont(basicFont);
    textSize(11);
    fill(#F94449);
     
    //Displays error message for missing username and/or password
    if(invalidInput){
      text("Must enter username and/or password.", 160, 640);  
    }
     
    //Checks and displays error message for surpassing username character limit
    if (username.length() >= 15) {
      text("Cannot exceed 14 characters.", 184, 475);
    }
     
    //Checks and displays error message for surpassing password character limit
    if (password.length() >= 15){
      text("Cannot exceed 14 characters.", 184, 555); 
    }
    
    //Checks and displays error messages for incorrect login details
    if (game > 1 && originalUsername != null && originalPassword != null){
      if(!originalUsername.equals(username) && originalPassword.equals(password)){
        text("Incorrect username.", 201, 640);
      } else if (!originalPassword.equals(password) && originalUsername.equals(username)) {
        text("Incorrect password", 203, 640);
      } else if (!originalUsername.equals(username) && !originalPassword.equals(password)){
        text("Incorrect username and password.", 170, 640);
      }
    }
  } else if (page == 3){
      gameMode1_screen(); //Shows the game mode1 screen
      
      //Text formatting of error messages
      textFont(basicFont);
      textSize(11);
      fill(#F94449);
      
      //Displays error messages for missing difficulty level
      if (invalidInput) {
        text("Must select difficulty level", 192, 690);  
      }
  } else if (page == 4){
      gameMode2_screen(); //Shows the game mode2 screen
      
      //Text formatting of error messages
      textFont(basicFont);
      textSize(11);
      fill(#F94449);
  
      //Displays error messages for missing player mode
      if (invalidInput){
        text("Must select player mode", 192, 690);  
      }
  } else if (page == 5){
      multiplayer_screen(); //Shows the multiplayer screen
      
      //Text formatting of error messages
      textFont(basicFont);
      textSize(11);
      fill(#F94449);
      
      //Displays error messages for invalid input of number of players
      if (invalidInput){
        text("Must enter 2 or 3.", 210, 690);  
      }   
  } else if (page == 6){
      storyline_screen();   //Shows the storyline screen
  } else if (page == 7){
      tutorial_screen();    //Shows the tutorial screen
  } else if (page == 8){
      gameplay_screen();    //Shows the gameplay screen
  } else if (page == 9){
    gameover_screen();      //Shows the gameover screen
  } else if (page == 10){
      victory_screen();     //Shows the victory screen
  } else if (page == 11) {
    end1_screen();          //Shows the end1 screen
  } else if (page == 12) {
    end2_screen();          //Shows the end2 screen
  }
}

public void mouseClicked(){
  //Left mouse interaction
  if (mouseButton == LEFT) {
    //Mouse interaction in start screen
    if (page == 1){ 
      
      //Checks mouse collision with play button
      if(175 <= mouseX && mouseX <= 325 && 570 <= mouseY && mouseY <= 620){
        page=2; //Transitions to the login screen
      } 
      
    //Mouse interaction in login screen
    } else if (page == 2){ 
      //Checks mouse collision with login button and username and passowrd input  
      if(200 <= mouseX && mouseX <= 300 && 580 <= mouseY && mouseY <= 620 && username != "" && password != ""){
        //Checks for replayed games
        if (game > 1){
          try {
            //Reads the original username from textfile
            for (int i = 1; i <= 1; i++){
              reader.readLine();
            }
            originalUsername = reader.readLine();
              
            //Reads the original password from textfile
            for (int i = 1; i <= 1; i++){
              reader.readLine();
            }
            originalPassword = reader.readLine();
              
            //Closes the reader
            reader.close();
              
          } catch (IOException e){
            e.printStackTrace(); //Handle the IOException
          } 
            
          //Validates username and password
          if(originalUsername.equals(username) && originalPassword.equals(password) && username.length() < 15 && password.length() < 15){
            page = 3; //Transitions to game mode1 screen
          }
            
        //Checks for first game and valid username and password
        } else if (game == 1 && username.length() < 15 && password.length() < 15){
          writer.println("Username: \n" + username); //Saves username to textfile
          writer.println("Password: \n" + password); //Saves password to textfile
          writer.flush();
          page = 3; //Transitions to game mode 1 screen
        }
        
      //Checks mouse collision with username slot
      } else if (180 <= mouseX && mouseX <= 330 && 430 <= mouseY && mouseY <= 465) { 
        usernameTyping = true;
        passwordTyping = false;
        invalidInput = false; //Sets input as valid
        
      //Checks mouse collision with password slot
      } else if (180 <= mouseX && mouseX <= 330 && 510 <= mouseY && mouseY <= 545) { 
        passwordTyping = true;
        usernameTyping = false;
        invalidInput = false; //Sets input as valid
        
      //Sets typing and input statuses to inactive/invalid
      } else {
        usernameTyping = false;
        passwordTyping = false;
        invalidInput = true;
      }
    
    //Mouse interaction in game mode1 screen
    } else if (page == 3){
      //Checks mouse collision with enter button and valid airplaneSpeed
      if (200 <= mouseX && mouseX <= 400 && 600 <= mouseY && mouseY <= 640 && (airplaneSpeed == slowSpeed || airplaneSpeed == mediumSpeed || airplaneSpeed == fastSpeed)){
        page = 4; //Transitions to game mode2 screen
        
      //Checks mouse collision with easy button
      } else if (175 <= mouseX && mouseX <= 325 && 350 <= mouseY && mouseY <= 385){
        airplaneSpeed = slowSpeed; //Sets airplane speed
        invalidInput = false; //Sets input as valid
      
      //Checks mouse collision with normal button
      } else if (175 <= mouseX && mouseX <= 325 && 430 <= mouseY && mouseY <= 465){
        airplaneSpeed = mediumSpeed; //Sets airplane speed
        invalidInput = false; //Sets input as valid
      
      //Checks mouse collision with difficult button
      } else if (175 <= mouseX && mouseX <= 325 && 510 <= mouseY && mouseY <= 545){
        airplaneSpeed = fastSpeed; //Sets airplane speed
        invalidInput = false; //Sets input as valid
        
      //Sets input as invalid
      } else {
        invalidInput = true;
      }
      
    //Mouse interaction in game mode2 screen
    } else if (page == 4){ 
      //Checks mouse collision with enter button
      if (200 <= mouseX && mouseX <= 300 && 600<= mouseY && mouseY <= 640){
        if (playerMode == "solo") {
          page = 6; //Transitions to storyline screen
        } else if (playerMode == "multi"){
          page=5; //Transitions to multiplayer screen
        } else {
          invalidInput = true; //Sets input as invalid
        }
      
      //Checks mouse collision with solo button
      } else if (175 <= mouseX && mouseX <= 325 && 380 <= mouseY && mouseY <= 415) {
        playerMode = "solo"; 
        players = 1;
        invalidInput = false; //Sets input as valid
        
      //Checks mouse collision with multi button
      } else if (175 <= mouseX && mouseX <= 325 && 490 <= mouseY && mouseY <= 525) {
        playerMode = "multi";
        invalidInput = false; //Sets input as valid
      } 
      
    //Mouse interaction in multiplayer screen 
    } else if (page == 5){ 
      //Checks mouse collision with continue button and valid number of players input
      if(185 <= mouseX && mouseX <= 315 && 600 <= mouseY && mouseY <= 640 && (players == 2 || players == 3)){
        page = 6; //Transitions to storyline screen
        
      //Checks mouse collision with players slot
      } else if (175 <= mouseX && mouseX <= 325 && 490<= mouseY && mouseY <= 525) {
        playersTyping = true;
        invalidInput = false; //Sets input as valid
      } else {
        playersTyping = false;
        invalidInput = true;  //Sets input as invalid
      }
    
    //Mouse interaction in storyline screen
    } else if (page == 6){ 
      //Checks mouse collision with skip button
      if(410 <= mouseX && mouseX <= 480 && 20 <= mouseY && mouseY <= 60){
         page = 7; //Transitions to tutorial screen
      }
    
    //Mouse interaction in tutorial screen
    } else if (page == 7){
      //Checks mouse collision with skip button
      if(410 <= mouseX && mouseX <= 480 && 20 <= mouseY && mouseY <= 60){
        page = 8; //Transitions to gameplay screen
      }
    
    //Mouse interaction in gameplay screen
    } else if (page == 8) {
      //Checks mouse collision with help button
      if(450 <= mouseX && mouseX <= 490 && 10 <= mouseY && mouseY <= 50){
        page = 7; //Transitions to tutorial screen
      }
    
    //Mouse interaction in gameover screen
    } else if (page == 9) {
      //Checks mouse collision with skip button
      if( 410 <= mouseX && mouseX <= 480 && 20 <= mouseY && mouseY <= 60){
        //Saves number of replayed game
        writer.println("\nGame: " + game);
        
        //Checks for 1 player
        if (players == 1){
          page = 11; //Transitions to end1 screen
          writer.println("Scores: "); 
          writer.println("Player 1: " + score1); //Saves player 1 score in textfile
          writer.flush();
          
        //For multiplayer  
        } else {
          page = 12; //Transitions to end2 screen
         
          //Checks for 2 players
          if (players == 2){
            writer.println("Scores: ");
            writer.println("Player 1: " + score1); //Saves player 1 score in textfile
            writer.println("Player 2: " + score2); //Saves player 2 score in textfile
            writer.flush(); 
          
          //For 3 players
          } else {
            writer.println("Scores: ");
            writer.println("Player 1: " + score1); //Saves player 1 score in textfile
            writer.println("Player 2: " + score2); //Saves player 2 score in textfile
            writer.println("Player 3: " + score3); //Saves player 3 score in textfile
            writer.flush();
          }
        }
      }
    
    //Mouse interaction in victory screen
    } else if (page == 10) {
      //Checks mouse collision with skip button
      if(410 <= mouseX && mouseX <= 480 && 20 <= mouseY && mouseY <= 60){
        //Saves number of replayed game
        writer.println("\nGame: " + game);
        
        //Checks for 1 player
        if (players == 1){
          page = 11; //Transitions to end1 screen
          writer.println("Scores: ");
          writer.println("Player 1: " + score1); //Saves player 1 score in textfile
        
        //For multiplayer 
        } else {
          page = 12; //Transitions to end2 screen
          
          //Checks for 2 players
          if (players == 2){
            writer.println("Scores: ");
            writer.println("Player 1: " + score1); //Saves player 1 score in textfile
            writer.println("Player 2: " + score2); //Saves player 2 score in textfile
            writer.flush(); 
            
          //For 3 players
          } else {
            writer.println("Scores: ");
            writer.println("Player 1: " + score1); //Saves player 1 score in textfile
            writer.println("Player 2: " + score2); //Saves player 2 score in textfile
            writer.println("Player 3: " + score3); //Saves player 3 score in textfile
            writer.flush();
          }
        }
      }
      
    //Mouse interaction in end1 and end2 screens
    } else if (page == 11 || page == 12){
      //Checks mouse collision with play again button
      if (175 <= mouseX && mouseX <= 325 && 550 <= mouseY && mouseY <= 590){
        page = 2; //Transitions to login screen
        game ++; //Sets replayed games 
        
        //Resets all variables
        username = "";
        password = "";
         
        //Resets variables for game configuration
        players = 0;
        airplaneSpeed = 0;
        playerMode = "";
        
        //Resets level
        level = 1;
        
        //Resets player positions
        player1x = 420;
        player1y = 800;
        player2x = 345;
        player2y = 800;
        player3x = 270; 
        player3y = 800;
        
        //Resets player scores
        score1 = 0;
        score2 = 0;
        score3 = 0;
        
        //Resets score array
        multiplayerScores[0] = 0; 
        multiplayerScores[1] = 0;
        multiplayerScores[2] = 0;
        
        //Resets player status
        status1 = "dead";
        status2 = "dead";
        status3 = "dead";
        
        //Resets calculations status
        rankCalculation = true;
        highScoreCalculation = true;
        
      //Checks mouse collision with exit button
      } else if (210 <= mouseX && mouseX <= 285 && 620 <= mouseY && mouseY <= 660){
        writer.close(); //Closes writer
        exit(); //Exits game
      }
    }
  }
}

public void keyPressed() {
  //Keyboard interaction in login screen
  if (page == 2){
    //Checks for username typing status
    if (usernameTyping){
      
      //Checks for "backspace" input and username minimum limit
      if (key == BACKSPACE && username.length() > 0){
        username = username.substring(0,username.length()-1); //Deletes character
      
      //Checks for username maximum limit
      } else if (username.length() < 15) {
        username += key; //Enters character
      }
    }
    
    //Checks for password typing status
    if (passwordTyping){
      //Checks for "backspace" input and password minimum limit
      if (key == BACKSPACE && password.length() > 0){
        password = password.substring(0,password.length()-1); //Deletes character
      
      //Checks for password maximum limit
      } else if (password.length() < 15) {
        password += key; //Enters character
      } 
    }
  }
 
  //Keyboard interaction in multiplayer screen
  if (page == 5 && playersTyping){    
    
    //Checks for "2" input
    if (key == '2'){
      players = 2; //Sets number of players to 2
      
    //Checks for "3" input
    } else if (key == '3'){
      players = 3; //Sets number of players to 3
    }
  }
 
  //Keyboard interaction in gameplay screen
  if (page == 8) {
    //Checks for "up" input and player 1 status
    if (keyCode == UP && status1 == "alive"){
      player1y -= 120; //Move player 1 upwards
      
    //Checks for "left" input and player 1 status
    } if (keyCode == LEFT && status1 == "alive") {
      player1x -= 30; //Move player 1 to the left
    
    //Checks for "right" input and player 1 status
    } if (keyCode == RIGHT && status1 == "alive"){
      player1x += 30; //Move player 1 to the right
    }
    
    //Checks for "o" input, player 2 status, and number of players 
    if (key == 'o' && status2 == "alive"  && players != 1){
      player2y -= 120; //Move player 2 upwards
      
    //Checks for "k" input, player 2 status, and number of players 
    } if (key == 'k' && status2 == "alive"  && players != 1) {
      player2x -= 30; //Move player 2 to the left
      
    //Checks for ";" input, player 2 status, and number of players 
    } if (key == ';' && status2 == "alive"  && players != 1){
      player2x += 30; //Move player 2 to the right
    }
    
    //Checks for "w" input, player 3 status, and number of players 
    if (key == 'w' && status3 == "alive" && players == 3){
      player3y -= 120; //Move player 3 upwards
      
    //Checks for "a" input, player 3 status, and number of players 
    } if (key == 'a' && status3 == "alive" && players == 3) {
      player3x -= 30; //Move player 2 to the left
      
    //Checks for "d" input, player 3 status, and number of players 
    } if (key == 'd' && status3 == "alive" && players == 3){
      player3x += 30; //Move player 3 to the right
    }  
  }
}
