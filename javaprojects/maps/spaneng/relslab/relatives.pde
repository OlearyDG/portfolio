public class Relatives
{
  private Map<String,Set<String>> map;

  public Relatives(){
   map= new TreeMap<String,Set<String>>();
    ArrayList <String> pe=new ArrayList<String>();
  String[] s=loadStrings("rels.txt");
  for(String x:s){
  String[]p = x.split(" ");
  pe.add(p[0]);
  }
for(String x:pe){
  Set<String> st= new TreeSet<String>();
for(String y:s){
if(y.contains(x)){
String[]p = y.split(" ");
st.add(p[1]);
}
}
map.put(x,st);
  }
  }
  public void setPersonRelative(String line){
    String[] personRelative = line.split(" ");
map.get(personRelative[0]).add(personRelative[1]);









  }


  public String getRelatives(String person)
  {
    String s=person+" is related to ";
   for(String x:map.get(person)){
   s+=x+", ";
   }
    return s.substring(0,s.length()-2);
  }


  public String toString()
  {
    String output="";
TreeSet<String> ts=new TreeSet<String>(map.keySet());
for(String x:ts){
output+=getRelatives(x)+"; ";
}
    return output.substring(0,output.length()-2);
  }
}
