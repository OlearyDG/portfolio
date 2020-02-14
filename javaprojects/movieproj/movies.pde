public class Movie implements Comparable<Movie>{
int sc;
String rev;
public Movie(int sc,String rev){
this.sc=sc;
this.rev=rev;
}
public int compareTo(Movie m){
return sc-m.getScore();
}
public int getScore(){
return sc;
}
public boolean equals(Movie m){
return rev.equals(m.toString());
}
public String toString(){
return rev;
}
}
