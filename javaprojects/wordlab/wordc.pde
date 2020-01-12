public class Wordc{
 String word;
 int c=1;
public Wordc(String w){
  word=w;
  word=word.toLowerCase();
}
public void addOne(){
c++;
}
public String getWord(){
return word;
}
public int getCount(){
return c;
}
String toString(){
return "Word: "+word+" Count: "+c;
}
}
