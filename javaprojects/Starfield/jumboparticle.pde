class JumboParticle extends NormalParticle implements Particle//uses inheritance
{
//double x, y, speed, angle,ox,oy;
//color c;
public JumboParticle(double x, double y, color c, int s){
super(x,y,c,s);
}
void show() {
    move(20);
    fill(c);
    ellipse((float)x, (float)y, 20, 20);
  }
}
