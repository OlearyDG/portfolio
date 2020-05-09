import java.util.Queue;
import java.util.Stack;
import java.util.Arrays;
import java.util.ArrayList;
import java.util.LinkedList;

public class PalinList
{
  private Queue<String> queue;
  private Stack<String> stack;

  public PalinList()
  {
     queue=new LinkedList<String>();
    stack=new Stack<String>();
    setList("");
  }

  public PalinList(String list)
  {
    queue=new LinkedList<String>();
    stack=new Stack<String>();
    String[] w=list.split(" ");
    for(String x:w){
    stack.push(x);
    queue.add(x);
    }
  }

  public void setList(String list)
  {
    queue=new LinkedList<String>();
    stack=new Stack<String>();
    String[] w=list.split(" ");
    for(String x:w){
    stack.push(x);
    queue.add(x);
    }
  }

  public boolean isPalin()
  {
    for(String x:queue){
   if(x.equals(stack.pop())){
   }else{
   return false;
   }
    }
   
    return true;
  }


  //write a toString method
}
