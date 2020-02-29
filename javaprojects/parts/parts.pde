import static java.lang.System.*;
import java.util.*;
import java.util.Arrays;
//Files needed
   //Part.java
   //PartList.java
    PartList prog;
    Part test;
  void setup(){
    prog = new PartList("text.txt");
    test=new Part("Water Pump 19934 Ford Taurus 1999");
    out.println(prog);
   //println(test.toString());
  }
