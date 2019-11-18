class NormalParticle implements Particle {
  double x, y, speed, angle,ox,oy;
  color c;
  public NormalParticle(double x, double y, color c) {
    this.x=x;
    this.y=y;
    ox=x;
    oy=y;
    this.speed=Math.random()*22;
    this.angle=Math.PI*2;///2*Math.random();
    this.c=c;
  }
  void move(){
    x=x+(Math.cos(angle)*speed);
    y=y+(Math.sin(angle)*speed);
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
    ellipse((float)x, (float)y, 7, 7);
  }
}
