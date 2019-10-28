class Cup{
//var x,y,plusy=-50;
 //var ctime=millis()+100;

 constructor(x, y){
 this.x=x;
    this.y=y;
  this.ctime=millis()+100;
this.plusy=-50;
}

 show(){
  if(millis()>this.ctime){
    console.log("weeeeeeee");
     clear();
      background(0);
      console.log(this.plusy);
      image(cup,this.x,this.y+this.plusy,300,300);
this.cTimer();
  }
}
  cTimer(){
this.ctime=millis()+100;
this.plusy*=-1;
}
}
