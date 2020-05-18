
public class ListFunHouseTwo
{
  private ListNode theList;
  
  public ListFunHouseTwo()
  {
theList=new ListNode();
  }
  
  public void add(Comparable data)
  {
theList=new ListNode(null,data,theList);
theList.getNext().setPrev(theList);
  }
  //this method will return the number of nodes present in list
  public int nodeCount()
  {
    ListNode temp=theList;
     int count=0;
while(temp!=null){
count++;
temp=temp.getNext();
}  
     return count;
  }
    
  //this method will create a new node with the same value as the first node and add this
  //new node at the front of the list.  Once finished, the first node will occur twice.
  public void doubleFirst()
  {
add(theList.getValue());
//while(theList!=null){
//println(theList.getValue());
//theList=theList.getNext();
//}
        
  }

  //this method will create a new node with the same value as the last node and add this
  //new node at the end.  Once finished, the last node will occur twice.
  public void doubleLast()
  {
ListNode temp=theList;
while(temp.getNext()!=null){
temp=temp.getNext();
}
println(temp.getPrev().getValue());
temp=new ListNode(temp.getPrev(),temp.getPrev().getValue(),null);
temp.getPrev().setNext(temp);
//temp.getPrev().setNext(temp);
//while(temp.getPrev()!=null){
//println(temp.getValue());
//temp=temp.getPrev();
//}
//theList=temp;
//while(theList!=null){
//println(theList.getValue());
//theList=theList.getNext();
//}
  }
  
  //method skipEveryOther will remove every other node
  public void skipEveryOther()
  {
ListNode temp=theList;
ListNode temp2=new ListNode(null,temp.getValue(),temp.getNext().getNext());
boolean t=true;
while(temp!=null){
if(t==false){
 temp2=new ListNode(temp2,temp.getValue(),temp.getNext().getNext());
 temp=temp.getNext();
}
t=!t;
temp=temp.getNext();
}
while(temp2!=null){
temp2=temp2.getPrev();
println(temp2.getValue());
}
  }

  //this method will set the value of every xth node in the list
  public void setXthNode(int x, Comparable value)
  {
    ListNode temp=theList;
for(int i=1;i<nodeCount()+1;i++){
if(i%x==0){
temp.setValue(value);
}
temp=temp.getNext();
} 
  }  

  //this method will remove every xth node in the list
  public void removeXthNode(int x)
  {
   int num=nodeCount()+1;
ListNode temp=theList;
for(int i=1;i<num;i++){
if(i%x==0){
  if(temp.getPrev()!=null&&temp.getNext()!=null){
temp.getPrev().setNext(temp.getNext()); //<>//
//println("prev"+temp.getPrev().getValue());
//println("val"+temp.getValue());
temp.getNext().setPrev(temp.getPrev()); //<>//
//println("next"+temp.getNext().getValue());
  }else if(temp.getPrev()==null){
  temp.getNext().setPrev(null);
  }else{
  temp.getPrev().setNext(null);
  }
}
temp=temp.getNext(); //<>//
} 

  }    
  //this method will return a String containing the entire list
   public String toString()
   {
     ListNode temp=theList;
     String output="";
while(temp!=null){
output+=temp.getValue()+" "; 
temp=temp.getNext();
}
     return output;
   }      
}
