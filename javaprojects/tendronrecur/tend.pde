class Tendril {
  public final static int SEG_LENGTH = 4; //length of each segment in the tendril
  private int seg, x, y, ex, ey;
  private float ang;

  /**
   Class constructor
   len is how many segments in this tendril (each a fixed length, 4 is a good start)
   theta is tendril starting angle in radians 
   x, y  is the starting (x,y) coordinate
   */
  public Tendril(int len, float theta, int x, int y) {
    seg=len;
    ang=theta;
    this.x=x;
    this.y=y;
    //your code here
  }
  /*
  public void tend(int xs, int ys, int seg, float thet){
    translate(xs,xs);
    int xi=0;
    int yi=0;
  stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
 for(int i=0;i<6;i++){
   rotate(2*PI/7);
   xs=xi;
   ys=yi;
   for(int j=0;j<15;j++){
    int mv=(int)(Math.random()*11)-5;
 line(xs,ys,xs+mv,ys+seg);
 xs+=mv;
 ys+=seg;
 }
 if(seg-1>1){
 tend(xs,ys, seg-1,thet);
 }
 } 
  }
  */
  public void show() {
   // pushMatrix();
   // rotate(ang);
    int tx=x;
    int ty=y;
   for(int i=0;i<seg;i++){
    // int mov=(int)(Math.random()*10)-5;
    ang+=Math.random()*.4-.2;
   line(tx,ty,tx+(cos(ang)*SEG_LENGTH),ty+(sin(ang)*SEG_LENGTH));
   tx+=(cos(ang)*SEG_LENGTH);
   ty+=(sin(ang)*SEG_LENGTH);
   }
   ex=tx;
   ey=ty;
 //  popMatrix();
  }
  int getX(){
    return ex;
  }
   int getY(){
     return ey;
  }
}
