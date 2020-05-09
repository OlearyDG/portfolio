import java.util.ArrayList;
import static java.lang.System.*;

public class IntQueue
{
  //pick your storage for the queue
  //you can use the an array or an ArrayList

  //option 1
  private int[] rayOfInts;
  private int numInts;

  //option 2
  private ArrayList<Integer> listOfInts;

  public IntQueue()
  {
    listOfInts=new ArrayList<Integer>();
  }

  public void add(int item)
  {
    listOfInts.add(item);
  }

  public int remove()
  {
    int t=listOfInts.get(0);
    listOfInts.remove(0);
    return t;
  }

  public boolean isEmpty()
  {
    return listOfInts.size()==0;
  }

  public int peek()
  {
    return listOfInts.get(0);
  }

  public String toString()
  {
    return listOfInts.toString();
  }
}
