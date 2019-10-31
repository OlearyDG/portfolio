PImage die1, die2, die3, die4, die5, die6,cup;
ArrayList<Die>dielist=new ArrayList<Die>();
Cup dieCup;
int dx=50,dy=50,tot,time,show=1;
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
  }
  }
  time=millis()+3000;
  dieCup=new Cup(110,150);
}
void draw()
{
  if(millis()>=time){
    show*=-1;
  clear();
      background(0);
      if(show==1){
        int numc[]=new int[6];
        System.out.println(numc.length);
      for(int i=0;i<dielist.size();i++){
      dielist.get(i).show();
      }
      for(int i=0;i<dielist.size();i++){
      tot+=dielist.get(i).sideNum();
      numc[dielist.get(i).sideNum()-1]++;
     // System.out.println(numc[0]);
      }
      fill(255,255,255);
      textSize(25);
text("Side total: "+tot, 25,470);
if(tot%2==0){
textSize(30);
fill(255,0,0);
text("EVENS",190,470);
}else{
textSize(30);
fill(0,0,255);
text("ODDS",200,470);
}
textSize(15);
int yplus=420;
int xplus=300;
for(int i=0;i<6;i++){
text(i+1+" count: "+numc[i],xplus,yplus);
yplus+=30;
if(i==2){
yplus=420;
xplus=400;
}
      }
  }
timer();
  }
  if(show==-1){
      dieCup.show();
      }
}
void timer()
{
  tot=0;
  time=millis()+3000;
  redraw();
}
