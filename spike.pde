//Declares spike dimension arrays
float [][] spike1 = new float [4][6];
float [][] spike2 = new float [4][6];
float [][] spike3 = new float [4][6];

//Declares spike map 1 function
//This function positions the spike images of map 1
public void spikeMap1(float x, float y, float z) {
 //Displays spike images
 image(spikeImg,y+130,160); 
 image(spikeImg,z+350,260); 
 image(spikeImg,x+130,360); 
 image(spikeImg,y+180,460);
 image(spikeImg,z+320,560);
 image(spikeImg,x+300,660);
 
 //Defines coordinates of left side of spikes
 spike1 [0][0] = y+134;
 spike1 [0][1] = z+354;
 spike1 [0][2] = x+134;
 spike1 [0][3] = y+184;
 spike1 [0][4] = z+324;
 spike1 [0][5] = x+304;
 
 //Defines coordinates of right side of spikes
 spike1 [1][0] = y+156;
 spike1 [1][1] = z+376;
 spike1 [1][2] = x+156;
 spike1 [1][3] = y+206;
 spike1 [1][4] = z+346;
 spike1 [1][5] = x+326;
 
 //Defines coordinates of top side of spikes
 spike1 [2][0] = 163;
 spike1 [2][1] = 263;
 spike1 [2][2] = 363;
 spike1 [2][3] = 463;
 spike1 [2][4] = 563;
 spike1 [2][5] = 663;
 
 //Defines coordinates of bottom side of spikes
 spike1 [3][0] = 193;
 spike1 [3][1] = 293;
 spike1 [3][2] = 393;
 spike1 [3][3] = 493;
 spike1 [3][4] = 593;
 spike1 [3][5] = 693;
}

//Declares spike map 2 function
//This function positions the spike images of map 2
public void spikeMap2(float x, float y, float z) {
 //Displays spike images
 image(spikeImg,y+230,160); 
 image(spikeImg,z+350,260); 
 image(spikeImg,x+170,360); 
 image(spikeImg,y+400,460);
 image(spikeImg,z+320,560);
 image(spikeImg,x+110,660);
 
 
 //Defines coordinates of left side of spikes
 spike2 [0][0] = y+234;
 spike2 [0][1] = z+354;
 spike2 [0][2] = x+174;
 spike2 [0][3] = y+404;
 spike2 [0][4] = z+324;
 spike2 [0][5] = x+114;
 
 //Defines coordinates of right side of spikes
 spike2 [1][0] = y+256;
 spike2 [1][1] = z+376;
 spike2 [1][2] = x+196;
 spike2 [1][3] = y+426;
 spike2 [1][4] = z+346;
 spike2 [1][5] = x+136;
 
 //Defines coordinates of top side of spikes
 spike2 [2][0] = 163;
 spike2 [2][1] = 263;
 spike2 [2][2] = 363;
 spike2 [2][3] = 463;
 spike2 [2][4] = 563;
 spike2 [2][5] = 663;
 
 //Defines coordinates of bottom side of spikes
 spike2 [3][0] = 193;
 spike2 [3][1] = 293;
 spike2 [3][2] = 393;
 spike2 [3][3] = 493;
 spike2 [3][4] = 593;
 spike2 [3][5] = 693;
}

//Declares spike map 3 function
//This function positions the spike images of map 3
public void spikeMap3(float x, float y, float z) {
 //Displays spike images
 image(spikeImg,y+260,160); 
 image(spikeImg,z+350,260); 
 image(spikeImg,x+170,360); 
 image(spikeImg,y+400,460);
 image(spikeImg,z+160,560);
 image(spikeImg,x+110,660);
 
 //Defines coordinates of left side of spikes
 spike3 [0][0] = y+264;
 spike3 [0][1] = z+354;
 spike3 [0][2] = x+174;
 spike3 [0][3] = y+404;
 spike3 [0][4] = z+164;
 spike3 [0][5] = x+114;
 
 //Defines coordinates of right side of spikes
 spike3 [1][0] = y+286;
 spike3 [1][1] = z+376;
 spike3 [1][2] = x+196;
 spike3 [1][3] = y+426;
 spike3 [1][4] = z+186;
 spike3 [1][5] = x+136;
 
 //Defines coordinates of top side of spikes
 spike3 [2][0] = 163;
 spike3 [2][1] = 263;
 spike3 [2][2] = 363;
 spike3 [2][3] = 463;
 spike3 [2][4] = 563;
 spike3 [2][5] = 663;
 
 //Defines coordinates of bottom side of spikes
 spike3 [3][0] = 193;
 spike3 [3][1] = 293;
 spike3 [3][2] = 393;
 spike3 [3][3] = 493;
 spike3 [3][4] = 593;
 spike3 [3][5] = 693;
}

