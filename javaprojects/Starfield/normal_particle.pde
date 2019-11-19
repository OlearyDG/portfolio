class NormalParticle implements Particle {
  double x, y, speed, angle,ox,oy;
  color c;
  int spot;
  public NormalParticle(double x, double y, color c, int s) {
    this.x=x;
    this.y=y;
    ox=x;
    oy=y;
    this.speed=Math.random()*5;
    this.angle=Math.PI*(Math.random()*15);///2*Math.random();
    this.c=c;
    spot=s;
  }
  void move(int n){
    x=x+(Math.cos(angle)*speed);
    y=y+(Math.sin(angle)*speed);
    angle+=.08;
    check(n);
    collision(n);
if(ox<=x+5&&ox>=x-5){
//speed+=2;
}
if(speed>50){
speed=15;
}
}
  void show() {
    move(7);
    fill(c);
    ellipse((float)x, (float)y, 7, 7);
  }
  void check(int l){
  if(x<0){
  x=l;
  speed*=-1;
  }
  if(x>1000){
  x=1000;
    speed*=-1;
  }
      
  if(y<0){
  y=0;  
    speed*=-1;
  }
  if(y>1000){
  y=1000;
    speed*=-1;
  }
  }
double getX(){
return x;
}
double getY(){
return y;
}
void collision(int l){
  for(int i=0;i<spot;i++){
if(y<=partlist.get(i).getY()+l&&y>=partlist.get(i).getY()){
if(x<=partlist.get(i).getX()+l&&x>=partlist.get(i).getX()){
   speed*=-1;
 }
}
}
  for(int i=spot+1;i<partlist.size();i++){
if(y<=partlist.get(i).getY()+l&&y>=partlist.get(i).getY()){
if(x<=partlist.get(i).getX()+l&&x>=partlist.get(i).getX()){
   speed*=-1;
 }
}
}
}
}
