import java.util.Scanner;
import java.io.File;
void setup(){
Social s=new Social();
System.out.println(s.getSum());
}

public class Social
{
   private String socialNum;
Scanner scan;
Scanner num;
  public Social()
  {
       try{
scan=new Scanner(new File("Desktop/scanners/social/soc.rtf"));
   }catch(Exception e){
   System.out.println(e);
   }
  }

  public Social(String soc)
  {
     try{
scan=new Scanner(new File("Desktop/scanners/social/soc.rtf"));
   }catch(Exception e){
   System.out.println(e);
   }
  }

  public void setSocial(String soc)
  {
     try{
scan=new Scanner(new File("Desktop/scanners/social/soc.rtf"));
   }catch(Exception e){
   System.out.println(e);
   }
  }

  public int getSum()
  {
int c=0;
while(scan.hasNextLine()){
    //System.out.println(scan.nextLine());
num=new Scanner(scan.nextLine());
num.useDelimiter("\\D");
while(num.hasNextInt()){
 // System.out.println(scan.nextLine());
c+=num.nextInt();
//System.out.println(num.nextInt());
}
}
return c;
  }

  public String toString()
  {
    return "";
  }
}
