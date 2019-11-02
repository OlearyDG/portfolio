class dots {
//dots are to be sized 15x15 pixels
  //private int x=0,y=0;
constructor(x, y){
  this.x=x;
  this.y=y;
  this.eat=false;
  this.check=true;
}
display(){
if(this.check){
  this.eaten();
}
  if(!this.eat){
  image(dot,this.x,this.y,15,15);
  }
}
eaten(){
if(pac.getX()+13>=this.x&&pac.getX()<=this.x+13){
if(pac.getY()+13>=this.y&&pac.getY()<=this.y+13){
this.eat=true;
score+=100;
livesscore+=100;
dotcount--;
this.check=false;
}
}
}

eatReset(){
this.eat=false;
}
checkReset(){
this.check=true;
}
toString(){
return this.x+" "+this.y;
}
getPower(){
  return false;
}
}
