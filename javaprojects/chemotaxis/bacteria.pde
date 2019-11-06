 class Bacteria    
 {     
   int x=250,y=250, sex, num;
   boolean breed;
   public Bacteria(){
         timer=millis()+5000;
         int s=(int)(Math.random()*2);
          if(s%2==0){
     sex=1;
     }else{
     sex=0;
     }
   }
   public Bacteria(int x, int y, int s){
        timer=millis()+5000;
     this.x=x;
     this.y=y;
     if(s%2==0){
     sex=1;
     }else{
     sex=0;
     }
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
   int getS(){
   return sex;
   }
   int returnNum(){
   return num;
   }
   void setNum(int sn){
   num=sn;
   }
   void breed(int bn, double chance){
     //System.out.println("wewewewew");
   if(Math.random()<=chance){
   if(sex==1){
   if(millis()>timer){
   for(int i=0;i<bn;i++){
     if(baclist.get(i).returnX()>=this.x&&baclist.get(i).returnX()<=this.x+5){
       if(baclist.get(i).returnY()>=y&&baclist.get(i).returnY()<=y+5){
        // System.out.println("wewewewew");
   if(baclist.get(i).getS()==0){
   baclist.add(new Bacteria(this.x,y,(int)(Math.random()*2)));
   }
   }
   }
   }
    for(int i=bn+1;i<baclist.size();i++){
     if(baclist.get(i).returnX()>=this.x&&baclist.get(i).returnX()<=this.x+5){
       if(baclist.get(i).returnY()>=y&&baclist.get(i).returnY()<=y+5){
         //System.out.println("wewewewew");
   if(baclist.get(i).getS()==0){
   baclist.add(new Bacteria(this.x,y,(int)(Math.random()*2)));
   baclist.get(i).setNum(baclist.get(baclist.size()-1).returnNum()+1);
   }
   }
   }
   }
   }
   }
   }
   }
   void death(double chance){
   if(Math.random()<=chance){
   baclist.remove(num);
   }
   }
 }    
