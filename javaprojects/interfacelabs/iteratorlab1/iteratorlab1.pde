import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Iterator;
void setup(){
   IteratorRemover test = new IteratorRemover("a b c a b c","a");
    test.remove();
    out.println(test);

    test.setTest("a b c d e f g h i j x x x x","x");
    test.remove();
    out.println(test);

    test.setTest("1 2 3 4 5 6 a b c a b c","b");
    test.remove();
    out.println(test);
}
