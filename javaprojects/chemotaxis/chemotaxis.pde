//declare bacteria variables here   
ArrayList<Bacteria>baclist=new ArrayList<Bacteria>();
double deathv=0.0001;
int timer;
double rand=0.05;
 void setup()   
 {    
   size(500,500);
   for(int i=0;i<20;i++){
   baclist.add(new Bacteria());
   baclist.get(i).setNum(i);
   }
   timer=millis()+500;
   if(second()%3==0){
   rand=Math.random();
   }
   //initialize bacteria variables here   
 }   
 void draw()   
 {    
   clear();
   int bacc=0;
   for(Bacteria x:baclist){
   if(!x.getDeath()){
   bacc++;
   }
   }
   System.out.println("millis"+millis()+" timer"+timer+" baccount"+bacc+" rand"+rand);
      background(0);
   for(int i=0;i<baclist.size();i++){
     if(bacc>400){
     deathv=.001;
     }
     if(bacc>500){
     deathv=.01;
     }
     if(bacc>900){
     deathv=.1;
     }
     if(bacc<=400){
     deathv=.0001;
     }
     if(bacc<400&&bacc>100){
     deathv=.00001;
     }
     if(bacc<=100){
     deathv=.000001;
     }
     if(!baclist.get(i).getDeath()){
   baclist.get(i).show();
   baclist.get(i).breed(i,0.2,rand);
   baclist.get(i).death(0.0001);
   }
 }
   //move and show the bacteria   
 }  
