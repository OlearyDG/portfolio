import java.util.*;
MovieList movs;
String s;
Boolean sent;
  ArrayList<Integer> temp ;
void setup(){
  size(500,500);
  s="";
  sent=false;
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
text(s,26,148);
}
void keyPressed(){
  if(key==ENTER){
  search();
}else if(key==''){
  if(s.length()!=0&&s.length()!=1){
s=s.substring(0,s.length()-2);
  }else{
  s="";
  }
}
  s+=""+key;

}
void search(){
temp=movs.search(s);
  println(temp);
for(Integer x:temp){
println(x);
}
s="";
key='';
}
