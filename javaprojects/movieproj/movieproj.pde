import java.util.*;
MovieList movs;
String s;
Boolean search;
  ArrayList<Integer> temp ;
  PImage robert;
void setup(){
  size(500,500);
  robert= loadImage("rob.png");
  s="";
  search=false;
movs=new MovieList();
movs.loadMovies();
//movs.showMovies();
}
void draw(){
  background(0);
  fill(255);
  text("X:" +mouseX+" Y: "+mouseY,mouseX,mouseY);
  text("X:" +mouseX+" Y: "+mouseY,mouseX,mouseY);
//text(""+sent,200,200);
fill(255);
rect(25,136,200,15);
fill(0);
textSize(13);
text(s,26,148);
fill(255);
textSize(30);
text("Movie Review",26,24);
text("Machine",26,56);
image(robert,255,10,220,150);
textSize(13);
show();
}
void keyPressed(){
  if(key==ENTER){
    search=true;
  search();
}else if(key==''){
  if(s.length()!=0&&s.length()!=1){
s=s.substring(0,s.length()-1);
  }else{
  s="";
  }
}else{
 s+=""+key;
}
}
void search(){
temp=movs.search(s);
 // println(temp);
for(Integer x:temp){
//println(x);
}
s="";
key='';
}
double arAvg(ArrayList<Integer> ar){
double avg=0;
  for(Integer x:ar){
  avg+=movs.get(x).getScore();
  }
  return avg/ar.size();
}
void show(){
  int x=500;
  int y,y2,y3,y4,y5=0;
  int i=0;
if(search){
text("Word: "+s,30,71);
String avgs=arAvg(temp)+"";
if(avgs.length()>=4){
avgs=avgs.substring(0,4);
}
text("Average Score: "+avgs,30,91);
text(movs.get(temp.get(i)).toString(),x,196);
}
}
