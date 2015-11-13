final int GAME_START = 0;
final int GAME_RUN = 1;
final int GAME_WIN = 2 ;
final int GAME_OVER = 3;
int gameState;

PImage bg ;
PImage start ;
PImage win ;
PImage lose ;
PImage bird ;
PImage monster ;
PImage pokeball ;

boolean monsterAlive  ;
float monsterX = 0 ; 
float monsterY = 0 ; 

boolean birdAlive  ;
float birdX = 0 ; 
float birdY = 0 ;
float birdYalpha = 3 ;
float birdYspeed = 0 ;

int successCount = 0 ; 
int count = 0 ;

void setup(){
  size (640,480);
  
  bg = loadImage("img/bg.jpg") ;  
  start = loadImage("img/start.png") ; 
  win = loadImage("img/win.jpg") ;
  bird = loadImage("img/bird.png") ;
  monster = loadImage("img/monster.png") ;
  pokeball = loadImage("img/pokeball.png") ;

  // load images
  gameState = GAME_START;
  
  // init var
  monsterAlive = true ;
  monsterX = random(0 , width - monster.width) ; 
  monsterY = random(0 , height - monster.height) ; 
}

void draw(){
  // default frame rate ;  60 
  count++ ; 
  background(255);

  switch (gameState){
    case GAME_START:
      image(bg,0,0) ;
      image(start,0,0);

      break;

    case GAME_RUN:

            
        if (successCount >= 10){
          gameState = GAME_WIN ;
        }
        
        if (count % 180 == 0 && !monsterAlive){
          monsterAlive = true ; 
          monsterX = random(0 , width - monster.width) ; 
          monsterY = random(0 , height - monster.height) ;
           
        }
        
        if (count % 240 == 30 ){
          birdX = width + bird.width ;
          birdY = random( bird.height,height / 2 ) ;
          print (birdX + " " + birdY) ;
          
          
          if (random(1) > .5 ){
            birdYalpha = random (2 , 3) ;
            birdYspeed = random (-0.2 , -0.1) ; 
          }else{
            birdYalpha = random (-3 , -2) ;
            birdYspeed = random (0.1 ,0.2) ;
          }
        }
        birdX-= 10 ;
        birdY += birdYalpha ;
        birdYalpha += birdYspeed ; 
        
        


                
        image(bg,0,0) ;
        image(bird , birdX , birdY);
        image(monster , monsterX , monsterY);
        
         if (mousePressed ){
          imageMode(CENTER);
          image(pokeball,mouseX,mouseY);
          imageMode(CORNER);
      
        }

      break;

    case GAME_WIN:
      image(win,0,0);
      break;
  }
  
}


void keyReleased() {
  if ( (keyCode == ENTER || keyCode == RETURN && gameState != GAME_RUN)) {
    gameState = GAME_RUN ;
  }
}

void mouseReleased(){
  if (!( 
 mouseX > monsterX  + monster.width    || 
 monsterX  > mouseX   ||
 mouseY > monsterY  + monster.height   || 
 monsterY  > mouseY  
)){
  println ("good");
   successCount+= 1 ; 
   monsterX = -monster.width ; 
  }

    if (!( 
 mouseX > birdX  + monster.width    || 
 birdX  > mouseX   ||
 mouseY > birdY  + monster.height   || 
 birdY  > mouseY  
)){ 
  println ("bird");
   successCount+= 1 ; 
   birdX = -bird.width ; 
  }
  
}final int GAME_START = 0;
final int GAME_RUN = 1;
final int GAME_WIN = 2 ;
final int GAME_OVER = 3;
int gameState;

PImage bg ;
PImage start ;
PImage win ;
PImage lose ;
PImage bird ;
PImage monster ;
PImage pokeball ;

boolean monsterAlive  ;
float monsterX = 0 ; 
float monsterY = 0 ; 

boolean birdAlive  ;
float birdX = 0 ; 
float birdY = 0 ;
float birdYalpha = 3 ;
float birdYspeed = 0 ;

int successCount = 0 ; 
int count = 0 ;

void setup(){
  size (640,480);
  
  bg = loadImage("img/bg.jpg") ;  
  start = loadImage("img/start.png") ; 
  win = loadImage("img/win.jpg") ;
  bird = loadImage("img/bird.png") ;
  monster = loadImage("img/monster.png") ;
  pokeball = loadImage("img/pokeball.png") ;

  // load images
  gameState = GAME_START;
  
  // init var
  monsterAlive = true ;
  monsterX = random(0 , width - monster.width) ; 
  monsterY = random(0 , height - monster.height) ; 
}

void draw(){
  // default frame rate ;  60 
  count++ ; 
  background(255);

  switch (gameState){
    case GAME_START:
      image(bg,0,0) ;
      image(start,0,0);

      break;

    case GAME_RUN:

            
        if (successCount >= 10){
          gameState = GAME_WIN ;
        }
        
        if (count % 180 == 0 && !monsterAlive){
          monsterAlive = true ; 
          monsterX = random(0 , width - monster.width) ; 
          monsterY = random(0 , height - monster.height) ;
           
        }
        
        if (count % 240 == 30 ){
          birdX = width + bird.width ;
          birdY = random( bird.height,height / 2 ) ;
          print (birdX + " " + birdY) ;
          
          
          if (random(1) > .5 ){
            birdYalpha = random (2 , 3) ;
            birdYspeed = random (-0.2 , -0.1) ; 
          }else{
            birdYalpha = random (-3 , -2) ;
            birdYspeed = random (0.1 ,0.2) ;
          }
        }
        birdX-= 10 ;
        birdY += birdYalpha ;
        birdYalpha += birdYspeed ; 
        
        


                
        image(bg,0,0) ;
        image(bird , birdX , birdY);
        image(monster , monsterX , monsterY);
        
         if (mousePressed ){
          imageMode(CENTER);
          image(pokeball,mouseX,mouseY);
          imageMode(CORNER);
      
        }

      break;

    case GAME_WIN:
      image(win,0,0);
      break;
  }
  
}


void keyReleased() {
  if ( (keyCode == ENTER || keyCode == RETURN && gameState != GAME_RUN)) {
    gameState = GAME_RUN ;
  }
}

void mouseReleased(){
  if (!( 
 mouseX > monsterX  + monster.width    || 
 monsterX  > mouseX   ||
 mouseY > monsterY  + monster.height   || 
 monsterY  > mouseY  
)){
  println ("good");
   successCount+= 1 ; 
   monsterX = -monster.width ; 
  }

    if (!( 
 mouseX > birdX  + monster.width    || 
 birdX  > mouseX   ||
 mouseY > birdY  + monster.height   || 
 birdY  > mouseY  
)){ 
  println ("bird");
   successCount+= 1 ; 
   birdX = -bird.width ; 
  }
  
}