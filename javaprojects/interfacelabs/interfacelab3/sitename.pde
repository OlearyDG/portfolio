class SiteName implements Comparable<SiteName>
{
  String name;
  String [] sites;
  public SiteName(String n){
  name=n;
  sites=n.split(".");
  for(String x:sites){
  println(x+"ff");
  }
  }
  int compareTo(SiteName s){
    int n=s.getDomain().compareTo("ff");//sites[1]);
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
   return "oor";
 //return sites[1];
 }
}
