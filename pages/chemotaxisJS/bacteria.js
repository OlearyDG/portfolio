 class Bacteria    
 {     
   /*
   var x=250, y=250, sex, num;
   var col;
   var breed, dead=false;
   */
   constructor(){
this.x=250; 
this.y=250;
this.sex=0;
this.num=0;
this.dead=false;
        timer=millis()+500;
         this.s=Math.floor(Math.random()*2);
          if(this.s%2==0){
     this.sex=1;
     }else{
     this.sex=0;
     }
     this.col=color(255,0,0);
     //fill(this.col);
     //console.log(this.col);
   }
   Bacteria(xx, yy, s, ccol){
       timer=millis()+500;
     this.x=xx;
     this.y=yy;
     if(s%2==0){
     this.sex=1;
     }else{
     this.sex=0;
     }
     this.col=ccol;
   }
   move(){
   let dir=Math.random();
   if(dir>=.5){
   this.x+=3;
   }else{
   this.x-=3;
   }
   let diry=Math.random();
   if(diry>=.5){
   this.y+=3;
   }else{
   this.y-=3;
   }
   if(this.x>495){
   this.x-=3;
   }
   if(this.x<0){
   this.x+=3;
   }
   if(this.y>495){
   this.y-=3;
   }
   if(this.y<0){
   this.y+=3;
   }
 }
   show(){
   this.move();
  fill(this.col);
   ellipse(this.x,this.y,5,5);
   }
 //}
   returnX(){
   return this.x;
   }
   returnY(){
   return this.y;
   }
   getS(){
   return this.sex;
   }
   returnNum(){
   return this.num;
   }
   setNum(sn){
   this.num=sn;
   }
   returnCol(){
   return this.col;
   }
   
   breed(bn,chance,mut){
   if(Math.random()<=chance){
   if(this.sex==1){
   if(millis()>timer){
   for(let i=0;i<bn;i++){
     if(baclist[i].returnX()>=this.x&&baclist[i].returnX()<=this.x+5){
       if(baclist[i].returnY()>=this.y&&baclist[i].returnY()<=this.y+5){
   if(baclist[i].getS()==0){
     if(Math.random()<=mut){
       let c= color(Math.floor(Math.random()*255),Math.floor(Math.random()*255),Math.floor(Math.random()*255));
       baclist.push(new Bacteria(this.x,this.y,(int)(Math.random()*2),c));
     }else{
       baclist.push(new Bacteria(this.x,this.y,(int)(Math.random()*2),this.col));
     }
   baclist[i].setNum(baclist[(baclist.length-1)].returnNum()+1);
   }
   }
   }
   }
    for(let i=bn+1;i<baclist.length;i++){
     if(baclist[i].returnX()>=this.x&&baclist[i].returnX()<=this.x+5){
       if(baclist[i].returnY()>=this.y&&baclist[i].returnY()<=this.y+5){
   if(baclist[i].getS()==0){
  if(Math.random()<=mut){
       let c= color(Math.floor(Math.random()*255),Math.floor(Math.random()*255),Math.floor(Math.random()*255));
       baclist.push(new Bacteria(this.x,this.y,Math.floor(Math.random()*2),c));
     }else{
       baclist.push(new Bacteria(this.x,this.y,Math.floor(Math.random()*2),this.col));
     }
   }
   }
   }
   }
   }
   }
   }
   }
   setDeath(b){
   this.dead=b;
   }
   getDeath(){
   return this.dead;
   }
   death(chance){
   if(Math.random()<=chance){
   this.setDeath(true);
   }
   }
 }    
