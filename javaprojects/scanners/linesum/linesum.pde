import java.util.Scanner;
LineTotaller lt;
void setup(){
lt=new LineTotaller("1 2 3 4");
System.out.println(lt.getSum());
}
public class LineTotaller
{
  Scanner scan;
   private String line;

  public LineTotaller()
  {
    setLine("");
    scan=new Scanner("");
  }

  public LineTotaller(String s)
  {    
    setLine(s);
    scan=new Scanner(line);
  }

  public void setLine(String s)
  {
    line=s;
   scan=new Scanner(line);
  }

  public int getSum()
  {
    scan=new Scanner(line);
        int total = 0;
   // System.out.println(total);
    while(scan.hasNext()){
    total+=scan.nextInt();
    }
    return total;
  }

  public String getLine()
  {
    return line;
  }

  public String toString()
  {
    return getLine();
  }
}
