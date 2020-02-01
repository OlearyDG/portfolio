import java.util.ArrayList;
import java.util.Arrays;
import java.util.*;
import static java.lang.System.*;

public class IteratorRemover
{
  private ArrayList<String> list;
  private String toRemove;
  Iterator it;
  public IteratorRemover(String line, String rem)
  {
    list= new ArrayList<String>(Arrays.asList(line.split(" ")));
    toRemove=rem;
    it=list.iterator();
  }

  public void setTest(String line, String rem)
  {
    list= new ArrayList<String>(Arrays.asList(line.split(" ")));
    toRemove=rem;
    it=list.iterator();
  }

  public void remove()
  {
    while(it.hasNext()){
    if(it.next().equals(toRemove)){
    it.remove();
    }
    }
  }

  public String toString()
  {
    return list.toString();
  }
}
