//declare bacteria variables here   
var baclist=[];
var deathv=0.0001;
var timer;
var rand=Math.random()*.5;
console.log(rand);
function setup()   
 {    
   //createCanvas(500,500);
      var canvas = createCanvas(500, 500);
    canvas.parent('sketch-div');
   for(let i=0;i<20;i++){
   baclist.push(new Bacteria(250,250,color(250,0,0)));
   baclist[i].setNum(i);
   }
   timer=millis()+500;
   if(second()%3==0){
   rand=Math.random();
   }
   //initialize bacteria variables here   
 }   
function draw()   
 {    
   clear();
   let bacc=0;
   for(let x of baclist){
   if(!x.getDeath()){
   bacc++;
   }
   }
 // console.log("millis"+millis()+" timer"+timer+" baccount"+bacc);
      background(0);
   for(let i=0;i<baclist.length;i++){
     if(bacc>400){
     deathv=.001;
     }
     if(bacc>500){
     deathv=.01;
     }
     if(bacc>900){
     deathv=.1;
     }
     if(bacc<=400){
     deathv=.0001;
     }
     if(bacc<400&&bacc>100){
     deathv=.00001;
     }
     if(bacc<=100){
     deathv=.000001;
     }
     if(!baclist[i].getDeath()){
   baclist[i].show();
   baclist[i].breed(i,0.2,rand);
   baclist[i].death(0.0001);
   }
 }
   //move and show the bacteria   
 }  
