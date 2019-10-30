class Die //models one single dice cube
{
  PImage num;
  double x,y;
  int am;
  Die(double x, double y) //constructor
  {
    this.x=x;;
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
    image(num,(float)x,(float)y);
  }
  
  int sideNum(){
  return am;
  }


}
