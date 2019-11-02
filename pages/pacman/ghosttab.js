class ghosts{
//1=red, 2=blue, 3=pink, 4=orange, 5=power, 6=eyes
/*gcolor=0;
x=331;
y=362;
di=Math.random();
oft=(int)Math.random()*2000+3000;
time=5000;
this.speed=2;
dir='q';
xdir='q';
power=false;
eyes=false;
escape=true;
*/
  constructor( c){
    this.gcolor=c;
this.x=331;
this.y=362;
this.di=Math.random();
this.oft=Math.random()*2000+3000;
this.oft=Math.floor(this.oft);
this.time=5000;
this.speed=2;
this.dir='q';
this.xdir='q';
this.power=false;
this.eyes=false;
this.escape=true;
}
resetXY(){
this.x=331;
this.y=362;
}
display(){
if(pac.pacDeath()==false){
  if(dotcount==0){
  this.power=false;
  this.eyes=false;
  
  this.resetXY();
  }
  if(this.escape){
  if(this.x>=275&&this.x<=418){
  if(this.y>=299&&this.y<=405){
  this.y-=this.speed;
  image(this.checkGhost(), this.x, this.y, 25, 25);
  }
  }
  }
  if(this.y<=299&&this.eyes==false){
this.escape=false;
}
if(this.escape==false){
if(!this.eyes){
if(millis()>=this.time){
this.oftCheck();
}
if(this.di<=0.25){
this.x+=this.speed;

}else if(this.di>=0.251&&this.di<=0.5){
this.x-=this.speed;

}else if(this.di>=0.51&&this.di<=0.75){
this.y-=this.speed;
}else{
this.y+=this.speed;
}
this.checkBorder();
if(!this.power){
image(this.checkGhost(), this.x, this.y, 25, 25);
}else{
image(powghost, this.x, this.y, 25, 25);
}
}else if(this.eyes){
  this.power=true;
if(this.x<331){
this.x+=this.speed;
}
if(this.x>331){
this.x-=this.speed;
}
if(this.y<284){
this.y+=this.speed;
}
if(this.y>284){
this.y-=this.speed;
}
image(ghosteye, this.x, this.y, 25, 25);
}
}
if(this.x==331&&this.y==284&&this.eyes){
this.eyes=false;
  this.power=false;
}
}
}
setPowerfal(){
this.power=false;
}
setPowertru(){
this.power=true;
}
getX(){
return this.x;
}
getY(){
return this.y;
}
checkBorder(){
if(this.x<0){
this.stopMove();
}
if(this.x>675){
this.stopMove();
}
  if(this.x>20&&this.x<61){//left columns
if((this.y>360&&this.y<665)||(this.y<360&&this.y>124)){
this.stopMove();
}
  }
  if(this.x>20&&this.x<60){
if(this.y<362){
this.stopMove();
}
  }
  if(this.y>640){//bottom row
this.stopMove();
  }
  if(this.y<127){//top row
this.stopMove();
  }
  if(this.x>610){//right columns
if((this.y>389&&this.y<667)||(this.y<363&&this.y>125)){
this.stopMove();
}
  }
//ghost box
if(this.x>241&&this.x<429){
if(this.y<413&&this.y>304){
if(this.escape==false){
this.stopMove();
}
}
}
//bottom left
//l-block
if(this.x>94&&this.x<213){
if(this.y>414&&this.y<472){
this.stopMove();
}
}
if(this.x>157&&this.x<213){
if(this.y>445&&this.y<538){
this.stopMove();
}
}
//rectangle
if(this.x>96&&this.x<215){
if(this.y>553&&this.y<617){
this.stopMove();
}
}
//bottom middle
//top t-block
if(this.x>270&&this.x<403){
if(this.y>460&&this.y<515){
this.stopMove();
}
}
if(this.x>300&&this.x<369){
if(this.y>440&&this.y<483){
this.stopMove();
}
}
//bottom t-block
if(this.x>270&&this.x<403){
if(this.y>529&&this.y<586){
this.stopMove();
}
}
if(this.x>300&&this.x<370){
if(this.y>584&&this.y<624){
this.stopMove();
}
}
//bottom right
//l-block
if(this.x>461&&this.x<579){
if(this.y>415&&this.y<469){
this.stopMove();
}
}
if(this.x>461&&this.x<515){
if(this.y>469&&this.y<537){
this.stopMove();
}
}
//rectangle
if(this.x>460&&this.x<580){
if(this.y>555&&this.y<614){
this.stopMove();
}
}
//top right
//small rectangle
if(this.x>468&&this.x<579){
if(this.y<324&&this.y>275){
this.stopMove();
}
}
//large rectangle
if(this.x>458&&this.x<585){
if(this.y<223&&this.y>136){
this.stopMove();
}
}
//top middle
//t-block
if(this.x>270&&this.x<398){
if(this.y<253&&this.y>200){
this.stopMove();
}
}
if(this.x>302&&this.x<367){
if(this.y<275&&this.y>251){
this.stopMove();
}
}
//top left
//small rectangle
if(this.x>95&&this.x<205){
if(this.y<326&&this.y>279){
this.stopMove();
}
}
//large rectangle
if(this.x>87&&this.x<212){
if(this.y<223&&this.y>140){
this.stopMove();
}
}
}
stopMove(){
  if(this.eyes==false){
if(this.di<=0.25){
this.x-=this.speed;
}
if(this.di>=0.251&&this.di<=0.5){
this.x+=this.speed;
}
if(this.di>=0.51&&this.di<=0.75){
this.y+=this.speed;
}
if(this.di>=0.751){
this.y-=this.speed;
}
this.di=Math.random();
}
}
checkGhost(){
if(this.gcolor==1){
return rghost;
}
else if(this.gcolor==2){
return bghost;
}
else if(this.gcolor==3){
 return pghost;
}
else if(this.gcolor==4){
return oghost;
}
return powghost;
}
eaten(){
  if(pac.getX()+13>=this.x&&pac.getX()<=this.x+13){
if(pac.getY()+13>=this.y&&pac.getY()<=this.y+13){
  if(this.power==false){
  pac.deathSet();
  lives--;
  start=false;
  show=false;
  restart();
}else{
score+=200;
livesscore+=200;
this.eyes=true;
}
}
}
}
escapeSet(){
this.escape=true;
}
oftCheck(){
this.di=Math.random();
 this.time=millis()+this.oft;
}
}
