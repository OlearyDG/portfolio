public class Test{
LinkedList<Integer> l;
public Test(String s){
  l=new LinkedList<Integer>();
  String[] ss=s.split(" ");
  for(String x:ss){
  l.offer(Integer.parseInt(x));
  }
}
public void run(){
LinkedList<Integer> temp=new LinkedList<Integer>(l);
int sum=0;
for(Integer x:temp){
sum+=x;
}
println("SUM: "+sum);
println("AVERAGE: "+(double)sum/temp.size());
int small=temp.peek();
for(Integer x:temp){
if(x<small){
small=x;
}
}
println("LEAST: "+small);
int large=temp.peek();
for(Integer x:temp){
if(x>large){
large=x;
}
}
println("GREATEST: "+large);
}
}