//Declares spike collision function for map 1
//This function eliminates players when colliding with the spikes
public void spikeCollision1(float playerx, float playery) {
  //Iterate through the number of spikes in the map
  for (int i = 0; i < spike1[0].length; i++){
    //Checks collision of player and spike
    if (spike1[0][i] >= playerx+5 && spike1[1][i] <= playerx + 71  && spike1[2][i] >= playery+10 && spike1[3][i] <= playery+65 ) {
      
      //Check and update position for player 1
      if (playerx == player1x && playery == player1y){
        status1 = "dead";
        player1x= 1000;
        player1y= 1000;
      }
      
      //Check and update position for player 2
      if (playerx == player2x && playery == player2y){
        status2 = "dead";
        player2x= 1000;
        player2y= 1000;
      }
      
      //Check and update position for player 3
      if (playerx == player3x && playery == player3y){
        status3 = "dead";
        player3x= 1000;
        player3y= 1000;
      }
    }
  }
}

//Declares spike collision function for map 2
//This function eliminates players when colliding with the spikes
public void spikeCollision2(float playerx, float playery) {
  for (int i = 0; i < spike2[0].length; i++){
    if (spike2[0][i] >= playerx+5 && spike2[1][i] <= playerx + 71  && spike2[2][i] >= playery+10 && spike2[3][i] <= playery+65 ) {
      
      //Check and update position for player 1
      if (playerx == player1x && playery == player1y){
        status1 = "dead";
        player1x= 1000;
        player1y= 1000;
      }
      
      //Check and update position for player 2
      if (playerx == player2x && playery == player2y){
        status2 = "dead";
        player2x= 1000;
        player2y= 1000;
      }
      
      //Check and update position for player 3
      if (playerx == player3x && playery == player3y){
        status3 = "dead";
        player3x= 1000;
        player3y= 1000;
      }
    }
  }
}

//Declares spike collision function for map 3
//This function eliminates players when colliding with the spikes
public void spikeCollision3(float playerx, float playery) {
  for (int i = 0; i < spike3[0].length; i++){
    if (spike3[0][i] >= playerx+5 && spike3[1][i] <= playerx + 71  && spike3[2][i] >= playery+10 && spike3[3][i] <= playery+65 ) {
      
      //Check and update position for player 1
      if (playerx == player1x && playery == player1y){
        status1 = "dead";
        player1x= 1000;
        player1y= 1000;
      }
      
      //Check and update position for player 2
      if (playerx == player2x && playery == player2y){
        status2 = "dead";
        player2x= 1000;
        player2y= 1000;
      }
      
      //Check and update position for player 3
      if (playerx == player3x && playery == player3y){
        status3 = "dead";
        player3x= 1000;
        player3y= 1000;
      }
    }
  }
}

//Declares spike obstacle function
//This function calculates player elimination and initiates spike maps according to platform type
public void spikeObstacle(){
  switch(platformType){
    case 1:
      //Call functions corresponding to platform type 1
      spikeMap1(30,20,40);
      spikeCollision1(player1x, player1y);
      spikeCollision1(player2x, player2y);
      spikeCollision1(player3x, player3y);
      break;
    case 2:
      //Call functions corresponding to platform type 2
      spikeMap2(20,-30,15);
      spikeCollision2(player1x, player1y);
      spikeCollision2(player2x, player2y);
      spikeCollision2(player3x, player3y);
      break;
      //Call functions corresponding to platform type 3
    case 3:
      spikeMap3(-20,-30,30);
      spikeCollision3(player1x, player1y);
      spikeCollision3(player2x, player2y);
      spikeCollision3(player3x, player3y);
  }
}
