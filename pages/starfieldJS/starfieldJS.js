//your code here...follow the steps listed on the repo..be creative! (like you have been)
 //random color color(random(0,255),random(0,255),random(0,255))
 var partlist;
 var asteroid;
 var swidth=window.innerWidth/2;
 var sheight=window.innerHeight/2;
 var pam=((swidth*sheight)/(1000*1000))*100;
function setup(){
 createCanvas(swidth,sheight);
partlist=[];
asteroid=loadImage("asteroid.png");
console.log(pam);
pam=Math.floor(pam);
var pc=random(20,pam);
console.log(pam);
var am=0;
while(am<pc){
partlist.push(new JumboParticle(random(0,swidth),random(0,sheight),color(random(0,255),random(0,255),random(0,255)),partlist.length));
partlist.push(new NormalParticle(random(0,swidth),random(0,sheight),color(random(0,255),random(0,255),random(0,255)),partlist.length));
partlist.push(new OddballParticle(random(0,swidth),random(0,sheight),color(random(0,255),random(0,255),random(0,255)),partlist.length));
am++;
}
//partlist.push(new NormalParticle((int)(Math.random()*30)+250,(int)(Math.random()*30)+250,color(random(0,255),random(0,255),random(0,255))));

}
function draw(){
  background(0);
  for(let x of partlist){
 x.show();
}
}
