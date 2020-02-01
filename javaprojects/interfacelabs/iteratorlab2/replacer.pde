import java.util.ArrayList;
import java.util.Arrays;
import java.util.ListIterator;
import static java.lang.System.*;

public class IteratorReplacer
{
  private ArrayList<String> list;
  private String toRemove, replaceWith;
  ListIterator <String> it;

  public IteratorReplacer(String line, String rem, String rep)
  {
    list= new ArrayList<String>(Arrays.asList(line.split(" ")));
    toRemove=rem;
    replaceWith=rep;
    it=list.listIterator();
  }

  public void setEmAll(String line, String rem, String rep)
  {
    list= new ArrayList<String>(Arrays.asList(line.split(" ")));
     toRemove=rem;
     replaceWith=rep;
     it=list.listIterator();
  }

  public void replace()
  {
    while(it.hasNext()){
    if(it.next().equals(toRemove)){
    it.set(replaceWith);
    }
    }
  }

  public String toString()
  {
    return list.toString()+"\n\n";
  }
}
