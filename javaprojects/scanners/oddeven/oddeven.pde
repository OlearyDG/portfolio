import java.util.Scanner;
void setup(){
OddEvenCounter o= new OddEvenCounter("44 5 1 6 1 3 44 5 34 6 789 34 15");
System.out.println(o.getOddCount());
System.out.println(o.getEvenCount());
}

public class OddEvenCounter
{
  private String line;
Scanner scan;
   public OddEvenCounter()
   {
     line="";
     scan=new Scanner(line);
   }

   public OddEvenCounter(String s)
   {
     line=s;
     scan=new Scanner(line);
   }

  public void setLine(String s)
  {
    line=s;
    scan=new Scanner(line);
  }

  public int getEvenCount()
  {
    int count= 0;
         scan=new Scanner(line);
    while(scan.hasNext()){
    if(scan.nextInt()%2==0){
    count++;
    }
    }
    return count;
  }

  public int getOddCount()
  {
    int count=0;
         scan=new Scanner(line);
        while(scan.hasNext()){
    if(scan.nextInt()%2!=0){
    count++;
    }
    }
    return count;
  }

  public String toString( )
  {
    return "";
  }
}
