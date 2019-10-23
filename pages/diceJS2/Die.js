var Die =//models one single dice cube
{
   num:0
   ,x:0
   ,y:0
   ,am:0,
  Diec:function(x, y)
  {
    this.x=x;
    this.y=y;
  },
  roll:function()
  {
   var side= Math.random();
   if(side<=0.166){
     num=die1;
     am=1;
   }else if(side<=0.332){
     num=die2;
     am=2;
   }else if(side<=0.498){
     num=die3;
     am=3;
   }else if(side<=0.664){
     num=die4;
     am=4;
   }else if(side>=0.83){
     num=die5;
     am=5;
   }else {
     num=die6;
     am=6;
   }
  },
 show:function()
  {
    roll();
    image(num,x,y);
  },
  
  sideNum:function(){
  return am;
  }
};
