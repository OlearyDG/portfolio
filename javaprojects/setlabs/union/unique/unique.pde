import java.util.*;
/*
a b c d e f g h a b c d e f g h i j k
one two three one two three six seven one two
1 2 3 4 5 1 2 3 4 5 1 2 3 4 5 6
*/
UniquesDupes un;

void setup(){
  un=new UniquesDupes();
  println(un.getUniques("a b c d e f g h a b c d e f g h i j k"));
  println(un.getDupes("a b c d e f g h a b c d e f g h i j k"));
  println(un.getUniques("one two three one two three six seven one two"));
  println(un.getDupes("one two three one two three six seven one two"));
  println(un.getUniques("1 2 3 4 5 1 2 3 4 5 1 2 3 4 5 6"));
  println(un.getDupes("1 2 3 4 5 1 2 3 4 5 1 2 3 4 5 6"));
}
