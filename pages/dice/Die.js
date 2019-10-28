class Die//models one single dice cube
{
 // var num,x,y,am;
  constructor(x, y, am)
  {
    this.x=x;
    this.y=y;
    this.am=0;
  }
  roll()
  {
   var side= Math.random();
   if(side<=0.166){
     this.num=die1;
     this.am=1;
   }else if(side<=0.332){
    this.num=die2;
     this.am=2;
   }else if(side<=0.498){
     this.num=die3;
     this.am=3;
   }else if(side<=0.664){
     this.num=die4;
     this.am=4;
   }else if(side>=0.83){
     this.num=die5;
     this.am=5;
   }else {
     this.num=die6;
     this.am=6;
   }
  }
 show()
  {
   this.roll();
    image(this.num,this.x,this.y);
  }
  
  sideNum(){
  return this.am;
  }
}
