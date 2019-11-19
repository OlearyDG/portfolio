//your code here...follow the steps listed on the repo..be creative! (like you have been)
 //random color color((int)(Math.random()*250),(int)(Math.random()*250),(int)(Math.random()*250))
 ArrayList<Particle> partlist;
 ArrayList<NormalParticle> partlist2;
 ArrayList<NormalParticle> partlist3;
 ArrayList<NormalParticle> partlist4;
 PImage asteroid;
void setup(){
 size(1000,1000);
partlist=new ArrayList();
partlist2=new ArrayList();
partlist3=new ArrayList();
partlist4=new ArrayList();
asteroid=loadImage("asteroid.png");
int pc=(int)(Math.random()*100);
int am=0;
while(am<pc){
partlist.add(new JumboParticle((int)(Math.random()*1000),(int)(Math.random()*1000),color((int)(Math.random()*250),(int)(Math.random()*250),(int)(Math.random()*250)),partlist.size()));
partlist.add(new NormalParticle((int)(Math.random()*1000),(int)(Math.random()*1000),color((int)(Math.random()*250),(int)(Math.random()*250),(int)(Math.random()*250)),partlist.size()));
partlist.add(new OddballParticle((int)(Math.random()*1000),(int)(Math.random()*1000),color((int)(Math.random()*250),(int)(Math.random()*250),(int)(Math.random()*250)),partlist.size()));
am++;
}
//partlist.add(new NormalParticle((int)(Math.random()*30)+250,(int)(Math.random()*30)+250,color((int)(Math.random()*250),(int)(Math.random()*250),(int)(Math.random()*250))));

}
void draw(){
  background(0);
  for(Particle x:partlist){
 x.show();
}
}
