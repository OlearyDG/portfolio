public class Wordlist{
TreeMap<String,ArrayList<String>> map;
 ArrayList<String> reg;
  ArrayList<String> wors;
  public Wordlist(){
 map=new TreeMap<String,ArrayList<String>>();
 String[] w=loadStrings("hey.txt");
 String tests="";
wors=new ArrayList<String>();
reg=new ArrayList<String>();
for(String x:w){
  //println(x);
  wors.add(x);
}
for(String x:wors){
String s[]=x.split("[\\s\\[\\]\\(\\)\\.\\!\\/\\,\\?\\{\\}\\:\\;\"0-9]");
for(String y:s){
if(!y.equals("")){
    reg.add(y.toLowerCase());
  if(!map.containsKey(y.toLowerCase())){
map.put(y.toLowerCase(), new ArrayList<String>());
}
}
}
}

for(int i=0;i<reg.size();i++){
try{
map.get(reg.get(i)).add(reg.get(i+1));
}catch(Exception e){
map.get(reg.get(i)).add(reg.get(0));
}
}
//for(String x:map.keySet()){
//println(x+" "+map.get(x));
//} //<>//
}
public String generate(){
String out="";
int ind=(int)(Math.random()*reg.size());
boolean s=true;
String lasts="";
while(out.length()<=555){
  try{
if(s){
  lasts=reg.get(ind);
out+=(reg.get(ind))+" ";
s=!s;
continue;
}
ind=(int)(Math.random()*map.get(lasts).size());
out+=map.get(lasts).get(ind)+" ";
lasts=map.get(lasts).get(ind);
  }catch (Exception e){
  return out;
  }
}
return out;
}

}
