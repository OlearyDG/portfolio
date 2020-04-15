class Tendril  {
  public final static int SEG_LENGTH = 4; //length of each segment in the tendril
  private int seg, x, y, ex, ey;
  private float ang;
  public Tendril(int len, float theta, int x, int y) {
    seg=len;
    ang=theta;
    this.x=x;
    this.y=y;
    //your code here
  }

  public void show() {
    int tx=x;
    int ty=y;
   for(int i=0;i<seg;i++){
    // int mov=(int)(Math.random()*10)-5;
    ang+=Math.random()*.4-.2;
   flow.line(tx,ty,tx+(cos(ang)*SEG_LENGTH),ty+(sin(ang)*SEG_LENGTH));
   tx+=(cos(ang)*SEG_LENGTH);
   ty+=(sin(ang)*SEG_LENGTH);
   }
   ex=tx;
   ey=ty;
   if((int)(seg*.35)<=1){
   p.add(new Point(ex,ey));
   }
  }
  int getX(){
    return ex;
  }
   int getY(){
     return ey;
  }
}
