//Declares victory screen function
//This function initiates all the graphics within this screen
public void tutorial_screen(){
  //Sets background colour
  background(#FFFCD8);
  
  //Labels heading
  textAlign(LEFT);
  fill(#000000);
  textFont(headingFont);
  text("Tutorial",15,50);
  
  //Displays skip button
  skip_button(410,20,#FCE883);
  //Checks mouse collision with skip button
  if (410 <= mouseX && mouseX <= 480 && 20<= mouseY && mouseY <= 60){
    skip_button(410,20,#DAA520); //Changes colour
  } 
  
  //Labels subheading
  fill(#71797E);
  textSize(100);
  textFont(headingFont);
  text("Objective",15,120);
  text("Obstacles",15,320);
  text("Game Controls",15,520);
  
  //Draws dividers
  strokeWeight(5);
  stroke(#DAA520);
  line(230,110,475,110);
  line(230,310,475,310);
  line(325,505,475,505);
  
  //Labels obstacles subheadings
  textSize(20);
  textFont(textFont);
  fill(#000000);
  text("1) Mandatory Objective",50,150);
  text("2) Optional Objective",50,220);
  text("1) Fixed Obstacles",50,350);
  text("2) Moving Obstacles",50,420);
  
  //Labels game controls subheadings
  textSize(18);
  text("Player 1",95,570);
  text("Player 2",335,570);
  text("Player 3",215,740);
    
  //Text formatting of descriptions 
  textSize(15);
  textFont(basicFont);
  fill(#71797E);
  
  //Displays the objective descriptions
  text("Ascend to the top of Hoppy land assist Hoppy Bird obtain its \nnew functional pair of wings to replace its broken wings.",65,175);
  text("Collect the small golden apples to raise Hoppy Bird's happiness \nlevel.",65,245);
  
  //Displays the obstacle descriptions
  text("Watch your steps! There may be razor-sharp spikes, invisible \nwindows, and unstable platforms blocking your path.",65,375);
  text("Hold on to your feathers! Brace yourselves for the unpredictable \nwhirlwinds and zooming airplanes.",65,445);
  
  //Formatting of game controls
  stroke(#71797E);
  strokeWeight(4);
  fill(#FCE883);
  
  //Draw control key boxes for player 1
  rect(60,640,40,40,10,10,10,10);
  rect(110,590,40,40,10,10,10,10);
  rect(160,640,40,40,10,10,10,10);
  
  //Draw control key boxes for player 2
  rect(300,640,40,40,10,10,10,10);
  rect(350,590,40,40,10,10,10,10);
  rect(400,640,40,40,10,10,10,10);
  
  //Draw control key boxes for player 3
  rect(180,810,40,40,10,10,10,10);
  rect(230,760,40,40,10,10,10,10);
  rect(280,810,40,40,10,10,10,10);
  
  //Label game control keys
  textSize(18);
  textFont(textFont);
  fill(#000000);
  text("W",363,615);
  text("A",315,665);
  text("D",415,665);
  text("O",245,787);
  text("K",195,837);
  text(";",298,835);
  
  //Draw arrow keys
  strokeWeight(2);
  stroke(#000000);
  line(130,600,130,620);
  triangle(125,607,130,600,135,607);
  line(70,660,90,660);
  triangle(77,655,70,660,77,665);
  line(170,660,190,660);
  triangle(183,655,190,660,183,665);
}
