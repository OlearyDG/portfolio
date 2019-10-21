int startX=(int)(Math.random()*300);
int tipX;
boolean useTip;
int startY=0;
int endX=0;
int endY=0;
PImage tpose;
PImage dance;
PImage frank;
int time;
int ttime;
double impick;
void setup()
{
    size(300,300);
time=millis();
    background(0);
    strokeWeight((float)(Math.random()*5));
tpose=loadImage("tpose.png");
dance=loadImage("dance.png");
frank=loadImage("frankenstein.png");
}
void draw()
{
  if(impick<=.33){
  image(tpose,0,0,300,300);
  tipX=(int)(Math.random()*300);
  }else if(impick>.33&&impick<=.66){
    image(dance,0,0,300,300);
    tipX=(int)(Math.random()*300);
  }else {
    image(frank,0,0,300,300);
    tipX=(int)(Math.random()*300);
  }
  stroke(255,255,51);
  if(millis()>=time+3000){
if(endX<=300){
  int randx=((int)(Math.random()*10));
  if(useTip)
  endX=tipX+endX;
  endX=startX+randx;
  if(Math.random()>.5)
  endX-=(2*randx);
  endY=startY+((int)(Math.random()*10));
  line(startX,startY,endX,endY);
  startX=endX;
  startY=endY;
}
  }
      timer();
}
void timer()
{
  if(millis()>=time+3200){
    if(timing()==2){
     // System.out.println("reached");
startX=(int)(Math.random()*300);
startY=0;
endX=0;
//System.out.println(endX);
System.out.println(startX);
endY=0;
time=millis();
useTip=false;
clear();
}
 }
}
int timing(){
  int timetest=millis()/1000;
        //System.out.println(timetest);
if(timetest%2==0){
  impick=Math.random();
return 2;
}else{
return -2;
}
}
