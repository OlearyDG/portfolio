import java.util.*;
import java.io.*;
Wordlist w;
String chorus;
String[] verse;
String song;
PImage[] covers;
int x=700,y=365;
int cov=(int)(Math.random()*12);
void setup(){
  size(700,700);
  covers=new PImage[12];
  for(int i=0;i<12;i++){
  covers[i]= loadImage(i+1+".jpg");
  }
  song="";
  w=new Wordlist();
  chorus=w.generate(150);
  verse=new String[]{w.generate(150),w.generate(150),w.generate(150)};
  for(String x:verse){
  song+="(Verse) "+x+"(Chorus) "+chorus;
  }
  println(song);
}
void draw(){
  background(0);
image(covers[cov],0,0,700,700);
fill(0);
rect(0,350,700,25);
fill(255);
text(song,x,y);
x-=2;
if(x<=-textWidth(song)-2){
x=700;
}
}
