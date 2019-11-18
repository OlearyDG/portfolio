class JumboParticle extends NormalParticle implements Particle//uses inheritance
{
//double x, y, speed, angle,ox,oy;
//color c;
public JumboParticle(double x, double y, color c){
super(x,y,c);
}
void show() {
    move();
    fill(c);
    ellipse((float)x, (float)y, 40, 40);
  }
}
