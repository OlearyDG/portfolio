import java.util.*;
MovieList movs;
String s;
Boolean sent;
void setup(){
  size(500,500);
  s="";
  sent=false;
movs=new MovieList();
movs.loadMovies();
movs.showMovies();
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
text(s,26,148);
}
void keyPressed(){
  search();
  if(key==ENTER){
sent=true;
s="";
}
if(key==''){
  if(s.length()!=0&&s.length()!=1){
s=s.substring(0,s.length()-2);
  }else{
  s="";
  }
}
  s+=""+key;
}
void search(){
  ArrayList<Integer> temp;
if(sent){
temp=movs.search(s);
for(Integer x:temp){
println(x);
}
}
sent=false;
}
