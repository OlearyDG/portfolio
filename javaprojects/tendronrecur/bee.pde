public class Bee{
PImage b;
int x,y;
Point goal;
  public Bee(){
b=loadImage("bee.png");
x=250;
y=250;
goal=p.get((int)(Math.random()*p.size()));
  }
void show(){
  pickFlower();
image(b,x,y,30,30);
}
void pickFlower(){
  Point s=new Point(x,y);
if(goal.compareTo(s)==0){
goal=p.get((int)(Math.random()*p.size()-1));
}
if(goal.getY()>y){
y+=(int)(Math.random()*5);
}else{
y-=(int)(Math.random()*5);
}
if(y==goal.getY()){
y+=(int)(Math.random()*6)-3;
}
if(goal.getX()>x){
x+=(int)(Math.random()*5);
}else{
x-=(int)(Math.random()*5);
}
if(x==goal.getX()){
x+=(int)(Math.random()*6)-3;
}
}
}
