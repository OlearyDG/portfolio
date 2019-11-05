//declare bacteria variables here   
ArrayList<Bacteria>baclist=new ArrayList<Bacteria>();
ArrayList<Integer>xlist=new ArrayList<Integer>();
ArrayList<Integer>ylist=new ArrayList<Integer>();
int timer;
 void setup()   
 {    
   size(500,500);
   for(int i=0;i<11;i++){
   baclist.add(new Bacteria());
   baclist.get(i).setNum(i);
   }
   timer=millis()+5000;
   //initialize bacteria variables here   
 }   
 void draw()   
 {    
   System.out.println("millis"+millis()+" timer"+timer);
      background(0);
   for(int i=0;i<baclist.size();i++){
        //baclist.get(i).move();
   baclist.get(i).show();
   xlist.add(baclist.get(i).returnX());
   ylist.add(baclist.get(i).returnY());
   }
   if(millis()>=timer){
          System.out.println("weeeeeeeeeeee");
   for(Integer x:xlist){
   for(int i=0;i<baclist.size();i++){
   if(x==baclist.get(i).returnX()){
   for(Integer z:ylist){
   if(z==baclist.get(i).returnY()){
   if(baclist.get(i).getNum()!=ylist.indexOf(z)){
   baclist.get(i).breed(.2,baclist.get(i).returnX(),baclist.get(i).returnY());
      System.out.println("wooooooooo");
   }
   }
   }
   }
   }
   }
   }
   //move and show the bacteria   
 }  
