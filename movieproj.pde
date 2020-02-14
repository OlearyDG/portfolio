import java.util.*;
MovieList movs;
String s,oldw;
Boolean search,dispr=false,robs=false;
  ArrayList<Integer> temp ;
  ArrayList<String []> revs;
  int sec=0;
    int x=500;
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
  if(key==ENTER||key==RETURN){
    robs=true;
    search=true;
  search();
  dispRev(temp);
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
oldw=s;
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
if(search){
text("Word: "+oldw,30,71);
double avg=arAvg(temp);
String avgs=avg+"";
if(avgs.length()>=4){
avgs=avgs.substring(0,4);
}
text("Average Score: "+avgs,30,91);
text("Average Score: "+avgs,30,91);
if(robs){
  String r="Robert Says: ";
if(avg<=4.0&&avg>=3.2){
r+="Superb Cinema!";
}else if(avg<3.2&&avg>=2){
r+="Pretty Okay.";
}else if(avg<2&&avg>=1){
r+="Ask For A Refund.";
}else{
r+="Worthless Filth";
}
text(r,30,111);
}
}
printRev();
}
public void printRev(){
if(dispr){
  if(keyPressed){
    if(key==ENTER){
    sec=0;
    }
  }
  int y=196;
  int lng=0;
revs=dispRev(temp);
for(String u:revs.get(sec)){
text(u,x,y);
if(textWidth(u)>lng){
lng=(int)textWidth(u)+1;
}
y+=22;
}
x-=2;
if(x<-lng){
  x=500;
  sec++;
  if(sec>=revs.size()){
  sec=0;
  }
}
}
}
ArrayList<String[]> dispRev(ArrayList<Integer> m){
  dispr=true;
  ArrayList<String[]> box=new ArrayList<String[]>();
  int j=-1,s=0, c=m.size();
  int n=0;
  n=m.size()/13;
  c-=n*13;
  if(m.size()<=13){
  box.add(new String[m.size()]);
  }else{
  for(int i=0;i<n;i++){
  box.add(new String[13]);
  }
  }
  if(m.size()%13!=0&&m.size()>13){
   box.add(new String[c]);
  }
 // println("size "+m.size()+ " passes "+n+" extra "+c);
for(int i=0;i<m.size();i++){
if(i%13==0){
j++;
}
box.get(j)[s]=movs.get(temp.get(i)).toString();
if(s==12){
s=-1;
}
s++;
}
//for(String[] x:box){
//for(String y:x){ //<>//
//println(y);
//}
//}
return box;
}
/*
void dispRev(ArrayList<Movie> m,int s, int f){
int x=20,y=170;
for(int i=s;i<f;i++){
if(f>=m.size()){
break;
}
text(m.get(i).toString(),x,y);
y+=15;
}
}

  while(temp.size()<13){
  rows--;
  }
  for(int j=0;j<=rows;j++){
    y+=20;
    text(movs.get(temp.get(j)).toString(),x,y);
    x+=6;
    if(j==rows){
    y=196;
    }
}
*/
