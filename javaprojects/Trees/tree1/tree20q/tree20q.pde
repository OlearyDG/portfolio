  
BST tree=new BST();
TreeNode current;
TreeNode first;
TreeNode temp;
String s="Beatles Game!";
Scenes sc;
boolean introSlide=false;
boolean one=false;
boolean two=false;
boolean type=false;
boolean type2=false;
String n="";
boolean won=false;
String name="";
String q="";
//boolean start=true;
void setup() {
  size(800, 800);
  current=tree.buildTree();
  first=current;
  String s=(String)current.getValue();
  sc=new Scenes();
}
void draw() {
  background(0);
  fill(155,215,15);
  rect(100,500,100,100);
  rect(600,500,100,100);
  fill(255);
  textSize(20);
 // if(r){
 // noRight();
    //println("done");
//  }
  text(s, 200, height/2);
  if(type){
   text(n, 200, height/2+20);
  }
  text("X: "+mouseX+" Y: "+mouseY,mouseX,mouseY);
  //changeScenes();
}
void changeScenes() {
  if (introSlide==true) {
    sc.scene0();
  } else if (one==true) {
    sc.scene1();
  } else if (two==true) {
    sc.scene2();
  } else {
    introSlide=true;
  }
}

void keyPressed() {
   //s+=n;
  if(won==false){
  if(type2){
  s="Please enter a question for your answer\n";
  }
  if(type==true){
  if(key==ENTER||key==RETURN){
    type2=!type2;
    if(type2==false){
      q=n;
        type=false;
        println("q "+q+" name "+name);
        //println(temp.getRight());
         //temp=new TreeNode(temp.getValue(),temp,null);
        //new TreeNode(q,new TreeNode(),new TreeNode("Is it \""+name+" \"?")));
        //temp=new TreeNode(temp.getValue(),temp.getLeft(),new TreeNode(q,new TreeNode(),new TreeNode("Is it \""+name+" \"?")));
       // println(temp.getValue());
        //temp=new TreeNode(q,temp.getLeft(),new TreeNode("Is it \""+name+" \"?"));
        current=first;
        won=true;
    }else{
    name=n;
    }
    n="";
}else if(key==''){
  if(n.length()!=0&&n.length()!=1){
n=n.substring(0,n.length()-1);
  }else{
  n="";
  }
}else{
 n+=""+key;
}
}
  if (keyCode == LEFT) {
    try{
    s=(String)current.getValue();
    System.out.println(s);
     }catch(Exception e) {//leaf
    won=true;
      s="I win";
      current=first;
    }
    try{
      //if(start==false){
      current= current.getLeft();
      //}
    }catch (Exception e){
    }
  } else if (keyCode == RIGHT) {
    try{
    s=(String)current.getValue();
    System.out.println(s);
    }catch(Exception e) {//leaf
  s="I give up please give the answer\n";
  type=true;
    } 
    try{
      //if(start==false){
      temp=current;
      println("temp"+temp.getValue());
      current = current.getRight();
      println("cur"+current.getValue());
     // }
    }catch (Exception e){
    }
  }
}else if(won){
  println("test");
won=false;
s="Beatles game!";
current=first;
}
//start=false;
}
/*
void mouseClicked(){
if(start==false){
start=true;
s=(String)current.getValue();
}
if(mouseY>=500&&mouseY<=600){
if(mouseX>=100&&mouseX<=200){
current=current.getLeft();

}else if(mouseX>=600&&mouseX<=700){
if(current.getRight()==null){
r=true;
}else{
current=current.getRight();
}
}
}
}
void noRight(){
  println("jeff");
  s="I give up, what is it?\\n";
 //setn=true;
 boolean go=false;
 boolean go2=false;
 while(go==false){
 if(keyPressed){
 if(key==ENTER||key==RETURN){
  go=true;
    name=n;
  n="";
}else if(key==''){
  if(n.length()!=0&&n.length()!=1){
n=n.substring(0,n.length()-1);
  }else{
  n="";
  }
}else{
 n+=""+key;
}
 }
 }
 s="Please write a question to go with this answer.\\n";
  while(go2==false){
 if(keyPressed){
 if(key==ENTER||key==RETURN){
  go2=true;
    q=n;
  n="";
}else if(key==''){
  if(n.length()!=0&&n.length()!=1){
n=n.substring(0,n.length()-1);
  }else{
  n="";
  }
}else{
 n+=""+key;
}
 }
 }
 current.setRight(new TreeNode(q, new TreeNode(name), null));
 q="";
 name="";
 r=false;
 start=false;
 current=first;
  }

void keyPressed(){
  if(setn){
  if(key==ENTER||key==RETURN){
    setn=false;
    name=n;
   n="";
}else 
if(key==''){
  if(n.length()!=0&&n.length()!=1){
n=n.substring(0,n.length()-1);
  }else{
  n="";
  }
}else{
 n+=""+key;
}
}
*/
//}
/*
void changeScenes() {
  if (introSlide==true) {
    sc.scene0();
  } else if (one==true) {
    sc.scene1();
  } else if (two==true) {
    sc.scene2();
  } else {
    introSlide=true;
  }
}

void keyPressed() {
  String newn="";
  String newq="";
  if (keyCode == LEFT) {
    if(current.getValue()==null){
      s="I give up, what is it?";
      
    }else{
    s=(String)current.getValue();
    System.out.println(s);
      current= current.getLeft();
    }
  } else if (keyCode == RIGHT) {
    s=(String)current.getValue();
    System.out.println(s);
      current = current.getRight();
  }
}

*/

interface Treeable {
  public Object getValue();
  public Treeable getLeft();
  public Treeable getRight();
  public void setValue(Comparable value);
  public void setLeft(Treeable left);
  public void setRight(Treeable right);
}
