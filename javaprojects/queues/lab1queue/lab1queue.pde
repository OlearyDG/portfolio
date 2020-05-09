PalinList p;
void setup(){
  p=new PalinList("one two three four five");
 println(p.isPalin());
 p.setList("hello there hello");
 println(p.isPalin());
}
