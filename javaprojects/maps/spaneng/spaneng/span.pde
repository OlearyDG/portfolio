public class SpanishToEnglish
{
  private Map<String,String> pairs;
String [] str;
ArrayList <String> s;
  public SpanishToEnglish()
  {
    pairs=new TreeMap<String,String>();
str=loadStrings("text.txt");
s=new ArrayList <String>();
//println(str);
for(String x:str){
String [] d=x.split(" ");
for(String y:d){
s.add(y);
}
}
//println(s.toString());
for(int i=1;i<s.size();i+=2){
pairs.put(s.get(i-1),s.get(i));
}
println(pairs);
  }

  public void putEntry(String entry)
  {
    String[] list = entry.split(" ");
pairs.put(list[0],list[1]);




  }

  public String translate(String sent)
  {
    Scanner chop = new Scanner(sent);
    String output ="";
ArrayList <String> s=new ArrayList<String>();
while(chop.hasNext()){
s.add(chop.next());
}
for(String x:s){
output+=pairs.get(x)+" ";
}
    return output;
  }

  public String toString()
  {
    return pairs.toString().replaceAll("\\,","\n");
  }
}
