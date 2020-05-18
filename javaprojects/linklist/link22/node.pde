public class ListNode implements Linkable
{
  private Comparable listNodeValue;
  private ListNode nextListNode;
  private ListNode prevListNode;

  public ListNode()
  {
    listNodeValue = null;
    nextListNode = null;
    prevListNode=null;
  }

  public ListNode(ListNode prev, Comparable value, ListNode next)
  {
    prevListNode=prev;
    listNodeValue=value;
    nextListNode=next;
  }

  public Comparable getValue()
  {
    return listNodeValue;
  }

  public ListNode getNext()
  {
     return nextListNode;
  }

  public ListNode getPrev()
  {
     return prevListNode;
  }
  
  public void setValue(Comparable value)
  {
    listNodeValue = value;
  }

  public void setNext(Linkable next)
  {
    nextListNode = (ListNode)next;
  }
  
   public void setPrev(Linkable next)
  {
    prevListNode = (ListNode)next;
  }
}
