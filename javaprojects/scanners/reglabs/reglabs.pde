String r="Hello, I am nine syllables long. And it is great! scoope sne";
String [] s;
void setup(){
regTest();
//println(countWords());
//println(countVowels());
//println(countSentences());
println(countSyllables());
}

void regTest(){
  s= r.split("[\\W]");
 // for(int i=0;i<s.length;i++)
 // println(s[i]);
}
int countWords(){
  int c=0;
for(String x:s){
if(!x.equals(null)){
c++;
}
}
return c;
}
int countVowels(){
String [] cv=r.split("[^aeiouyAEIOUY]");
int c=0;
for(int i=0;i<cv.length;i++){
if(!cv[i].equals(null)){
c+=cv[i].length();
}
}
return c;
}
int countSentences(){
 String [] cs=r.split("[^.!?]");
int c=0;
for(int i=0;i<cs.length;i++){
if(!cs[i].equals(null)){
c+=cs[i].length();
}
}
return c;
}
int countSyllables(){
  //⬧︎
int c=0;
String f=r.replaceAll("[.,?!]","");
String j []=f.split("\\s");
for(String x:j){
  for(int i=0;i<x.length();i++){
  if(x.charAt(i)=='e'||x.charAt(i)=='E'){
  c--;
  }
  }
  }
  for(int i=0;i<j.length;i++){
  j[i]=j[i].replaceAll("[aeiouyAEIOUY]","⬧");
  }
  for(int i=0;i<j.length;i++){
 j[i]=j[i].replaceAll("⬧{2,}","⬧");
  
  }
 for(String x:j){
  for(int i=0;i<x.length();i++){
  if(x.charAt(i)=='⬧'){
  c++;
  }
  }
  }
  return c;
}
