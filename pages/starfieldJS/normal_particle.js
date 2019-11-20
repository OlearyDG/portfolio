class NormalParticle {
  //double x, y, speed, angle,ox,oy;
  //color c;
  //int spot;
  constructor(x,y,c,s) {
    this.x=x;
    this.y=y;
    this.ox=x;
    this.oy=y;
    this.speed=Math.random()*5;
    this.angle=Math.PI*(Math.random()*15);///2*Math.random();
    this.c=c;
    this.spot=s;
  }
  move(){
    this.x=this.x+(Math.cos(this.angle)*this.speed);
    this.y=this.y+(Math.sin(this.angle)*this.speed);
    this.angle+=.08;
    this.check(7);
    this.collision(7);
}
   show() {
    this.move();
    fill(this.c);
    ellipse(this.x, this.y, 7, 7);
  }
  check(l){
  if(this.x<0){
  this.x=l;
  this.speed*=-1;
  }
  if(this.x>1000){
  this.x=1000;
    this.speed*=-1;
  }
      
  if(this.y<0){
  this.y=0;  
    this.speed*=-1;
  }
  if(this.y>1000){
  this.y=1000;
    this.speed*=-1;
  }
  }
getX(){
return this.x;
}
getY(){
return this.y;
}
collision(l){
  for(let i=0;i<this.spot;i++){
if(this.y<=partlist[i].getY()+l&&this.y>=partlist[i].getY()){
if(this.x<=partlist[i].getX()+l&&this.x>=partlist[i].getX()){
   this.speed*=-1;
 }
}
}
  for(let i=this.spot+1;i<partlist.length;i++){
if(this.y<=partlist[i].getY()+l&&this.y>=partlist[i].getY()){
if(this.x<=partlist[i].getX()+l&&this.x>=partlist[i].getX()){
   this.speed*=-1;
 }
}
}
}
}
