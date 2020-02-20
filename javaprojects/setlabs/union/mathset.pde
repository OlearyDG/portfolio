public class MathSet
{
  /*
1 2 3 4 5
4 5 6 7 8
10 11 12 13 14 15 16 17
11 13 15 17 19 21 23
4 5 5 6 76 7 7 8 8 8 8 8
23 3 4 3 5 3 53 5 46 46 4 6 5 3 4
*/
  private Set<Integer> one;
  private Set<Integer> two;

  public MathSet()
  {
  }

  public MathSet(String o, String t)
  {
    List<String> h = Arrays.asList(o.split(" "));
    for(String x: h){
    println(x);
    }
     //one=new ;
  }

  public Set<Integer> union()
  {
    return null;
  }

  public Set<Integer> intersection()
  {
    return null;
  }

  public Set<Integer> differenceAMinusB()
  {
    return null;
  }

  public Set<Integer> differenceBMinusA()
  {
    return null;
  }
  
  public Set<Integer> symmetricDifference()
  {    
    return null;
  }  
  
  public String toString()
  {
    return "Set one " + one + "\n" +  "Set two " + two +  "\n";
  }
}
