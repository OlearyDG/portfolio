class OddballParticle implements Particle //uses an interface
{
 double x, y, speed, angle,ox,oy;
  color c;
  public OddballParticle(double x, double y, color c) {
    this.x=x;
    this.y=y;
    ox=x;
    oy=y;
    this.speed=Math.random()*(Math.random()*50);
    this.angle=Math.PI*2;///2*Math.random();
    this.c=c;
  }
  void move(){
    x=x+(Math.sin(angle)*speed);
    y=y+(Math.cos(angle)*speed);
    angle+=.08;
if(ox<=x+5&&ox>=x-5){
speed+=2;
}
if(speed>50){
speed=50;
}
}
  void show() {
    move();
    fill(c);
    image(asteroid,(float)x, (float)y, 20, 20);
  }
}
