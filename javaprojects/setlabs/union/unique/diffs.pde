
public class UniquesDupes
{
  public UniquesDupes(){
  }
  
  public Set<String> getUniques(String input)
  {
    Set<String> uniques = new TreeSet<String>();
   List<String> temp=new ArrayList<String>(Arrays.asList(input.split(" ")));
   for(String x:temp){
   uniques.add(x);
   }
    return uniques;
  }

  public Set<String> getDupes(String input)
  {
   Set<String> uniques = new TreeSet<String>();
   List<String> temp=new ArrayList<String>(Arrays.asList(input.split(" ")));
   for(String x:temp){
   uniques.add(x);
   }
   
  return uniques;
}
}
