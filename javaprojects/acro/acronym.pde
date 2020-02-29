public class Acronyms
{
  private Map<String,String> acronymTable;

  public Acronyms()
  {
acronymTable=new TreeMap<String,String>();
String[] s=loadStrings("text.txt");
ArrayList<String> test= new ArrayList<String>();
for(String x:s){
String[] e=x.split("\\W");
for(String y:e){
if(!y.equals("")&&!y.equals(null)&&!y.equals(" ")){
  test.add(y);
}
}
}
//println(test.toString());
for(int i=0;i<test.size();){
  String out="";
int t=test.get(i).length();
for(int j=i+1;j<=t+i;j++){
  if(test.get(j).equals(test.get(j).toLowerCase())){
  t++;
  }
out+=test.get(j)+" ";
}
acronymTable.put(test.get(i),out.substring(0,out.length()-1));
i+=t+1;
}
//println(acronymTable.toString());
  }
  public void putEntry(String entry)
  {
      String out="";
    String[] s=entry.split("\\W");
ArrayList<String> test= new ArrayList<String>();
for(String y:s){
if(!y.equals("")&&!y.equals(null)&&!y.equals(" ")){
  test.add(y);
}
}
for(int i=1;i<test.size();i++){
out+=test.get(i)+" ";
}
acronymTable.put(test.get(0),out.substring(0,out.length()-1));
  }


  public String convert(String sent)
  {
    Scanner chop = new Scanner(sent);
    String output ="";
    while(chop.hasNext()){
      boolean c=false;
      char s=45;
     String n=chop.next(); 
     if(n.contains(".")||n.contains("?")||n.contains("!")){
       c=true;
       s=n.charAt(n.length()-1);
       println(n);
     }
     String[] a=n.split("\\W");
     String m="";
     for(String x:a){
       if(!x.equals(null)&&!x.equals("")&&!x.equals(" "))
     m+=x;
     }
println(acronymTable.containsKey(m)); //<>//
if(acronymTable.containsKey(m)){ //<>//
  if(c){ //<>//
  output+=acronymTable.get(m)+"."+" "; //<>//
  }else{
  output+=acronymTable.get(m)+" ";
  }
    }else{
      if(c){
  output+=m+"."+" ";
      }else{
output+=m+" ";
}
    }
    }
    chop.close();
    return output;
  }
  public String toString()
  {
    return acronymTable.toString();
  }
}
