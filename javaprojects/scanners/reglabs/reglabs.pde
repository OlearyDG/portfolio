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
/*
int countSyllables(){
  String f=r.replaceAll("[.,?!]","");
  String [] j=f.split("\\s");
  for(String x:j){
  System.out.println(x);
  
  }
  int c=0;
String k=r.replaceAll("[aeiouyAEIOUY]","x");
println(k);
return c;
}
/*
for(String x:j){
if(x.charAt(x.length()-1)=='e'||x.charAt(x.length()-1)=='E'){
c--;
println(c);
}
}
for(int i=0;i<k.length();i++){
if(k.charAt(i)!='x'){
c++;
println(c);
}
}
*/
//System.out.println(k);
//String [] vow=j.split("x");
//for(int i=0;i<vow.length;i++){
//if(!vow[i].equals("x")){
// c++;
//}
//}
//String [] w=j.split("[^aeiouyAEIOUY]");
//for(String x:w){
//c++;
//}
// return c;
//}
