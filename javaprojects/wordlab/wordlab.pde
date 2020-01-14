import java.util.Scanner;
import java.io.File;
ArrayList word;
Words w=new Words("text.txt");
int tests;
double dtests;
boolean run=false;
ArrayList<Piegraph> arcs;
void setup(){
  arcs=new ArrayList<Piegraph>();
 w.toList();
 tests=w.countLetters();
 println(tests+" letters");
 tests=w.countVowels();
 println(tests+" vowels");
  tests=w.countSentences();
 println(tests+" sentences");
 tests=w.countSyllables();
 println(tests+" syllables"); 
 tests=w.countWords();
 println(tests+" words"); 
 dtests=w.getFleschScore();
 println(dtests+" Flesch score"); 
 println(w.getGrade());
 w.wordCounter();
 w.sortWordlist();
 //w.printWords();
 w.countWords();
 w.getMost();
 size(1000,950);
 //noLoop();
 ellipseMode(CENTER);
 makeArcs();
}
void makeArcs(){
float lastd=0;
  for(int i=w.wordAmt()-1;i>=0;i--){
    //System.out.println(i);
    float size=(((float)w.getWord(i).getCount()/w.countWords())*360.0);
    //System.out.println(size);
    float radsize=radians(size);
  arcs.add(new Piegraph(500,350,600,600,lastd,lastd+radsize));
  lastd+=radsize;
 // System.out.println(lastd);
  }
  run=true;
}
void draw(){
  if(run){
  background(0);
  for(Piegraph x:arcs){
  x.show();
  } //<>//
}
fill(255);
showWords();
textSize(12);
  text("X: "+mouseX+"Y: "+mouseY,mouseX,mouseY);
}
void showWords(){
  int ind=0;
String [] wordrows=new String [4];
ArrayList<ArrayList<Integer>> indexes=new ArrayList<ArrayList<Integer>>();
ArrayList<Wordc> temp=w.getWordList();
textSize(20);
int row=0;
int list=0;
String test;
for(Wordc x:temp){
if(test+w.getWord().length()<900){
  test+=x.getWord();
  indexes.get(list).add(row);
  row++;
}else if(test+w.getWord().length()>=900){
test="";
indexes.add();
list++;
row++;
}
}
/*
for(int i=0;i<temp.size();i++){
if(textWidth(wordrows[row])<=900){
wordrows[row]+=temp.get(i).getWord();
}else if(row>4){
row++;
}else if(row==4){

}
}
*/
