public class Wordlist{
TreeMap<String,ArrayList<String>> map;
  public Wordlist(){
 map=new TreeMap<String,ArrayList<String>>();
 String[] w=loadStrings("hey.txt");
 for(String x:w){
 String[]s=x.split("\\s");
 for(int i=0;i<s.length;i++){
   String end="";
 if(s[i].charAt(s[i].length()-1)=='.'||s[i].charAt(s[i].length()-1)=='!'||s[i].charAt(s[i].length()-1)=='?'){
 end=s[i].charAt(s[i].length()-1)+"";
 }
 
 }
 }
}
}
