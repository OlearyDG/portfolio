import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Scanner;
import java.util.Collections;
import static java.lang.System.*;
Scanner scan;
String s="";
ArrayList <String> list;
ArrayList <Person> people;
String [] data;
boolean skip=true;
void setup(){
  list= new ArrayList<String>();
  people= new ArrayList<Person>();
  try{
scan=new Scanner(new File("Desktop/interfacelabs/interfacelab2/text.txt"));
  }catch(Exception e){
  println(e);
  }
while(scan.hasNextLine()){
  if(skip){
    scan.nextLine();
    skip=false;
  }else if(!skip){
list.add(scan.nextLine());
  }
}
for(String x:list){
s+=x;
}
data=s.split("\\s");
for(int i=0;i<data.length;i+=4){
people.add(new Person(Integer.parseInt(data[i]),Integer.parseInt(data[i+1]),Integer.parseInt(data[i+2]),data[i+3]));
}
Collections.sort(people);
for(Person x:people){
println(x.getName());
}
//for(Person x:people){
//println(x.toString());
//}
scan.close();
}
