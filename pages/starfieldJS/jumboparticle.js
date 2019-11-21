class JumboParticle 
{
//double x, y, speed, angle,ox,oy;
//color c;
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
    this.check(20);
    this.collision(20);
}
 check(l){
  if(this.x*1.5<0){
  this.x=l;
  this.speed*=-1;
  }
  if(this.x>swidth){
  this.x=swidth-l;
    this.speed*=-1;
  }
      
  if(this.y*1.5<0){
  this.y=0;  
    this.speed*=-1;
  }
  if(this.y>sheight){
  this.y=sheight-l;
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
show() {
    this.move();
    fill(this.c);
    ellipse(this.x, this.y, 20, 20);
  }
}
