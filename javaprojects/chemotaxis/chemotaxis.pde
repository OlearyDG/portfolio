//declare bacteria variables here   
ArrayList<Bacteria>baclist=new ArrayList<Bacteria>();
ArrayList<Integer>xlist=new ArrayList<Integer>();
ArrayList<Integer>ylist=new ArrayList<Integer>();
int timer;
 void setup()   
 {    
   size(500,500);
   for(int i=0;i<20;i++){
   baclist.add(new Bacteria());
   baclist.get(i).setNum(i);
   }
   timer=millis()+500;
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
   System.out.println("millis"+millis()+" timer"+timer+" baccount"+bacc);
      background(0);
   for(int i=0;i<baclist.size();i++){
     if(!baclist.get(i).getDeath()){
        //baclist.get(i).move();
   baclist.get(i).show();
   baclist.get(i).breed(i,0.2,.05);
   baclist.get(i).death(0.0001);
   //xlist.add(baclist.get(i).returnX());
   //ylist.add(baclist.get(i).returnY());
   }
 }
   //move and show the bacteria   
 }  
