class pacman{
/*
  open=0;
 x=335;
y=423;
lastd='r';
death=false;
pactimer;
*/
constructor(){
   this.open=0;
 this.x=335;
this.y=423;
this.lastd='r';
this.death=false;
this.pactimer=0;
}
resetXY(){
this.x=335;
this.y=423;
}
display(){
  if(pac.pacDeath()==false){
if(isUp){
 this.setFalse('u');
this.y-=3;
this.checkBorder();
}
if(isDown){
  this.setFalse('d');
  this.y+=3;
this.checkBorder();
}
if(isRight){
  this.setFalse('r');
  this.x+=3;
this.checkBorder();
}
if(isLeft){
  this.setFalse('l');
 this.x-=3;
this.checkBorder();
}
if(this.open<=3){ 
 this.setPac();
 this.open++;
}else if(this.open<=10&&keyIsPressed){

image(pacclose, this.x, this.y, 25, 25);
 this.open++;
 if(this.open==10){
 this.open=0;
 }
 }else{
 this.setPac();
 }
 }
}
getX(){
return this.x;
}
getY(){
return this.y;
}
checkBorder(){
if(this.x<0){
this.x=675;
}
if(this.x>675){
this.x=0;
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
this.stopMove();
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
setFalse(d){
if(d=='d'){
isLeft=false;
isRight=false;
isUp=false;
}else if (d=='u'){
isLeft=false;
isRight=false;
isDown=false;
}else if (d=='r'){
isLeft=false;
isUp=false;
isDown=false;
}else if (d=='l'){
isUp=false;
isRight=false;
isDown=false;
}
}
setPac(){
  if(isUp||this.lastd=='u'){
image(pacup, this.x, this.y, 25,25);
this.lastd='u';
  }
  if(isDown||this.lastd=='d'){
image(pacdown, this.x, this.y, 25,25);
this.lastd='d';
  }
  if(isRight||this.lastd=='r'){
image(pacright, this.x,this.y, 25,25);
this.lastd='r';
  }
  if(isLeft||this.lastd=='l'){
image(pacleft, this.x, this.y, 25,25);
this.lastd='l';
  }
}
stopMove(){
if(isUp){
this.y+=3;
}
if(isDown){
this.y-=3;
}
if(isRight){
this.x-=3;
}
if(isLeft){
this.x+=3;
}
}
deathSet(){
this.death=true;
this.pactimer=millis()+2000;
}
pacDeath(){
if(millis()>=this.pactimer){
show=true;
return false;
}
show=true;
return true;
}
}
