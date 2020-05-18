public interface Linkable
{
   Comparable getValue();
   Linkable getNext();
   Linkable getPrev();
   void setNext(Linkable next);
   void setValue(Comparable value);
   void setPrev(Linkable next);
}
