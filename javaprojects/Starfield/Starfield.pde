//your code here...follow the steps listed on the repo..be creative! (like you have been)
 ArrayList<NormalParticle> partlist;
void setup(){
 size(750,750);
partlist=new ArrayList();
int pc=(int)(Math.random()*800)+200;
int am=0;
while(am<pc){
partlist.add(new NormalParticle((int)(Math.random()*400)+100,(int)(Math.random()*400)+100,color((int)(Math.random()*250),(int)(Math.random()*250),(int)(Math.random()*250)),60));
am++;
}
}
void draw(){
  background(0);
  for(NormalParticle x:partlist){
 x.show();
}
}
