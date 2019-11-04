//declare bacteria variables here   
ArrayList<Bacteria>baclist=new ArrayList<Bacteria>();
 void setup()   
 {    
   size(500,500);
   for(int i=0;i<11;i++){
   baclist.add(new Bacteria());
   }
   //initialize bacteria variables here   
 }   
 void draw()   
 {    
      background(0);
   for(int i=0;i<baclist.size();i++){
        //baclist.get(i).move();
   baclist.get(i).show();
   }
   //move and show the bacteria   
 }  
