//Declares randomized platform type
int platformType = (int) (random(1,4));

//Declares platform dimension arrays
float [][] platform1 = new float [4][10];
float [][] platform2 = new float [4][12];
float [][] platform3 = new float [4][11];

//Declares collision variable
boolean collision;

//Declares platform 1 function
//This function positions the platforms of map 1
public void platform1 (float x, float y, float z) {
  //Sets platform type to 1
  platformType = 1;
 
  //Draw outline of platforms
  strokeWeight(15);
  stroke(#000000);
  line(x,100,x+120,100);
  line(y+50,200,y+170,200);
  line(z+270,300,z+380,300);
  line(x+60,400,x+170,400);
  line(y+20,500,y+100,500);
  line(y+150,500,y+270,500);
  line(z+300,600,z+440,600);
  line(x+200,700,x+320,700);
  line(y+80,800,y+170,800);
  line(250,870,480,870);

  //Draw platforms
  strokeWeight(9);
  stroke(#FFFCD8);
  line(x,100,x+120,100);
  line(y+50,200,y+170,200);
  line(z+270,300,z+380,300);
  line(x+60,400,x+170,400);
  line(y+20,500,y+100,500);
  line(y+150,500,y+270,500);
  line(z+300,600,z+440,600);
  line(x+200,700,x+320,700);
  line(y+80,800,y+170,800);
  line(250,870,480,870);
  
  //Assignment of left boundaries of platform 1
  platform1 [0][0] = x-7.5;
  platform1 [0][1] = y+42.5;
  platform1 [0][2] = z+262.5;
  platform1 [0][3] = x+52.5;
  platform1 [0][4] = y+12.5;
  platform1 [0][5] = y+142.5;
  platform1 [0][6] = z+292.5;
  platform1 [0][7] = x+192.5;
  platform1 [0][8] = y+72.5;
  platform1 [0][9] = 242.5;
  
  //Assignment of top boundaries of platform 1
  platform1 [1][0] = 92.5;
  platform1 [1][1] = 192.5;
  platform1 [1][2] = 292.5;
  platform1 [1][3] = 392.5;
  platform1 [1][4] = 492.5;
  platform1 [1][5] = 492.5;
  platform1 [1][6] = 592.5;
  platform1 [1][7] = 692.5;
  platform1 [1][8] = 792.5;
  platform1 [1][9] = 862.5;
  
  //Assingment of right boundaries of platform 1
  platform1 [2][0] = x+127.5;
  platform1 [2][1] = y+177.5;
  platform1 [2][2] = z+387.5;
  platform1 [2][3] = x+177.5;
  platform1 [2][4] = y+107.5;
  platform1 [2][5] = y+277.5;
  platform1 [2][6] = z+447.5;
  platform1 [2][7] = x+327.5;
  platform1 [2][8] = y+177.5;
  platform1 [2][9] = 487.5;
  
  //Assignment of bottom boundaries of platform 1
  platform1 [3][0] = 107.5;
  platform1 [3][1] = 207.5;
  platform1 [3][2] = 307.5;
  platform1 [3][3] = 407.5;
  platform1 [3][4] = 507.5;
  platform1 [3][5] = 507.5;
  platform1 [3][6] = 607.5;
  platform1 [3][7] = 707.5;
  platform1 [3][8] = 807.5;
  platform1 [3][9] = 877.5;
}

//Declares platform 2 function
//This function positions the platforms of map 2
public void platform2 (float x, float y, float z) {
  //Sets platform type to 2
  platformType = 2;

  //Draw outline of platforms
  strokeWeight(15);
  stroke(#000000);
  line(x+8,100,x+120,100);
  line(x+270,100,x+360,100);
  line(y+120,200,y+260,200);
  line(z+270,300,z+380,300);
  line(x+20,400,x+120,400);
  line(x+170,400,x+250,400);
  line(y+330,500,y+440,500);
  line(z+300,600,z+440,600);
  line(z+200,600,z+260,600);
  line(x+110,700,x+220,700);
  line(y+220,800,y+320,800);
  line(250,870,480,870);
  
  //Draw platforms
  strokeWeight(9);
  stroke(#FFFCD8);
  line(x+8,100,x+120,100);
  line(x+270,100,x+360,100);
  line(y+120,200,y+260,200);
  line(z+270,300,z+380,300);
  line(x+20,400,x+120,400);
  line(x+170,400,x+250,400);
  line(y+330,500,y+440,500);
  line(z+300,600,z+440,600);
  line(z+200,600,z+260,600);
  line(x+110,700,x+220,700);
  line(y+220,800,y+320,800);
  line(250,870,480,870);
  
  //Assignment of left boundaries of platform 2
  platform2 [0][0] = x+0.5;
  platform2 [0][1] = x+262.5;
  platform2 [0][2] = y+112.5;
  platform2 [0][3] = z+262.5;
  platform2 [0][4] = x+12.5;
  platform2 [0][5] = x+162.5;
  platform2 [0][6] = y+322.5;
  platform2 [0][7] = z+292.5;
  platform2 [0][8] = z+192.5;
  platform2 [0][9] = x+102.5;
  platform2 [0][10] = y+212.5;
  platform2 [0][11] = 242.5;
  
  //Assignment of top boundaries of platform 2
  platform2 [1][0] = 92.5;
  platform2 [1][1] = 92.5;
  platform2 [1][2] = 192.5;
  platform2 [1][3] = 292.5;
  platform2 [1][4] = 392.5;
  platform2 [1][5] = 392.5;
  platform2 [1][6] = 492.5;
  platform2 [1][7] = 592.5;
  platform2 [1][8] = 592.5;
  platform2 [1][9] = 692.5;
  platform2 [1][10] = 792.5;
  platform2 [1][11] = 862.5;
  
  //Assingment of right boundaries of platform 2
  platform2 [2][0] = x+127.5;
  platform2 [2][1] = x+367.5;
  platform2 [2][2] = y+267.5;
  platform2 [2][3] = z+387.5;
  platform2 [2][4] = x+127.5;
  platform2 [2][5] = x+257.5;
  platform2 [2][6] = y+447.5;
  platform2 [2][7] = z+447.5;
  platform2 [2][8] = z+267.5;
  platform2 [2][9] = x+227.5;
  platform2 [2][10] = y+327.5;
  platform2 [2][11] = 487.5;
  
  //Assignment of bottom boundaries of platform 2
  platform2 [3][0] = 107.5;
  platform2 [3][1] = 107.5;
  platform2 [3][2] = 207.5;
  platform2 [3][3] = 307.5;
  platform2 [3][4] = 407.5;
  platform2 [3][5] = 407.5;
  platform2 [3][6] = 507.5;
  platform2 [3][7] = 607.5;
  platform2 [3][8] = 607.5;
  platform2 [3][9] = 707.5;
  platform2 [3][10] = 807.5;
  platform2 [3][11] = 877.5;
}

//Declares platform 3 function
//This function positions the platforms of map 3
public void platform3(float x, float y, float z) {
  //Sets platform type 3
  platformType = 3;

  //Draw outline of platforms
  strokeWeight(15);
  stroke(#000000);
  line(x+320,100,x+460,100);
  line(y+190,200,y+310,200);
  line(z+300,300,z+420,300);
  line(z+60,300,z+140,300);
  line(x+150,400,x+350,400);
  line(y+330,500,y+440,500);
  line(z+160,600,z+310,600);
  line(x+30,700,x+200,700);
  line(x+350,700,x+440,700);
  line(y+220,800,y+320,800);
  line(250,870,480,870);
  
  //Draw platforms
  strokeWeight(9);
  stroke(#FFFCD8);
  line(x+320,100,x+460,100);
  line(y+190,200,y+310,200);
  line(z+300,300,z+420,300);
  line(z+60,300,z+140,300); 
  line(x+150,400,x+350,400);
  line(y+330,500,y+440,500);
  line(z+160,600,z+310,600);
  line(x+30,700,x+200,700);
  line(x+350,700,x+440,700);
  line(y+220,800,y+320,800);
  line(250,870,480,870);
  
  //Assignment of left boundaries of platform 3
  platform3 [0][0] = x+312.5;
  platform3 [0][1] = y+182.5;
  platform3 [0][2] = z+292.5;
  platform3 [0][3] = z+52.5;
  platform3 [0][4] = x+142.5;
  platform3 [0][5] = y+322.5;
  platform3 [0][6] = z+152.5;
  platform3 [0][7] = x+22.5;
  platform3 [0][8] = x+342.5;
  platform3 [0][9] = y+212.5;
  platform3 [0][10] = 242.5;
  
  //Assignment of top boundaries of platform 3
  platform3 [1][0] = 92.5;
  platform3 [1][1] = 192.5;
  platform3 [1][2] = 292.5;
  platform3 [1][3] = 292.5;
  platform3 [1][4] = 392.5;
  platform3 [1][5] = 492.5;
  platform3 [1][6] = 592.5;
  platform3 [1][7] = 692.5;
  platform3 [1][8] = 692.5;
  platform3 [1][9] = 792.5;
  platform3 [1][10] = 862.5;

  //Assingment of right boundaries of platform 3
  platform3 [2][0] = x+467.5;
  platform3 [2][1] = y+317.5;
  platform3 [2][2] = z+427.5;
  platform3 [2][3] = z+147.5;
  platform3 [2][4] = x+357.5;
  platform3 [2][5] = y+447.5;
  platform3 [2][6] = z+317.5;
  platform3 [2][7] = x+207.5;
  platform3 [2][8] = x+447.5;
  platform3 [2][9] = y+327.5;
  platform3 [2][10] = 487.5;
  
  //Assignment of bottom boundaries of platform 3
  platform3 [3][0] = 107.5;
  platform3 [3][1] = 207.5;
  platform3 [3][2] = 307.5;
  platform3 [3][3] = 307.5;
  platform3 [3][4] = 407.5;
  platform3 [3][5] = 507.5;
  platform3 [3][6] = 607.5;
  platform3 [3][7] = 707.5;
  platform3 [3][8] = 707.5;
  platform3 [3][9] = 807.5;
  platform3 [3][10] = 877.5;
}

//Declares check landing collision function for map 1
//This function returns the success or failure of collisions between player(s) and platforms
public boolean checkLandingCollision1(float playerx, float playery) { 
  //Iterates through number of platforms in the map
  for (int i = 0; i < platform1[0].length; i++) {
    //Check mouse collision with platforms
    if (playery+60.5 == platform1[1][i]  && playerx+35 >= platform1[0][i] && playerx+35 <= platform1[2][i]){      
      collision = true; //Set collision as successful
      break;
    } else {
      collision = false; //Set collision as unsuccessful
    }
  }
  return collision;
}

//Declares check landing collision function for map 2
//This function returns the success or failure of collisions between player(s) and platforms
public boolean checkLandingCollision2(float playerx, float playery) { 
  //Iterates through number of platforms in the map
  for (int i = 0; i < platform2[0].length; i++) {
    //Check mouse collision with platforms
    if (playery+60.5 == platform2[1][i]  && playerx+35 >= platform2[0][i] && playerx+35 <= platform2[2][i]){      
      collision = true; //Set collision as successful
      break;
    } else {
      collision = false; //Set collision as unsuccessful
    }
  }
  return collision;
}

//Declares check landing collision function for map 3
//This function returns the success or failure of collisions between player(s) and platforms
public boolean checkLandingCollision3(float playerx, float playery) { 
  //Iterates through number of platforms in the map
  for (int i = 0; i < platform3[0].length; i++) {
    //Check mouse collision with platforms
    if (playery+60.5 == platform3[1][i]  && playerx+35 >= platform3[0][i] && playerx+35 <= platform3[2][i]){      
      collision = true; //Set collision as successful
      break;
    } else {
      collision = false; //Set collision as unsuccessful
    } 
  }
  return collision;
}

//Declares fall down function
//This function handles the vertical downwards movement of players
public void fallDown() {
  switch(platformType) {
    
    //Call functions corresponding to platform type 1
    case 1:
      //Check and update vertical position of player 1
      if (player1y <= 0) {
        player1y = -75; 
      } else if (checkLandingCollision1(player1x, player1y)) {
        player1y += 0;
      } else {
        player1y+=1;  
      }       
      
      //Check and update vertical position of player 2
      if (player2y <= 0) {
        player2y = -75; 
      } else if (checkLandingCollision1(player2x, player2y)) {
        player2y += 0; 
      } else {
        player2y+=1;
      }
      
      //Check and update vertical position of player 3
      if (player3y <= 0) {
        player3y = -75; 
      } else if (checkLandingCollision1(player3x, player3y)) {
        player3y += 0; 
      } else {
        player3y+=1;
      }
      break;
      
    //Call functions corresponding to platform type 2
    case 2:
      //Check and update vertical position of player 1
      if (player1y <= 0) {
        player1y = -75; 
      } else if (checkLandingCollision2(player1x, player1y)) {
        player1y += 0;
      } else {
        player1y+=1;  
      }       
      
      //Check and update vertical position of player 2
      if (player2y <= 0) {
        player2y = -75; 
      } else if (checkLandingCollision2(player2x, player2y)) {
        player2y += 0; 
      } else {
        player2y+=1;
      }
      
      //Check and update vertical position of player 3
      if (player3y <= 0) {
        player3y = -75; 
      } else if (checkLandingCollision2(player3x, player3y)) {
        player3y += 0; 
      } else {
        player3y+=1;
      }
      break;
    
    //Call functions corresponding to platform type 3
    case 3:
      //Check and update vertical position of player 1
      if (player1y <= 0) {
        player1y = -75; 
      } else if (checkLandingCollision3(player1x, player1y)) {
        player1y += 0;
      } else {
        player1y+=1;  
      }       
      
      //Check and update vertical position of player 2
      if (player2y <= 0) {
        player2y = -75; 
      } else if (checkLandingCollision3(player2x, player2y)) {
        player2y += 0; 
      } else {
        player2y+=1;
      }
      
      //Check and update vertical position of player 3
      if (player3y <= 0) {
        player3y = -75; 
      } else if (checkLandingCollision3(player3x, player3y)) {
        player3y += 0; 
      } else {
        player3y+=1;
      }
  }
}
