float eyeheight = 60;
int mouthheight = 0;
int mouthwidth = 60;
void setup(){
  size(500,500);
  background(0);
}

void draw(){
  fill(40);
 ellipse(width/2,random(height/2,height/2 + 1),300,300); 
 fill(0);
 ellipse(300,220,40,eyeheight);
 ellipse(190,220,40,eyeheight);
 fill(0);
 ellipse(245,300,mouthwidth,mouthheight);
 
 if(mousePressed == true){
  eyeheight = eyeheight - .125; 
 }
 else
  eyeheight = eyeheight + .125;
 if(eyeheight == 60){
  eyeheight = eyeheight - .125;

 
 }
   }
 
 