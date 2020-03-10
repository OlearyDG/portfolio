public class Wordlist{
TreeMap<String,ArrayList<String>> map;
  public Wordlist(){
 map=new TreeMap<String,ArrayList<String>>();
 String[] w=loadStrings("hey.txt");
 String tests="";
 ArrayList<String> wors=new ArrayList<String>();
for(String x:w){
  //println(x);
  wors.add(x);
}
for(String x:wors){
String s[]=x.split("\\s");
for(String y:s)
println(y);
}
 for(String x:w){
 //String[]s=x.split(" ");
 //println(x);
 }
/*
for(String q:s){
 if(!q.equals(null)){ //<>//
  wors.add(q);
 }
}
s=wors.toArray(s);
println(s);
*/
/*
 for(int i=0;i<s.length;i++){

  boolean test=false;
   if(s[i].equals(null)||s[i].equals("")||s[i].equals(" ")){
     test=true;
     i--;
  }
   String end="";
   if(!map.containsKey(s[i])){
   map.put(s[i],new ArrayList<String>());
   }
 if(!end.equals("")){
 map.get(s[i]).add(end);
 }else if(i+1<s.length){
  map.get(s[i]).add(s[i+1]);
 }
 if(test){
 i+=2;
 }
 }
 }
 println(map.toString());
 */

}
}
