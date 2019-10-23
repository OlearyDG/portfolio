  var die1, die2, die3, die4, die5, die6, cup;
var dielist=[];
var dieCup;
var dx=50,dy=50,tot,time,show;
function setup()
{
  createCanvas(500,500);
  die1=loadImage("die1.png");
  die2=loadImage("die2.png");
  die3=loadImage("die3.png");
  die4=loadImage("die4.png");
  die5=loadImage("die5.png");
  die6=loadImage("die6.png");
  cup=loadImage("cup.png");
  for(var i=0;i<8;i++){
  dielist.push(new Object());
  dielist[i].Diec(dx,dy);
    dy+=100;
  if(dy>350){
  dx=350;
  dy=50;
  }
  }
  time=millis()+3000;
    console.log(time);
  dieCup=new Cup();
  dieCup.Cupc(110,150);
  show=1;
}
function draw()
{

  if(millis()>=time){
    show*=-1;
  clear();
      background(0);
      if(show==1){
      for(var i=0;i<dielist.length();i++){
      dielist[i].show();
      }
      for(var j=0;j<dielist.length();j++){
      tot+=dielist[i].sideNum();
      }
      fill(255,255,255);
      textSize(25);
text("Side total: "+tot, 50,470);
if(tot%2==0){
textSize(32);
fill(255,0,0);
text("EVENS",250,470);
}else{
textSize(32);
fill(0,0,255);
text("ODDS",250,470);
}
      }
timer();
  }
  if(show==-1){
      dieCup.show();
      }
}
function timer()
{
  tot=0;
  time=millis()+3000;
  redraw();
}
