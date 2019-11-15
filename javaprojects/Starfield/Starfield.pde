//your code here...follow the steps listed on the repo..be creative! (like you have been)
 ArrayList<NormalParticle> partlist;
 ArrayList<NormalParticle> partlist2;
 ArrayList<NormalParticle> partlist3;
 ArrayList<NormalParticle> partlist4;
void setup(){
 size(750,750);
partlist=new ArrayList();
partlist2=new ArrayList();
partlist3=new ArrayList();
partlist4=new ArrayList();
int pc=(int)(Math.random()*1000)+1000;
int am=0;
while(am<pc){
partlist.add(new NormalParticle((int)(Math.random()*250),(int)(Math.random()*250),color((int)(Math.random()*250),(int)(Math.random()*250),(int)(Math.random()*250))));
partlist2.add(new NormalParticle((int)(Math.random()*250)+550,(int)(Math.random()*250)+550,color((int)(Math.random()*250),(int)(Math.random()*250),(int)(Math.random()*250))));
partlist3.add(new NormalParticle((int)(Math.random()*250)+550,(int)(Math.random()*250),color((int)(Math.random()*250),(int)(Math.random()*250),(int)(Math.random()*250))));
partlist4.add(new NormalParticle((int)(Math.random()*250),(int)(Math.random()*250)+550,color((int)(Math.random()*250),(int)(Math.random()*250),(int)(Math.random()*250))));
am++;
}
//partlist.add(new NormalParticle((int)(Math.random()*30)+250,(int)(Math.random()*30)+250,color((int)(Math.random()*250),(int)(Math.random()*250),(int)(Math.random()*250))));
}
void draw(){
  background(0);
  for(NormalParticle x:partlist){
 x.show();
}
 for(NormalParticle x:partlist2){
 x.show();
}
 for(NormalParticle x:partlist3){
 x.show();
}
 for(NormalParticle x:partlist4){
 x.show();
}
}
