class Cup{
//var x,y,plusy=-50;
 //var ctime=millis()+100;

 constructor(x, y){
 this.x=x;
    this.y=y;
  

};

 show(){
  if(millis()>this.ctime){
     clear();
      background(0);
      console.log(plusy);
image(this.cup,this.x,this.y+this.plusy,300,300);
cTimer();
  }
};
  cTimer(){
this.ctime=millis()+100;
this.plusy*=-1;
}
}
