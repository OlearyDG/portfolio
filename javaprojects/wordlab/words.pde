public class Words{
  Scanner scan;
  ArrayList s;
public Words(){
try{
  scan=new Scanner(new File("Desktop/wordlab/text.txt"));
  scan.useDelimiter("\\s");
}catch(Exception e){
System.out.println(e);
}
s=new ArrayList<String>();
}
public void toList(){
  int c=0;
while(scan.hasNext()){
s.add(scan.next());

println(s.get(c));
c++;
}
}
}
