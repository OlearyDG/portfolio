 // Cluster c ;
void setup() {
  size(500, 500);  
  background(255);
  noLoop();
//c = new Cluster(5, 250, 250);
}

void draw() {
    //translate(250,250);
    background(255);
    Cluster c = new Cluster(50, 250, 250);
    //fill(0);
    //text("test",0,0);
  //text("x: "+mouseX+" y: "+mouseY,mouseX,mouseY);
  //Tendril t=new Tendril(5,PI/7,250,250);
  //translate(250,250);
  //t.tend(250,250,5,PI/7);
  //t.show();
  //c.show();
  // initial number of segments in the tendril and starting (x,y) coordinate
}
void mousePressed() {
  redraw();
}
