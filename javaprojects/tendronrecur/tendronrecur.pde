 // Cluster c ;
   PGraphics flow;
   ArrayList<Point> p;
   ArrayList<Bee> bees;
void setup() {
   p=new ArrayList<Point>();
   bees=new ArrayList<Bee>();
  size(500, 500);  
  background(255);
 flow=createGraphics(500,500);
 flow.beginDraw();
      Cluster c = new Cluster(50, 250, 250); 
      flow.endDraw();
        for(int i=0;i<26;i++){
   bees.add(new Bee());
   }
  //noLoop();
//c = new Cluster(5, 250, 250);
}

void draw() {
    background(255);
image(flow,0,0);
for(Bee x:bees){
x.show();
}
}
void mousePressed() {
  for(Point x:p){
  println(x);
  }
}
