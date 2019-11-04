 class Bacteria    
 {     
   int x=250,y=250;
   public Bacteria(){
   }
   void move(){
   double dir=Math.random();
   if(dir>=.51){
   x+=3;
   }else{
   x-=3;
   }
   double diry=Math.random();
   if(diry>=.51){
   y+=3;
   }else{
   y-=3;
   }
   if(x>495){
   x-=3;
   }
   if(x<0){
   x+=3;
   }
   if(y>495){
   y-=3;
   }
   if(y<0){
   y+=3;
   }
 }
   void show(){
   move();
  fill(250,0,0);
   ellipse(x,y,5,5);
   }
 }    
