class OddballParticle extends NormalParticle implements Particle //uses an interface
{
 //double x, y, speed, angle,ox,oy;
  //color c;
  public OddballParticle(double x, double y, color c, int s){
super(x,y,c,s);
}
  void move(){
    x=x+(Math.sin(angle)*speed);
    y=y+(Math.cos(angle)*speed);
    angle+=.08;
    check(20);
    collision(20);
if(ox<=x+5&&ox>=x-5){
//speed+=2;
}
if(speed>50){
speed=15;
}
}
  void show() {
    move();
    fill(c);
    image(asteroid,(float)x, (float)y, 20, 20);
  }
}
