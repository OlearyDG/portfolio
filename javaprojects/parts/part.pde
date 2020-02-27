public class Part implements Comparable<Part>
{
  private String part, model, car;
  private int year;

  public Part(String line) 
  {
    String[] h1=new String[0];
    String[] h2=new String[0];
    String[] list = line.split(" ");
    for(int i=0;i<list.length;i++){
    try{
    int num=Integer.parseInt(list[i]);
    if(num+"".length()>4){
    h1=Arrays.copyOfRange(list,0,i+1);
    h2=Arrays.copyOfRange(list,i+1,list.length);
  break;
  }
  }catch(Exception e){    
    }
    }
    String par="";
    for(String x:h1){
    try{
      model=Integer.parseInt(x)+"";
    }catch(Exception e){
      par+=x+" ";
    }
    }
    part=par;
    String car="";
    for(String x:h2){
    try{
      year=Integer.parseInt(x);
    }catch(Exception e){
      car+=x+" ";
    }
    }
    this.car=car;
  }

  //have to have compareTo if implements Comparable
  public int compareTo( Part other )
  {
if(car.compareTo(other.getCar())!=0){
return car.compareTo(other.getCar());
}else if(year-other.getYear()!=0){
return year-other.getYear();
}else if(part.compareTo(other.getPart())!=0){
return part.compareTo(other.getPart());
}else{
return model.compareTo(other.getModel());
}
  }
String getCar(){
  return car;
}
String getModel(){
  return model;
}
String getPart(){
  return part;
}
int getYear(){
  return year;
}
  public String toString()
  {
    return part+model+" "+car+year;
  }
}
