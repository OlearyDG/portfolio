import java.util.Scanner;
void setup(){
  Average a=new Average("15 2 3 6 50");
  System.out.println(a.getAverage());
}

public class Average
{
   private String line;
Scanner scan;
   public Average()
   {
     line="";
     scan=new Scanner("");
   }

   public Average(String s)
   {
     line=s;
    scan=new Scanner(line);
   }

  public void setLine(String s)
  {
    line=s;
   scan=new Scanner(line);
  }

  public double getAverage()
  {
    scan=new Scanner(line);
    double count=0;
    double total=0;
    while(scan.hasNext()){
    total+=scan.nextInt();
    count++;
    }
    return total/count;
  }


  public int getSum()
  {
    int sum=0;


  
    return sum;
  }

  public String getLine()
  {
    return "";
  }

  public String toString()
  {
    return "";
  }
}
