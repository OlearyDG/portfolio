
public class Word implements Comparable<Word>
{
  private String word;

  public Word( String s )
  {
    word=s;
  }

  public int compareTo( Word rhs )
  {    
    int l=word.length()-rhs.toString().length();
    if(l!=0){
    return l;
    }else{
    return word.compareTo(rhs.toString());
    }
  }

  public String toString()
  {
    return word;
  }
}
