//mac Desktop/scanners/social/soc.rtf
//my windows C:/Users/Mango T. Shih-tzu/Desktop/scanners/social/soc.rtf
import java.util.Scanner;
import java.io.File;
void setup(){
Social s=new Social();
s.getSum();
}

public class Social
{
   private String socialNum;
Scanner scan;
Scanner num;
  public Social()
  {
       try{
scan=new Scanner(new File("C:/Users/Mango T. Shih-tzu/Desktop/scanners/social/soc.rtf"));
   }catch(Exception e){
   System.out.println(e);
   }
  }

  public Social(String soc)
  {
     try{
scan=new Scanner(new File("C:/Users/Mango T. Shih-tzu/Desktop/scanners/social/soc.rtf"));
   }catch(Exception e){
   System.out.println(e);
   }
  }

  public void setSocial(String soc)
  {
     try{
scan=new Scanner(new File("C:/Users/Mango T. Shih-tzu/Desktop/scanners/social/soc.rtf"));
   }catch(Exception e){
   System.out.println(e);
   }
  }

  public void getSum()
  {
int c=0;
while(scan.hasNextLine()){
num=new Scanner(scan.nextLine());
num.useDelimiter("\\D");
boolean t=true;
boolean j=true;
while(num.hasNextInt()){
 int oo=num.nextInt();
 if(!num.hasNextInt()&&j){
 System.out.print("SS# "+oo);
 }else if(t){
 System.out.print("SS# "+oo+"-");
 j=false;
 t=false;
}else if(num.hasNextInt()){
 System.out.print(+oo+"-");
 }else{
 System.out.print(oo);
 }
 c+=oo;
}
if(c!=0){
 System.out.print(" "+"Has a sum of "+c);
System.out.println();
}
 j=true;
c=0;
  }
//return c;
  }

  public String toString()
  {
    return "";
  }
}
