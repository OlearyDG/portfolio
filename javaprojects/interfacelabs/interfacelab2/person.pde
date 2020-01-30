public class Person implements Comparable<Person>
{
  private int myYear;
  private int myMonth;
  private int myDay;
  private String myName;

  public Person( int y, int m, int d, String n)
  {
    myYear=y;
    myMonth=m;
    myDay=d;
    myName=n;
  }

  public int compareTo( Person o )
  {
    int y=o.getYear()-myYear;
    int m=o.getMonth()-myMonth;
    int d=o.getDay()-myDay;
    String n=o.getName();
    if(y!=0){
    return y;
    }else if(m!=0){
    return m;
    }else if(d!=0){
    return d;
    }else{
    return n.compareTo(myName);
    }
  }
int getYear(){
return myYear;
}
int getMonth(){
return myMonth;
}
int getDay(){
return myDay;
}
String getName(){
return myName;
}
  public String toString( )
  {
     return myYear+" "+myMonth+" "+myDay+" "+myName;
  }
}
