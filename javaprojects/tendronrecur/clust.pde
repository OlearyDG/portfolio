public class Cluster {
  public final static int NUM_STEMS = 7; //number of tendrils per cluster
int len,x,y;
Tendril[] ten;
  public Cluster(int len, int x, int y) {
    color c=color((float)(Math.random()*255),(float)(Math.random()*255),(float)(Math.random()*255));
    this.len=len;
    this.x=x;
    this.y=y;
    ten=new Tendril[NUM_STEMS];
    for(int i=0;i<ten.length;i++){
      flow.stroke(c);
    ten[i]=new Tendril(len,(float)(Math.random()*2*PI),x,y);
    ten[i].show();
    if(len>1){
    Cluster cl=new Cluster((int)(len*.35),ten[i].getX(),ten[i].getY());
    }
    }
    //for(Tendril z:ten){
 // z.show();
  //}
  }
 // public void show(){
 // for(Tendril x:ten){
 // x.show();
  //}
  //}
}
