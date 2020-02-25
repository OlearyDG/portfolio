import java.util.Set;
import java.util.TreeSet;
import java.util.Arrays;
import java.util.*;
MathSet un;

void setup(){
un=new MathSet("1 2 3 4 5","4 5 6 7 8");
println(un.union());
println(un.intersection());
println(un.differenceAMinusB());
println(un.differenceBMinusA());
println(un.symmetricDifference());
}
