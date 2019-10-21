class Cup{
private int x,y,plusy=-50;
private int ctime=millis()+100;
public Cup(int x,int y){
 this.x=x;
    this.y=y;
}

void show(){
  if(millis()>ctime){
     clear();
      background(0);
image(cup,x,y+plusy,300,300);
cTimer();
  }
}
void cTimer(){
ctime=millis()+100;
plusy*=-1;
}
}
