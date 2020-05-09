 PQTester p;
void setup(){
  p= new  PQTester("dog cat barge melon zebra fort lego");
  //p= new  PQTester("d c b m z f l");
  println(p.toString());
  println(p.getMin());
  println(p.getNaturalOrder(" "));
}
