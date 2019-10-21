PImage die1, die2, die3, die4, die5, die6,cup;
ArrayList<Die>dielist=new ArrayList<Die>();
int dx=50,dy=50,tot,time;
void setup()
{
  size(500,500);
  die1=loadImage("die1.png");
  die2=loadImage("die2.png");
  die3=loadImage("die3.png");
  die4=loadImage("die4.png");
  die5=loadImage("die5.png");
  die6=loadImage("die6.png");
  cup=loadImage("cup.png");
  for(int i=0;i<8;i++){
  dielist.add(new Die(dx,dy));
    dy+=100;
  if(dy>350){
  dx=350;
  dy=50;
  time=millis()+3000;
  }
  }
  //noLoop();

}
void draw()
{    
  if(millis()>=time){
  clear();
      background(0);
      for(int i=0;i<dielist.size();i++){
      dielist.get(i).show();
      }
      for(int i=0;i<dielist.size();i++){
      tot+=dielist.get(i).sideNum();
      }
text("Side total: "+tot, 50,470);
timer();
  }
}
void timer()
{
  tot=0;
  //if(millis()>=time){
  time=millis()+3000;
  redraw();
 // }
}
class Die //models one single dice cube
{
  PImage num;
  int x,y,am;
  Die(int x, int y) //constructor
  {
    this.x=x;
    this.y=y;
  }
  void roll()
  {
   double side= Math.random();
   if(side<=.166){
     num=die1;
     am=1;
   }else if(side<=.332){
     num=die2;
     am=2;
   }else if(side<=.498){
     num=die3;
     am=3;
   }else if(side<=.664){
     num=die4;
     am=4;
   }else if(side>=.83){
     num=die5;
     am=5;
   }else {
     num=die6;
     am=6;
   }
  }
  void show()
  {
    roll();
    image(num,x,y);
  }
  
  int sideNum(){
  return am;
  }
}

class Cup{
private int x,y;
private int ctime=millis()+300;
public Cup(int x,int y){
 this.x=x;
    this.y=y;
}

void show(){
if(timing()==1){

}
}
int timing(){
if(millis()>=ctime){
ctime=millis()+300;
return 1;
}
return 0;
}
}
