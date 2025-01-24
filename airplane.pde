//Declares and assigns different airplance speeds
final float slowSpeed = 0.2;
final float mediumSpeed = 0.5;
final float fastSpeed = 1.5;

//Declares airplane dimension array
float [][] airplane = new float [4][2];

//Declares and assigns airplane x position
float xairplane = -10;

//Declares variable for airplane speed
float airplaneSpeed;


//Declares airplane map function
//This function positions the airplane image and updates the position
public void airplaneMap() {
  //Displays the airplane image
  image(airplaneImg, xairplane, 100); //airplane obstacle 1
  image(airplaneImg, xairplane, 500); //airplane obstacle 2
  
  //Updates the airplane's horizontal position
  xairplane += airplaneSpeed;
  
  //Checks if the airplane exceeds the screen boundaries
  if (xairplane <= -10 || xairplane >= 415) {
    airplaneSpeed *= -1; //reverse direction
  }
  
  //Defines coordinates of left side of airplane
  airplane[0][0] = xairplane+5; //airplane 1 left side
  airplane[0][1] = xairplane+5; //airplane 2 left side
  
  //Defines coordinates of right side of airplane
  airplane[1][0] = xairplane+85; //airplane 1 right side
  airplane[1][1] = xairplane+85; //airplane 2 right side
  
  //Defines coordinates of top side of airplane
  airplane[2][0] = 125; //airplane 1 top side
  airplane[2][1] = 525; //airplane 2 top side
  
  //Defines coordinates of bottom side of airplane
  airplane[3][0] = 185; //airplane 1 bottom side
  airplane[3][1] = 585; //airplane 2 bottom side
}

//Declares airplane collision function
//This function eliminates players when colliding with the airplanes
public void airplaneCollision (float playerx, float playery) {
  //Iterate through airplane 1 and 2
  for (int i = 0; i < airplane[0].length; i++){
    //Checks collision of player and airplane
    if (airplane[0][i] < playerx+60 && airplane[1][i] > playerx+10 && airplane[2][i] < playery+60 && airplane[3][i] > playery+10) {
      
      //Check and update position for player 1
      if (playerx == player1x && playery == player1y){
        status1= "dead";
        player1x = 1000;
        player1y = 1000;
      }
      
      //Check and update position for player 2
      if (playerx == player2x && playery == player2y){
        status2 = "dead";
        player2x = 1000;
        player2y = 1000;
      }
      
      //Check and update position for player 3
      if (playerx == player3x && playery == player3y){
        status3 = "dead";
        player3x = 1000;
        player3y = 1000;
      }
    }
  }
}
