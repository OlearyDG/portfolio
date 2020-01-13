import java.util.Scanner;
import java.io.File;
ArrayList word;
Words w=new Words();
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
 w.printWords();
 w.countWords();
 size(1000,1000);
 noLoop();
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
  arcs.add(new Piegraph(400,500,600,600,lastd,lastd+radsize));
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
}
