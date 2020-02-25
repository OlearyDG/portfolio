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
}
