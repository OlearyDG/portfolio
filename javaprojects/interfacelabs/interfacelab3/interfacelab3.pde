import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Scanner;
import java.util.Collections;
import static java.lang.System.*;
Scanner scan;
String test="lego.com";
ArrayList<String> list;
ArrayList<SiteName> slist;
void setup(){
  slist=new ArrayList<SiteName>();
  list=new ArrayList<String>();
  try{
scan=new Scanner(new File("C:\\Users\\Mango T. Shih-tzu\\Desktop\\interfacelabs\\interfacelab3\\text.txt"));//"Desktop/interfacelabs/interfacelab3/text.txt"));
//scan=new Scanner(test);
  }catch(Exception e){
    println(e);
  }
  scan.useDelimiter("\\s");
  while(scan.hasNext()){
  list.add(scan.next());
  }
  list.remove(0);
  //list.add(test);
  for(int i=list.size()-1;i>=0;i--){
  if(list.get(i).equals("")||list.get(i).equals(null)){
 list.remove(i);
  }
  }
  for(String x:list){
  slist.add(new SiteName(x));
  }
  Collections.sort(slist);
 for(SiteName x:slist){
  println(x.getName());
  }
  scan.close();
  }
