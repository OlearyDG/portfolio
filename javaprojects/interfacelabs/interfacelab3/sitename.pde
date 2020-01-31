class SiteName implements Comparable<SiteName>
{
  String name;
  String [] sites;
  public SiteName(String n){
  name=n;
  //println(name);
  sites=name.split("\\W");
  for(String x:sites){
  println(x);
  }
  }
  int compareTo(SiteName s){
    int n=s.getDomain().compareTo(sites[1]);
  if(n!=0){
    return n;
  }else{
  return s.getName().compareTo(name);
  }
}
 String getName(){
 return name;
 }
 String getDomain(){
 return sites[1];
 }
}
