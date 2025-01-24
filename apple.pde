//Declares apple dimension arrays
float [][] apple1 = new float [4][9];
float [][] apple2 = new float [4][9];
float [][] apple3 = new float [4][9];

//Declares eaten apple status
float [] ateApple = new float [9];

//Declares apple map 1 function
//This function positions the apple images of map 1
public void appleMap1 (float x, float y, float z) {
  //Displays apple images
  image(appleImg, x, 55);   
  image(appleImg, x+60, 55);  
  image(appleImg, y+60, 155);
  image(appleImg, z+270, 255);
  image(appleImg, x+70, 355);
  image(appleImg, y+15, 455);
  image(appleImg, z+400, 555);
  image(appleImg, x+200, 655);
  image(appleImg, y+140, 755);
  
  //Defines coordinates of left side of apples
  apple1 [0][0] = x+5; 
  apple1 [0][1] = x+65;
  apple1 [0][2] = y+65;
  apple1 [0][3] = z+275;
  apple1 [0][4] = x+75;
  apple1 [0][5] = y+20;
  apple1 [0][6] = z+405;
  apple1 [0][7] = x+205;
  apple1 [0][8] = y+145;
  
  //Defines coordinates of right side of apples
  apple1 [1][0] = x+40;
  apple1 [1][1] = x+100;
  apple1 [1][2] = y+100;
  apple1 [1][3] = z+310;
  apple1 [1][4] = x+110;
  apple1 [1][5] = y+55;
  apple1 [1][6] = z+440;
  apple1 [1][7] = x+240;
  apple1 [1][8] = y+180;
  
  //Defines coordinates of top side of apples
  apple1 [2][0] = 55;
  apple1 [2][1] = 55;
  apple1 [2][2] = 155;
  apple1 [2][3] = 255;
  apple1 [2][4] = 355;
  apple1 [2][5] = 455;
  apple1 [2][6] = 555;
  apple1 [2][7] = 655;
  apple1 [2][8] = 755;
  
  //Defines coordinates of bottom side of apples
  apple1 [3][0] = 95;
  apple1 [3][1] = 95;
  apple1 [3][2] = 195;
  apple1 [3][3] = 295;
  apple1 [3][4] = 395;
  apple1 [3][5] = 495;
  apple1 [3][6] = 595;
  apple1 [3][7] = 695;
  apple1 [3][8] = 795;
  
  //Iterates through number of apples in the map
  if (ateApple.length > 0) {
    for(int i = 0; i <= 8; i++){
      if (ateApple[i] == 1) {
        //Updates the eaten apple coordinates for elimination
        apple1[0][i] = -1;
        apple1[1][i] = -1;
        apple1[2][i] = -1;
        apple1[3][i] = -1;
      }
    }
  }
} 

//Declares apple map 2 function
//This function positions the apple images of map 2
public void appleMap2 (float x, float y, float z) {
  //Displays apple images
  image(appleImg, x, 55);   
  image(appleImg, x+60, 55);  
  image(appleImg, y+120, 155);
  image(appleImg, z+270, 255);
  image(appleImg, x+70, 355);
  image(appleImg, y+345, 455);
  image(appleImg, z+400, 555);
  image(appleImg, x+190, 655);
  image(appleImg, y+210, 755);
  
  //Defines coordinates of left side of apples
  apple2 [0][0] = x+5;
  apple2 [0][1] = x+65;
  apple2 [0][2] = y+125;
  apple2 [0][3] = z+275;
  apple2 [0][4] = x+75;
  apple2 [0][5] = y+350;
  apple2 [0][6] = z+405;
  apple2 [0][7] = x+195;
  apple2 [0][8] = y+215;
  
  //Defines coordinates of right side of apples
  apple2 [1][0] = x+40;
  apple2 [1][1] = x+100;
  apple2 [1][2] = y+160;
  apple2 [1][3] = z+310;
  apple2 [1][4] = x+110;
  apple2 [1][5] = y+385;
  apple2 [1][6] = z+440;
  apple2 [1][7] = x+230;
  apple2 [1][8] = y+250;
  
  //Defines coordinates of top side of apples
  apple2 [2][0] = 55;
  apple2 [2][1] = 55;
  apple2 [2][2] = 155;
  apple2 [2][3] = 255;
  apple2 [2][4] = 355;
  apple2 [2][5] = 455;
  apple2 [2][6] = 555;
  apple2 [2][7] = 655;
  apple2 [2][8] = 755;
   
  //Defines coordinates of bottom side of apples
  apple2 [3][0] = 95;
  apple2 [3][1] = 95;
  apple2 [3][2] = 195;
  apple2 [3][3] = 295;
  apple2 [3][4] = 395;
  apple2 [3][5] = 495;
  apple2 [3][6] = 595;
  apple2 [3][7] = 695;
  apple2 [3][8] = 795;

  //Iterates through number of apples in the map
  if (ateApple.length > 0) {
    for(int i = 0; i <= 8; i++){
      if (ateApple[i] == 1) {
        //Updates the eaten apple coordinates for elimination
        apple2[0][i] = -1;
        apple2[1][i] = -1;
        apple2[2][i] = -1;
        apple2[3][i] = -1;
      }
    }
  } 
} 

