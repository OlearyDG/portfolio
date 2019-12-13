import java.util.Scanner;
void setup(){
  LineBreaker l = new LineBreaker("A A B B C C D D E",2);
  System.out.println(l.getLineBreaker());
  l.setLineBreaker("A",1);
  System.out.println(l.getLineBreaker());
  l.setLineBreaker("A J A J P I A N F O Q < L ",7);
  System.out.println(l.getLineBreaker());
  //System.out.println(l.getCount());
}
public class LineBreaker
{
  Scanner scan;
   private String line;
   private int breaker;

   public LineBreaker()
   {
     this("",0);
   }

   public LineBreaker(String s, int b)
   {
     line=s;
     breaker=b;
     scan=new Scanner(line);
   }

  public void setLineBreaker(String s, int b)
  {
      line=s;
     breaker=b;
     scan=new Scanner(line);
  }

  public String getLine()
  {
    return "";
  }
public int getCount(){
scan=new Scanner(line);
  int c=0;
while(scan.hasNext()){
  c++;
  scan.next();
}
return c;
}
  public String getLineBreaker()
  {
     String box ="";
    int n=getCount()/breaker;
      scan=new Scanner(line);
for(int i=0;i<n;i++){
for(int j=0;j<breaker;j++){
box+=scan.next();
}
box+="\n";
}
while(scan.hasNext()){
box+=scan.next();
}

    return box+"\n";
  }

  public String toString()
  {
    return "";
  }
}
