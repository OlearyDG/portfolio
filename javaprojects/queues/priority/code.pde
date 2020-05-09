import java.util.Queue;
import java.util.Arrays;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.PriorityQueue;

public class PQTester
{
  private Queue<String> pQueue;

  public PQTester()
  {
    pQueue=new PriorityQueue<String>();
  }

  public PQTester(String list)
  {
      pQueue=new PriorityQueue<String>();
      String[]s=list.split(" ");
      for(String x:s){
      pQueue.offer(x);
      }
  }

  public void setPQ(String list)
  {
    pQueue=new PriorityQueue<String>();
      String[]s=list.split(" ");
      for(String x:s){
      pQueue.offer(x);
      }
  }
  
  public Object getMin()
  {
    return pQueue.peek();
  }
  
  public String getNaturalOrder(String sp)
  {
    String output="";
   PriorityQueue<String> temp=new PriorityQueue<String>(pQueue);
    while(!temp.isEmpty()){
    output+=temp.poll()+sp;
    }
    return output;    
  }
  public String toString(){
  return "["+getNaturalOrder(",").substring(0,getNaturalOrder(",").length()-1)+"]";
  }
}
  //write a toString method
