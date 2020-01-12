import java.util.Scanner;
import java.io.File;
ArrayList word;
Words w=new Words();
int tests;
double dtests;
void setup(){
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
 w.printWords();
}
