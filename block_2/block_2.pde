import fisica.*;

FWorld world;
FPoly triangle1;
FPoly triangle2;
FPoly triangle3;
FBox player;
FBox enemy;
FBox floor;


int bottom = 600;
int healthY = 10;
int playerhealth = 100;
int kills = 0;
float rectX = 0;
float rectY = 590;


void setup(){
  size(800,600);
  Fisica.init(this);
  player = new FBox(20,20);
  enemy = new FBox(20,20);
  floor = new FBox(900,2);
  player.setPosition(2*width/3,0);
  enemy.setPosition(2*width/3,0);
  floor.setPosition(450,600);
  
  triangle1 = new FPoly();
  triangle1.vertex(0,0);
  triangle1.vertex(60, 0);
  triangle1.vertex(100,150);
  triangle1.setPosition(2*width/3,30);
  
  triangle2 = new FPoly();
  triangle2.vertex(0,0);
  triangle2.vertex(60, 0);
  triangle2.vertex(100,150);
  triangle2.setPosition(2*width/3+40,30);
  
  
  triangle3 = new FPoly();
  triangle3.vertex(0,0);
  triangle3.vertex(60, 0);
  triangle3.vertex(100,150);
  triangle3.setPosition(2*width/3+80,30);
  
  //triangle1.vertex(width/2,height,width/2 + 20,height,width/2 + 10,height - 15)
  //triangle1.vertex(width/2,height,width/2 + 20,height,width/2 + 10,height - 15)
  world = new FWorld();
  world.setGravity(0,200);
  world.add(player);
  world.add(enemy);
  world.add(floor);
 // world.add(triangle1);
 // world.add(triangle2);
 // world.add(triangle3);
 // world.setEdges();
  //world.add(triangle1);
}

void draw(){
  background(190,180,170);
  fill(60,0,0);
  rect(10,10,100,20);
  fill(255,0,0);
  rect(10,healthY,playerhealth,20);
  noStroke();
  fill(220,40,40);
  fill(100);
  triangle(width/2,height,width/2 + 20,height,width/2 + 10,height - 15);
  triangle(width/2+20,height,width/2 + 20+20,height,width/2 + 10+20,height - 15);
  triangle(width/2+40,height,width/2 + 20+40,height,width/2 + 10+40,height - 15);
  
    if(rectY <= bottom){
    rectY = rectY + 1.5;
    }
  
    if(mousePressed == true && rectY >= bottom ){
    rectY = rectY - 45;
    print("jump ");
    }
    if(playerhealth == 0){
      healthY = 999;
      
    }
    player.setPosition(mouseX,rectY - 10);
    player.setStatic(true);
    floor.setStatic(true);
    enemy.setStatic(false);
    world.step();
    world.draw();
    
}