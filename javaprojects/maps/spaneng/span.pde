public class SpanishToEnglish
{
  private Map<String,String> pairs;
String [] str;
  public SpanishToEnglish()
  {
    pairs=new TreeMap<String,String>();
str=loadStrings("text.txt");
println(str);
println("test"+str[1]);
for(int i=1;i<str.length;i+=2){
pairs.put(str[i-1],str[i]);
}
//println(pairs);
  }

  public void putEntry(String entry)
  {
    String[] list = entry.split(" ");





  }

  public String translate(String sent)
  {
    Scanner chop = new Scanner(sent);
    String output ="";






    return output;
  }

  public String toString()
  {
    return pairs.toString().replaceAll("\\,","\n");
  }
}
