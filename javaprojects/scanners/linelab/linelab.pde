import java.util.Scanner;
LineCounter l;
void setup(){
  size(0,0);
l=new LineCounter();
l.setLine("56 5 4 4 9 8 0 4 9 8 70 0");
System.out.println(l.getCount());
l.setLine("0");
System.out.println(l.getCount());
l.setLine("41 1 1");
System.out.println(l.getCount());
}
public class LineCounter
{
   private String line;
Scanner scan;
   public LineCounter()
   {
    setLine("");
    scan=new Scanner(line);
   }

   public LineCounter(String s)
   {
line=s;
scan=new Scanner(line);
   }

  public void setLine(String s)
  {
    line=s;
    scan=new Scanner(line);
  }

  public int getCount()
  {
    int count=0;  
    while(scan.hasNextInt()){
    count++;
    scan.nextInt();
  }
    return count;
  }

  public String getLine()
  {
    return line;
  }

  public String toString()
  {
    return getLine();
  }
    /*
  public int chop(){
    int f=0;
    while(scan.hasNext()){
    f++;
      System.out.println(f); 
    }
    return f;
  
    int n=0;
    while(scan.hasNext()){
         System.out.println(n); 
    n++;
    }
    System.out.println(n);
    return n;
  }
      */
}
