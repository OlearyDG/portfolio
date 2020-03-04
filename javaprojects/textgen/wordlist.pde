public class Wordlist{
TreeMap<String,ArrayList<String>> map;
  public Wordlist(){
 map=new TreeMap<String,ArrayList<String>>();
 String[] w=loadStrings("hey.txt");
 for(String x:w){
 String[]s=x.split("[\\s,\\(\\)]");
ArrayList<String> wors=new ArrayList<String>();
for(String q:s){
 if(!q.equals(null)){ //<>//
  wors.add(q);
 }
}
s=wors.toArray(s);
println(s);
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
   if(s[i].length()>=1){
 if(s[i].charAt(s[i].length()-1)=='.'||s[i].charAt(s[i].length()-1)=='!'||s[i].charAt(s[i].length()-1)=='?'){
 end=s[i].charAt(s[i].length()-1)+"";
 }
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
}

}