//Declares apple map 3 function
//This function positions the apple images of map 3
public void appleMap3 (float x, float y, float z) {
  //Displays apple images
  image(appleImg, x+400, 55);   
  image(appleImg, y+180, 155);  
  image(appleImg, z+110, 255);
  image(appleImg, z+300, 255);
  image(appleImg, x+140, 355);
  image(appleImg, y+340, 455);
  image(appleImg, z+280, 555);
  image(appleImg, x+170, 655);
  image(appleImg, y+220, 755);
  
  //Defines coordinates of left side of apples
  apple3 [0][0] = x+405;
  apple3 [0][1] = y+185;
  apple3 [0][2] = z+115;
  apple3 [0][3] = z+305;
  apple3 [0][4] = x+145;
  apple3 [0][5] = y+345;
  apple3 [0][6] = z+285;
  apple3 [0][7] = x+175;
  apple3 [0][8] = y+225;
  
  //Defines coordinates of right side of apples
  apple3 [1][0] = x+440;
  apple3 [1][1] = y+220;
  apple3 [1][2] = z+150;
  apple3 [1][3] = z+340;
  apple3 [1][4] = x+180;
  apple3 [1][5] = y+380;
  apple3 [1][6] = z+320;
  apple3 [1][7] = x+210;
  apple3 [1][8] = y+260;
  
  //Defines coordinates of top side of apples
  apple3 [2][0] = 55;
  apple3 [2][1] = 155;
  apple3 [2][2] = 255;
  apple3 [2][3] = 255;
  apple3 [2][4] = 355;
  apple3 [2][5] = 455;
  apple3 [2][6] = 555;
  apple3 [2][7] = 655;
  apple3 [2][8] = 755;
  
  //Defines coordinates of bottom side of apples
  apple3 [3][0] = 95;
  apple3 [3][1] = 195;
  apple3 [3][2] = 295;
  apple3 [3][3] = 295;
  apple3 [3][4] = 395;
  apple3 [3][5] = 495;
  apple3 [3][6] = 595;
  apple3 [3][7] = 695;
  apple3 [3][8] = 795;
  
  //Iterates through number of apples in the map
  if (ateApple.length > 0) {
    for(int i = 0; i <= 8; i++){
      if (ateApple[i] == 1) {
        //Updates the eaten apple coordinates for elimination
        apple3[0][i] = -1;
        apple3[1][i] = -1;
        apple3[2][i] = -1;
        apple3[3][i] = -1;
      }
    }
  }
} 

//Declares apple collision function for map 1
//This function adds 1 point when colliding with an apple
public void appleCollision1(float playerx, float playery) {
  //Iterates through number of apples in the map
  for (int i = 0; i < apple1[0].length; i++){
    if (apple1[0][i] >= playerx && apple1[1][i] <= playerx + 75  && apple1[2][i] >= playery && apple1[3][i] <= playery+75 ) {
      ateApple[i] = 1; //Sets apple status to eaten
      //Updates the eaten apple coordinates for elimination
      apple1[0][i] = -500;
      apple1[1][i] = -500;
      apple1[2][i] = -500;
      apple1[3][i] = -500;
      
      //Checks and updates score for player 1
      if (playerx == player1x && playery == player1y){
        score1++;
      }
      
      //Checks and updates score for player 2
      if (playerx == player2x && playery == player2y){
        score2++;
      }
      
      //Checks and updates score for player 3
      if (playerx == player3x && playery == player3y){
        score3++;
      }
    }
  }
}

//Declares apple collision function for map 2
//This function adds 1 point when colliding with an apple
public void appleCollision2(float playerx, float playery) {
  //Iterates through number of apples in the map
  for (int i = 0; i < apple2[0].length; i++){
    //Updates the eaten apple coordinates for elimination
    if (apple2[0][i] >= playerx && apple2[1][i] <= playerx + 75  && apple2[2][i] >= playery && apple2[3][i] <= playery+75 ) {
      ateApple[i] = 1;
      apple2[0][i] = -500;
      apple2[1][i] = -500;
      apple2[2][i] = -500;
      apple2[3][i] = -500;
      
      //Checks and updates score for player 1
      if (playerx == player1x && playery == player1y){
        score1++;
      }
      
      //Checks and updates score for player 2
      if (playerx == player2x && playery == player2y){
        score2++;
      }
      
      //Checks and updates score for player 3
      if (playerx == player3x && playery == player3y){
        score3++;
      }
    }
  }
 
}

//Declares apple collision function for map 3
//This function adds 1 point when colliding with an apple
public void appleCollision3(float playerx, float playery) {
  //Iterates through number of apples in the map
  for (int i = 0; i < apple3[0].length; i++){
    //Updates the eaten apple coordinates for elimination
    if (apple3[0][i] >= playerx && apple3[1][i] <= playerx + 75  && apple3[2][i] >= playery && apple3[3][i] <= playery+75 ) {
      ateApple[i] = 1;
      apple3[0][i] = -500;
      apple3[1][i] = -500;
      apple3[2][i] = -500;
      apple3[3][i] = -500;
      
      //Checks and updates score for player 1
      if (playerx == player1x && playery == player1y){
        score1++;
      }
      
      //Checks and updates score for player 2
      if (playerx == player2x && playery == player2y){
        score2++;
      }
      
      //Checks and updates score for player 3
      if (playerx == player3x && playery == player3y){
        score3++;
      }
    }
  }
}

//Declares apple score function
//This function calculates player score and initiates apple maps according to platform type
public void appleScore() {
 switch (platformType) {
   case 1:
     //Call functions corresponding to platform type 1
     appleMap1(30, 20, 40);
     appleCollision1(player1x, player1y);
     appleCollision1(player2x, player2y);
     appleCollision1(player3x, player3y);
     break;
   case 2:
     //Call functions corresponding to platform type 2
     appleMap2(20, -30, 15);
     appleCollision2(player1x, player1y);
     appleCollision2(player2x, player2y);
     appleCollision2(player3x, player3y);
     break;
   case 3:
     //Call functions corresponding to platform type 3
     appleMap3(-20, -30, 30);
     appleCollision3(player1x, player1y);
     appleCollision3(player2x, player2y);
     appleCollision3(player3x, player3y);
 }
}
