var startX;
var tipX;
var useTip;
var startY=0;
var endX=0;
var endY=0;
var tpose;
var dance;
var frank;
var time;
var ttime;
var impick;
function preload() {
  tpose=loadImage("tpose.png");
  dance=loadImage("dance.png");
  frank=loadImage("frankenstein.png");
}
function setup()
{
    //createCanvas(300,300);
    var canvas = createCanvas(300, 300);
    canvas.parent('sketch-div');
    time=millis();
    background(0);
    strokeWeight(random(5));
        startX=random(300);
        impick=random(100);
}
function draw()
{
  if(impick<=33){
     // console.log("frank!");
  image(tpose,0,0,300,300);
  tipX=random(5);
  }else if(impick>33&&impick<=66){
          //console.log("frank!");
    image(dance,0,0,300,300);
    tipX=random(300);
  }else {
         // console.log("frank!");
    image(frank,0,0,300,300);
    tipX=random(300);
  }
  stroke(255,255,51);
  if(millis()>=time+3000){
if(endX<=300){
  var randx=random(10);
  if(useTip){
  endX=tipX+endX;
  }
  endX=startX+randx;
  if(random(10)>5){
  endX-=(2*randx);
  }
  endY=startY+random(10);
  line(startX,startY,endX,endY);
  startX=endX;
  startY=endY;
}
  }
      timer();
}
function timer()
{
  if(millis()>=time+3200){
    if(timing()==2){
     console.log("reached");
startX=random(300);
startY=0;
endX=0;
console.log(endX);
console.log(startX);
endY=0;
time=millis();
useTip=false;
clear();
 background(0);
}
 }
}
function timing(){
  var timetest=millis()/1000;
  timetest=Math.floor(timetest);
        console.log(timetest);
if(timetest%2==0){
  impick=random(100);
return 2;
}else{
return -2;
}
}
