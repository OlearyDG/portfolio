class NormalParticle {
  double x, y, speed, angle;
  color c;
  public NormalParticle(double x, double y, color c, double angle) {
    this.x=x;
    this.y=y;
    this.speed=Math.random()*20;
    this.angle=Math.PI/2*Math.random();
    this.c=c;
  }
  void move() {
    x=x+(Math.cos(angle)*speed);
    y=y+(Math.sin(angle)*speed);
    angle+=.04;
  }
  void show() {
    move();
    fill(c);
    ellipse((float)x, (float)y, 7, 7);
  }
}
