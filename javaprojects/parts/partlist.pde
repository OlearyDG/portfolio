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
  if(partsMap.containsKey(x)){
  
  }
}

  }
  
  public PartList(String fileName)
  {
    //loadStrings() or:
    try
    {
      Scanner file = new Scanner(new File("lab08d.dat"));
      //add code here to read from the file 
      //and add Parts to the map




    }
    catch( IOException e )  //Most specific exceptions must be listed 1st
    {
      out.println(e);
    }
    catch( RuntimeException e )
    {
      out.println(e);
    }
    catch( Exception e )
    {
      out.println(e);
    }
    finally
    {
      //no code needed here
    }
  }
  
  public String toString()
  {
    String output="";




    return output;
  }
}
