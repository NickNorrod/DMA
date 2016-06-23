int bottom = 548;
int damage = 5;
int playerhealth = 100;
int killvalueX = 50;
int kills = 0;
int health = 50;
int rectX = 0;
int rectY = 549;
int rect2X = 350;
int rect2Y = 529;


void setup (){
  size(700, 550);
  background(180,170,160);
  
}
  
void draw (){
  background(180,170,160);
  fill(220,170,220);
  rect(min(max(mouseX + rectX, width / 3 + 1), width - 21),rectY - 20,20,20);
  fill(255,0,0);
  rect(rect2X - health /4,rect2Y - 30,health,10);
  fill(220,220,170);
  rect(rect2X,rect2Y,20,20);
  fill(200);
  rect(0,0,width/3,height-1);
  fill(0);
  text("Kills:", killvalueX - 30, 20);
  fill(50,0,0);
  text(kills, killvalueX, 20);
  fill(220,220,170);
  rect(0,0,0,0);


  if(rectY <= 548){
    rectY = rectY + 1;
  }
    if(rect2Y <= 528){
    rect2Y = rect2Y + 1;
    }
  
  if(mousePressed == true && rectY > bottom ){
    rectY = rectY - 45;
    print("jump ");
  }
  if (mouseX > rect2X &&
      mouseX < rect2X + 20 &&
      rectY > 548)
  {
    print("collision ");
    health = health - damage;
    if (abs(mouseX - rect2X) > abs(mouseX - rect2X + 20))

    {
      rect2X += (mouseX-rect2X);
    }
   else
    {
      rect2X -= (mouseX-rect2X);

    }
      
  }
  
  if(health == 0){
    rect2Y = 528;
    rect2X = width/2;
    print("kill ");
    health = 50;
    kills = kills + 1;
  }
  if(playerhealth == 0){
   rectY = 0;
   print("death ");
   playerhealth = 100;
    }
  
    
  

  
  
  if(mouseX == rect2X - 20){
    rect2X = rect2X + 20;
  }
   if(mouseX == rect2X + 20){
    rect2X = rect2X - 20;
  }
    if(mouseX == rect2X && rectY == rect2Y){
    rectY = rectY - 1;
  }
     if(mouseX == rect2X - 1 && rectY == rect2Y){
    rectY = rectY - 1;
  }
     if(mouseX == rect2X - 2 && rectY == rect2Y){
    rectY = rectY - 1;
  }
     if(mouseX == rect2X - 3 && rectY == rect2Y){
    rectY = rectY - 1;
  }
     if(mouseX == rect2X - 4 && rectY == rect2Y){
    rectY = rectY - 1;
  }
     if(mouseX == rect2X - 5 && rectY == rect2Y){
    rectY = rectY - 1;
  }
     if(mouseX == rect2X - 6 && rectY == rect2Y){
    rectY = rectY - 1;
  }
     if(mouseX == rect2X - 7 && rectY == rect2Y){
    rectY = rectY - 1;
  }
     if(mouseX == rect2X - 8 && rectY == rect2Y){
    rectY = rectY - 1;
  }
     if(mouseX == rect2X - 9 && rectY == rect2Y){
    rectY = rectY - 1;
  }
     if(mouseX == rect2X - 10 && rectY == rect2Y){
    rectY = rectY - 1;
  }
     if(mouseX == rect2X + 1 && rectY == rect2Y){
    rectY = rectY - 1;
  }
     if(mouseX == rect2X + 2 && rectY == rect2Y){
    rectY = rectY - 1;
  }
     if(mouseX == rect2X + 3 && rectY == rect2Y){
    rectY = rectY - 1;
  }
     if(mouseX == rect2X + 4 && rectY == rect2Y){
    rectY = rectY - 1;
  }
     if(mouseX == rect2X + 5 && rectY == rect2Y){
    rectY = rectY - 1;
  }
     if(mouseX == rect2X + 6 && rectY == rect2Y){
    rectY = rectY - 1;
  }
     if(mouseX == rect2X + 7 && rectY == rect2Y){
    rectY = rectY - 1;
  }
     if(mouseX == rect2X + 8 && rectY == rect2Y){
    rectY = rectY - 1;
  }
     if(mouseX == rect2X + 9 && rectY == rect2Y){
    rectY = rectY - 1;
  }
     if(mouseX == rect2X + 10 && rectY == rect2Y){
    rectY = rectY - 1;
  }
  
  
  if (rect2X < 700/3)
  {
    rect2X = 700/3;
  }
  if (rect2X > 700-20)
  {
    rect2X = 700-20;
  }
}