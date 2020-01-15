import java.util.Scanner;
import java.io.File;
ArrayList word;
ArrayList<ArrayList<String>> indexes;
String file="african";
Words w=new Words(file+".txt");
int tests;
int wordchart;
double dtests;
boolean run=false;
boolean mouseReleased=false;
ArrayList<Piegraph> arcs;
int y;
String [] amounts;
void setup(){
  indexes=new ArrayList<ArrayList<String>>();
  arcs=new ArrayList<Piegraph>();
  amounts=new String[7];
  wordchart=0;
  y=695;
 w.toList();
 tests=w.countLetters();
 amounts[0]=tests+"";
 println(tests+" letters");
 tests=w.countVowels();
 amounts[1]=tests+"";
 println(tests+" vowels");
  tests=w.countSentences();
  amounts[2]=tests+"";
 println(tests+" sentences");
 tests=w.countSyllables();
 amounts[3]=tests+"";
 println(tests+" syllables"); 
 tests=w.countWords();
 amounts[4]=tests+"";
 println(tests+" words"); 
 dtests=w.getFleschScore();
 amounts[5]=dtests+"";
 println(dtests+" Flesch score"); 
 amounts[6]=w.getGrade();
 w.wordCounter();
 w.sortWordlist();
 w.printWords();
 w.countWords();
 w.getMost();
 size(1500,950);
 ellipseMode(CENTER);
 makeArcs();
 makeWordChart();
 rectMode(CORNER);
 background(0);
 //noLoop();
}
void makeArcs(){
float lastd=0;
  for(int i=w.wordAmt()-1;i>=0;i--){
    float size=(((float)w.getWord(i).getCount()/w.countWords())*360.0);
    float radsize=radians(size);
  arcs.add(new Piegraph(1000,350,600,600,lastd,lastd+radsize));
  lastd+=radsize;
  }
  run=true;
}
void mouseReleased(){
mouseReleased=true;
run=true;
}
void draw(){
  // clear();
//System.out.println(run);
  fill(255);
  if(mousePressed){
    if(mouseReleased){
  if(mouseX>=32&&mouseX<=162){
  if(mouseY>=850&&mouseY<=900){
        System.out.println(wordchart);
  wordchart--;
  if(wordchart<0){
  wordchart=0;
  }
  }
  }
  if(mouseX>=1220&&mouseX<=1350){
  if(mouseY>=850&&mouseY<=900){
  wordchart++;
  if(wordchart>indexes.size()-1){
  wordchart=indexes.size()-1;
  }
  }
  }
  }
    mouseReleased=false;
  }
  if(run){
    clear();
  for(Piegraph x:arcs){
  x.show();
  } //<>//
  fill(255);
    textSize(30);
    if(file.equals("empire")){
       text("The Empire Strikes Back from Lucasfilm",31,70);
    }else if(file.equals("roosevelt")){
       text("Through the Brazillian Wilderness by Theodore Roosevelt",31,70);
    }else if(file.equals("african")){
       text("African Game Trails (Chapters I-V) by Theodore Roosevelt",31,70);
    }
      textSize(20);
  text("Letters: "+amounts[0],31,112);
  text("Letters: "+amounts[0],31,112);
  text("Vowels: "+amounts[1],31,147);
  text("Sentences: "+amounts[2],31,181);
  text("Syllables: "+amounts[3],31,215);
  text("Words: "+amounts[4],31,249);
  text("Flesch score: "+amounts[5],31,283);
  text("Reading level: "+amounts[6],31,317);
showWords(wordchart);
 fill(25);
 rect(32,850,130,50);
 fill(145);
 text("Previous",55,882);
  fill(25);
  rect(1220,850,130,50);
  fill(145);
 text("Next",1262,882);
 //println("y "+y);
 run=false;
  }
//textSize(20);
  //text("X: "+mouseX+"Y: "+mouseY,mouseX,mouseY);
}
void makeWordChart(){
ArrayList<Wordc> temp=w.getWordList();
int row=0;
int list=0;
String test="";
indexes.add(new ArrayList<String>());
for(int i=temp.size()-1;i>=0;i--){
  String swidth=(test+"Word: "+temp.get(i).getWord()+" Appearances: "+temp.get(i).getCount()+" Rank: "+(temp.size()-i)+"     ");
if(textWidth(swidth)<=900){
  test+="Word: "+temp.get(i).getWord()+" Appearances: "+temp.get(i).getCount()+" Rank: "+(temp.size()-i)+"     ";
}else if(textWidth(swidth)>900){
  i++;
indexes.get(list).add(test);
test="";
row++;
}
if(row==4){
indexes.add(new ArrayList<String>());
list++;
row=0;
}
}
}
void showWords(int wg){
  textSize(20);
  fill(255);
  y=695;
  for(int i=0;i<indexes.get(wg).size();i++){
  text(indexes.get(wg).get(i),10,y);
  y+=35;
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
