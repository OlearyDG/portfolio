public class Piegraph{
int x;
int y;
int w;
int h;
float startang;
float endang;
color c;
public Piegraph(int x,int y,int w,int h,float startang, float endang){
  this.x=x;
  this.y=y;
  this.w=w;
  this.h=h;
  this.startang=startang;
  this.endang=endang;
  c= color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
}
void show(){
fill(c);
arc(x,y,w,h,startang,endang);
}
public float startAng(){
  return startang;
}

public float endAng(){
  return endang;
}
}
