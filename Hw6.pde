//homework 6
//miranda craghead
//booleans to keep track of the screen 
boolean hard=false;
boolean easy=false; 
boolean easyKey =false;
boolean hardKey =false;
int easyCounter=200; 
int hardCounter=110;
int easyScore=0; 
//hard score should grow faster 
int hardScore=0; 
//initalizing the variable to be printed to the screen 
char easyVariable = (char) random(97,122);
//initalizing with a capital and then going to include capital and noncaptial letters in
//the code 
char hardVariable = (char) random(65,90);
int randomVariableHandler; 

void setup(){
  //menu
  size(600,600);
  background(0,255,255);
  textSize(75);
  fill(247,0,236);
  text("Typing Game",65,100);
  fill(0,0,255);
  textSize(30);
  text("menu",250,150);
  fill(247,0,236);
  stroke(255);
  rectMode(CENTER);
  rect(300,300,150,75);
  rect(300,400,150,75);
  fill(0,0,255);
  text("Start", 270,310);
  text("Quit", 270,410);
}

void draw(){
  //checking the boolean values 
  //println("easy" + easy);
  //println("hard" + hard);
  
  //easy game level 
  //just using lowercase alphabet as characters 
   //following the ascii table 
  if(easy && easyCounter>0){
    //rectangle to erase new characters 
    noStroke();
    fill(0,255,100);
    rect(100,150,500,300);
    fill(0,0,255);
    //correct key was pressed
    //change the color of the character
      if(easyKey && easyCounter>0){
        fill(0,255,255);
        if(easyCounter==1){
          easyKey=false;
        }
      }
    textSize(200);
    text(easyVariable,250,350);
    //counter for how long to stay on the screen 
    easyCounter--;
     if(easyCounter==0){
       //rectangle to erase old score value 
      fill(0,255,100);
      rect(500,560,100,20);
      //redefine the variable and easyCounter 
      easyVariable = (char) random(97,122);
      easyCounter =200;
      textSize(25);
      fill(0,0,255);
      text(easyScore,500,580);
    }
    //need to keep track if the user enters the correct key and add a score based on
    //what time is left on the counter 
  }
  else if(hard && hardCounter>0){
    noStroke();
    fill(255,0,0);
    rect(100,150,500,300);
    fill(0,0,255);
    textSize(200);
    //correct key was pressed
      if(hardKey && hardCounter>0){
        fill(0,255,0);
        if(hardCounter==1){
          hardKey=false;
        }
      }
    text(hardVariable,250,350);
    //counter for how long to stay on the screen 
    hardCounter--;
     if(hardCounter==0){
      //rectangle to erase old score value 
      fill(255,0,0);
      rect(500,560,100,20);
      textSize(25);
      fill(0,255,255);
      text(hardScore,500,580);
      //redefine the variable and hardCounter 
      randomVariableHandler = (int) random(0,52);
    if(randomVariableHandler<26){
      hardVariable = (char) (randomVariableHandler+65);
    }
    else{
      hardVariable = (char) (randomVariableHandler+71);
    }
    
    hardCounter =110; 
  } 
}
}
void mousePressed(){
  //start game 
  if((mouseX<375 && mouseX>225) && (mouseY>262.5 && mouseY<337.5)){
    //start the game 
    background(255,255,0);
    fill(0,255,255);
    textSize(60);
    text("Difficulity level",90,70);
    
    //dificulty page 
    //easy options
    rectMode(CORNER);
    rect(100,100,150,50);
    fill(255);
    textSize(30);
    text("Easy",140,140); 
    
    //hard options 
    fill(0,255,255);
    rect(350,100,150,50);
    fill(255);
    text("Hard",390,140);
    
    //quiting 
    rectMode(CORNER);
    rect(430,530,150,50);
    fill(0);
    textSize(20);
    text("restart",470,560); 
    
    //instruction
      fill(0,0,255);
      textSize(15);
      text("Goal: Type the displayed", 200, 220);
      text("character before the time", 200, 240);
      text("runs out.",200,260);
      text("The quicker you type",200,300);
      text("the more points you will get",200,320); 
      text("per character.",200,340);
      
      //easy
      textSize(25);
      fill(0,0,255);
      text("Easy Instructions", 50,200);
      textSize(18);
      text("No deductions for typing the",50,380);
      text("wrong character.",50,400);
      text("Only lower case alphabetic",50,440);
      text("letters displayed.",50,460);
      
      
      
      //hard
      textSize(25);
      fill(0,0,255);
      text("Hard Instructions", 350,200);
      textSize(18);
      text("10 point Deduction for",350,380);
      text("typing the wrong character.",350,400);
      text("Lower and Upper case",350,440);
      text("alphabetic letters displayed.",350,460);
      
  }
  //quit
  else if((mouseX>225 && mouseX<375)&&(mouseY>362.5 && mouseY<437.5)){
    exit();
    //if you want the code to loop and never exit 
    //background(0);
    //textSize(100);
    //fill(255);
    //text("Game over",40,300);
    //rectMode(CORNER);
    //rect(430,530,150,50);
    //fill(0);
    //textSize(20);
    //text("restart",470,560); 
  }
  //restarting to the front page 
  if((mouseX>430 && mouseX<580) &&(mouseY>530 && mouseY<580)){
       background(0,255,255);
       textSize(75);
       fill(247,0,236);
       text("Typing Game",65,100);
       fill(0,0,255);
       textSize(30);
       text("menu",250,150);
       fill(247,0,236);
       stroke(255);
       rectMode(CENTER);
       rect(300,300,150,75);
       rect(300,400,150,75);
       fill(0,0,255);
       text("Start", 270,310);
       text("Quit", 270,410);
    }
    //difficulty easy
    if((mouseX>100 && mouseX<250)&&(mouseY>100 && mouseY<150)){
      easy=true; 
      background(0,255,100);
      //display difficulty level
      fill(0,0,255);
      textSize(20);
      text("Easy",5,20);
      //display a quit option
      rectMode(CORNER);
      stroke(255,0,0);
      fill(247,0,236);
      rect(5,30,40,15);
      fill(255,255,0);
      textSize(15);
      text("Quit",10,43);
      //display the text for score 
      textSize(30);
      fill(0,0,255);
      text("Score: ", 410,580);
      
    }
    //exiting difficulity easy/hard
    if((mouseX>5 && mouseX<45)&&(mouseY>30 && mouseY<45)){
      
      background(0);
      textSize(40);
      fill(255);
      //testing the mode you were in 
      if(hard){
        text(hardScore,380,300);
      }
      else if(easy){
        text(easyScore,380,300);
      }
      //have a reset button 
      fill(255);
      noStroke();
      rectMode(CORNER);
      rect(430,530,150,50);
      fill(0);
      textSize(20);
      text("restart",470,560); 
      //display the score 
      fill(255);
      //deal with the actual score component 
      textSize(40);
      text("Your final score is: ",10,300);  
      //reset the score values 
      easyScore=0;
      hardScore=0;
      //reset the easy and hard boolean variables
      easy=false; 
      hard=false;
      
      
    }
    //difficulity hard 
    if((mouseX>350 && mouseX<500) &&(mouseY>100 && mouseY<150)){
      hard=true; 
      background(255,0,0);
      //display difficulity level 
      fill(0,255,255);
      textSize(25);
      text("Hard",5,20);
      //display a quit option
      rectMode(CORNER);
      stroke(255,0,0);
      fill(0,255,255);
      rect(5,30,40,15);
      fill(0,0,255);
      textSize(15);
      text("Quit",10,43);
      //display the text for score 
      textSize(30);
      fill(0,255,255);
      text("Score: ", 410,580);
    }
}
//once the key is pressed make it vanish 
  void keyPressed(){
   if(easy && key==easyVariable){
     //keeping track difficulty 
     //more points for the quicker you respond
     easyScore += (20 + easyCounter*(1/5.0)); 
     //redefine the key so the score isn't in a nonstop loop
     //choose a character never displayed
     key='*'; 
     //boolean to change the color of the text once it is typed correctly 
     easyKey =true;
   }
   else if(hard && key==hardVariable){
     hardScore+= (50 + hardCounter*(1/2.0));
     key='*';
     hardKey=true; 
   }
   //subtracting from the score if you press the wrong key 
   else if(hard&& key!=hardVariable){
     hardScore-=10;
     key='*';
   }
  }