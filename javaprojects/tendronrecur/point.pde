public class Point implements Comparable<Point>{
int x,y;
public Point(int x,int y){
this.x=x;
this.y=y;
}
int getX(){
  return x;
}
int getY(){
  return y;
}
int compareTo(Point t){
if(t.getX()-x==0){
if(t.getY()-y==0){
return 0;
}
return t.getY()-y;
}
return t.getX()-x;
}
String toString(){
return "x: "+x+" y: "+y;
}
}
