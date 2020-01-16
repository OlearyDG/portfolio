//mac location Desktop/wordlab/
//location on my windows C:\\Users\\Mango T. Shih-tzu\\Desktop\\wordlab\\
//The Empire Strikes Back from Lucasfilm/Disney and 20th Century Fox
//Through the Brazillian Wilderness from Theodore Roosevelt
public class Words{
  Scanner scan;
  int words,sentences,syllables;
  ArrayList<String> s;
  ArrayList<Wordc>wordlist;
  double flesch=206.835;
  int mostind;
  String textfile;
public Words(String t){
  textfile=t;
try{
  scan=new Scanner(new File("Desktop/wordlab/"+t));
  scan.useDelimiter("[\\s,./?><:;\\-\\_\\^(){}\\[\\]\"]");
}catch(Exception e){
System.out.println(e);
}
s=new ArrayList<String>();
wordlist=new ArrayList<Wordc>();
}
public void toList(){
  int c=0;
while(scan.hasNext()){
s.add(scan.next());
c++;
if(s.get(c-1).equals("")){
s.remove(c-1);
c--;
}
}
scan.close();
}
int countLetters(){
int cc=0;
for(String x:s){
cc+=x.length();
}
return cc;
}
int countVowels(){
  int c=0;
  for(String x:s){
String [] cv=x.split("[^aeiouyAEIOUY]");
for(int i=0;i<cv.length;i++){
c+=cv[i].length();
}
}
return c;
}
int countSentences(){
  ArrayList<String>css=new ArrayList<String>();
  int c=0;
  try{
  scan=new Scanner(new File("Desktop/wordlab/"+textfile));
  scan.useDelimiter("\\s");
}catch(Exception e){
System.out.println(e);
}
while(scan.hasNext()){
css.add(scan.next());
}
scan.close();
for(String x:css){
  if(x.length()==0){
  continue;
  }
if(x.charAt(x.length()-1)=='.'||x.charAt(x.length()-1)=='?'||x.charAt(x.length()-1)=='!'||x.charAt(x.length()-1)=='"'){
c++;
}
}
sentences=c;
return c;
}
int countVowels(String s){
String [] cv=s.split("[^aeiouyAEIOUY]");
int c=0;
for(int i=0;i<cv.length;i++){
c+=cv[i].length();
}
return c;
}
int countSyllables(){
  //⬧ vowel replacement character 
int c=0;
String []j=s.toArray(new String[s.size()]);
for(String x:s){
    if(x.equals("a")||x.equals("A")||x.equals("an")||x.equals("An")){
    c++;
    continue;
    }
   if(countVowels(x)!=1){
  if(x.charAt(x.length()-1)=='e'||x.charAt(x.length()-1)=='E'){
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
  syllables=c;
  return c;
}
public int countWords(){
words=s.size();
  return s.size();
}
public int wordAmt(){
  return wordlist.size();
}
double getFleschScore(){
  flesch-=(1.015*((double)words/sentences));
  flesch-=(84.6*((double)syllables/words));
return flesch;
}
void wordCounter(){
  boolean went=false;
for(String x:s){
for(int i=0;i<wordlist.size();i++){
if(x.toLowerCase().equals(wordlist.get(i).getWord())){
  went=true;
wordlist.get(i).addOne();
}
}
if(!went){
wordlist.add(new Wordc(x));
}
went=false;
}
}
void printWords(){
for(Wordc x: wordlist){
System.out.println(x.getWord()+" count: "+x.getCount());
}
}
Wordc getWord(int index){
 return wordlist.get(index); 
}
void sortWordlist(){
Wordc samp;
for(int i=0;i<wordlist.size();i++){
  samp=wordlist.get(i);  
  for(int j=1;j<=i;j++){
if(wordlist.get(i-j).getCount()>wordlist.get(i).getCount()){
wordlist.set(i,wordlist.get(i-j));
wordlist.set(i-j,samp);
i=i-j;
}
}
}
}
int getMost(){
int ind=0;
for(Wordc x: wordlist){
if(x.getCount()>wordlist.get(ind).getCount()){
ind=wordlist.indexOf(x);
}else if(x.getCount()==ind){
if(x.getWord().compareTo(wordlist.get(ind).getWord())<0){
  ind=wordlist.indexOf(x);
}
}else{
ind++;
}
}
mostind=ind;
System.out.println("Most: "+wordlist.get(mostind));
return ind;
}
String getGrade(){
if(flesch>=90.0){
return "5th grade";
}else if(flesch>=80.0){
return "6th grade";
}else if(flesch>=70.0){
return "7th grade";
}else if(flesch>=60.0){
return "8-9th grade";
}else if(flesch>=50.0){
return "10-12th grade";
}else if(flesch>=30.0){
return "College";
}else{
return "College graduate";
}
}
ArrayList<Wordc> getWordList(){
return wordlist;
}
}
