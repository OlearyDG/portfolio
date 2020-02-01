class SiteName implements Comparable<SiteName>
{
  String name;
  String [] sites;
  public SiteName(String n){
  name=n;
  //println(name);
  sites=name.split("\\W");
  //for(String x:sites){
 // println(x);
 // }
  }
  int compareTo(SiteName s){
    int n=sites[1].compareTo(s.getDomain());
  if(n!=0){
    return n;
  }else{
  return name.compareTo(s.getName());
  }
}
 String getName(){
 return name;
 }
 String getDomain(){
 return sites[1];
 }
}
