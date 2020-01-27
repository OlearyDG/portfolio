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
    int y=myYear-o.getYear();
    int m=myMonth-o.getMonth();
    int d=myDay=o.getDay();
    String n=o.getName();
     return 0;
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
