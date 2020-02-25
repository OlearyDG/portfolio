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
    ArrayList<Integer> nums;
  public MathSet()
  {
  }

  public MathSet(String o, String t)
  {
    List<String> h = Arrays.asList(o.split(" "));
    nums= new ArrayList<Integer>();
    for(String x: h){
    nums.add(Integer.parseInt(x));
    }
    one=new TreeSet<Integer>(nums);
    nums=null;
     nums= new ArrayList<Integer>();
    h = Arrays.asList(t.split(" "));
    for(String x: h){
    nums.add(Integer.parseInt(x));
    }
    two=new TreeSet<Integer>(nums);
     //one=new ;
  }

  public Set<Integer> union()
  {
    Set<Integer> j=new TreeSet<Integer>();
    j.addAll(one);
    j.addAll(two);
    return j;
  }

  public Set<Integer> intersection()
  {
    Set<Integer> j=new TreeSet<Integer>();
     j.addAll(one);
     j.retainAll(two);
    return j;
  }

  public Set<Integer> differenceAMinusB()
  {
   Set<Integer> j=new TreeSet<Integer>();
   j.addAll(one);
    j.removeAll(two);
    return j;
  }

  public Set<Integer> differenceBMinusA()
  {
   Set<Integer> j=new TreeSet<Integer>();
   j.addAll(two);
    j.removeAll(one);
    return j;
  }
  
  public Set<Integer> symmetricDifference()
  {    
     Set<Integer> j=union();
     Set<Integer> i=intersection();
     j.removeAll(i);
    return j;
  }  
  
  public String toString()
  {
    return "Set one " + one + "\n" +  "Set two " + two +  "\n";
  }
}
