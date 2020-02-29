public class PartList
{
  private TreeMap<Part, Integer> partsMap;
  
  public PartList()
  {
    partsMap=new TreeMap<Part, Integer>();
String[] parts=loadStrings("text.txt");
ArrayList<Part> part=new ArrayList<Part>();
for(String x:parts){
part.add(new Part(x));
}
for(Part x:part){
  int c=-1;
  for(Part y:part){
  if(x.compareTo(y)==0){
  c++;
  }
  }
  partsMap.put(x,c);
}

  }
  
  public PartList(String fileName)
  {
     partsMap=new TreeMap<Part, Integer>();
String[] parts=loadStrings(fileName);
ArrayList<Part> part=new ArrayList<Part>();
for(String x:parts){
part.add(new Part(x));
}
for(Part x:part){
  int c=0;
  for(Part y:part){
  if(x.compareTo(y)==0){
  c++;
  }
  }
  partsMap.put(x,c);
}
  }
  
  public String toString()
  {
    String output="";
TreeSet<Part> k=new TreeSet<Part>(partsMap.keySet());
for(Part x:k){
output+=x.toString()+": "+partsMap.get(x)+"\n";
}
    return output;
  }
}
