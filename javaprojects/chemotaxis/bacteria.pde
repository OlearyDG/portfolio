 class Bacteria    
 {     
   int x=250,y=250,num=0;
   public Bacteria(){
        timer+=5000;
   }
   public Bacteria(int x, int y){
        timer+=5000;
     this.x=x;
     this.y=y;
   }
   void move(){
   double dir=Math.random();
   if(dir>=.5){
   x+=3;
   }else{
   x-=3;
   }
   double diry=Math.random();
   if(diry>=.5){
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
   int returnX(){
   return x;
   }
   int returnY(){
   return y;
   }
   void setNum(int n){
   num=n;
   }
   int getNum(){
   return num;
   }
   void breed(double chance, int xx, int yy){
   if(Math.random()>=chance){
   baclist.add(new Bacteria(xx,yy));
   baclist.get(baclist.size()-1).setNum(baclist.size()-1);
   }
   }
 }    
