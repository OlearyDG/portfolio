var pacup,pacdown,pacleft,pacright,pacclose;
var maze,dot,powerdot;
var bghost,rghost,pghost,oghost,powghost,ghosteye;
var start=false;
var isLeft, isRight, isUp, isDown;
var gameStart=false;
var check=true;
var lives=3;
var pac=new pacman();
var pellets=[];
var ghost=[];
var powerTime=-500;
var score=0;
var livesscore=0;
var dotcount=-500;
var show=false;
var deathTimer;
function setup(){
  //createCanvas(700, 700);
     var canvas = createCanvas(700, 700);
    canvas.parent('sketch-div');
pacup=loadImage("pacup.png");
pacdown=loadImage("pacdown.png");
pacleft=loadImage("pacleft.png");
pacright=loadImage("pacright.png");
pacclose=loadImage("pacclose.png");
maze=loadImage("pacmanmaze.png");
dot=loadImage("dot.png");
powerdot=loadImage("superdot.png");
pghost=loadImage("pinkghost.png");
rghost=loadImage("redghost.png");
oghost=loadImage("orangeghost.png");
bghost=loadImage("blueghost.png");
powghost=loadImage("powerghost.png");
ghosteye=loadImage("ghosteyes.png");
}
function startGame(){
if(keyIsPressed&&key==' '&&check){
  start=true;
  check=false;
}
}
function keyPressed(){
  setMove(keyCode, true);
}
 
function keyReleased(){
  setMove(keyCode, false);
}
function setMove(k, b) {
  switch (k) {
  case 38:
    return isUp = b;
    
  case 40:
    return isDown = b;
 
  case 37:
    return isLeft = b;
 
  case 39:
    return isRight = b;
 
  default:
    return b;
  }
}
function restart(){
  if(pellets.length<193&&ghost.length<4){
for(let i=138;i<658;i+=35){
pellets.push(new dots(236,i));
}
for(let i=270; i<328; i+=35){
 pellets.push(new dots(i,428));
}
 for(let i=359; i<420; i+=35){
 pellets.push(new dots(i,428));
 }
 for(let i=138;i<658;i+=35){
pellets.push(new dots(445,i));
 }
 for(let i=183;i<620;i+=35){
pellets.push(new dots(75,i));
 }
 for(let i=183;i<620;i+=35){
pellets.push(new dots(600,i));
 }
for(let i=109; i<215; i+=35){
 pellets.push(new dots(i,138));
}
 for(let i=265; i<440; i+=35){
 pellets.push(new dots(i,138));
 }
 for(let i=478; i<608; i+=35){
 pellets.push(new dots(i,138));
 }
 for(let i=270; i<435; i+=35){
 pellets.push(new dots(i,170));
 }
 for(let i=270; i<435; i+=35){
 pellets.push(new dots(i,201));
 }
 for(let i=270; i<435; i+=35){
 pellets.push(new dots(i,281));
 }
 for(let i=110; i<232; i+=35){
 pellets.push(new dots(i,232));
 }
 for(let i=110; i<232; i+=35){
 pellets.push(new dots(i,267));
 }
  for(let i=110; i<232; i+=35){
 pellets.push(new dots(i,336));
  }
  for(let i=110; i<232; i+=35){
 pellets.push(new dots(i,370));
  }
  for(let i=110; i<232; i+=35){
 pellets.push(new dots(i,400));
  }
  for(let i=110; i<232; i+=35){
 pellets.push(new dots(i,548));
  }
  for(let i=110; i<232; i+=35){
 pellets.push(new dots(i,636));
  }
  for(let i=269; i<432; i+=35){
 pellets.push(new dots(i,636));
  }
 for(let i=468; i<586; i+=35){
 pellets.push(new dots(i,636));
 }
 for(let i=110; i<232; i+=35){
 pellets.push(new dots(i,636));
 }
 for(let i=269; i<432; i+=35){
 pellets.push(new dots(i,526));
 }
  for(let i=269; i<314; i+=35){
 pellets.push(new dots(i,465));
  }
  for(let i=380; i<432; i+=35){
 pellets.push(new dots(i,465));
  }
  for(let i=269; i<284; i+=35){
 pellets.push(new dots(i,561));
  }
  for(let i=269; i<310; i+=35){
 pellets.push(new dots(i,260));
  }
 for(let i=377; i<430; i+=35){
 pellets.push(new dots(i,260));
 }
  for(let i=269; i<430; i+=35){
 pellets.push(new dots(i,307));
  }
  for(let i=269; i<319; i+=35){
 pellets.push(new dots(i,307));
  }
  for(let i=377; i<432; i+=35){
 pellets.push(new dots(i,594));
  }
  for(let i=414; i<440; i+=35){
 pellets.push(new dots(i,561));
  }
  for(let i=472; i<588; i+=35){
 pellets.push(new dots(i,548));
  }
  for(let i=472; i<588; i+=35){
 pellets.push(new dots(i,395));
  }
  for(let i=472; i<588; i+=35){
 pellets.push(new dots(i,368));
  }
  for(let i=472; i<588; i+=35){
 pellets.push(new dots(i,232));
  }
  for(let i=472; i<588; i+=35){
 pellets.push(new dots(i,265));
  }
  for(let i=472; i<588; i+=35){
 pellets.push(new dots(i,332));
  }
 for(let i=478;i<536;i+=35){
pellets.push(new dots(526,i));
 }
 for(let i=478;i<536;i+=35){
pellets.push(new dots(553,i));
 }
 for(let i=478;i<536;i+=35){
pellets.push(new dots(581,i));
 }
 for(let i=478;i<536;i+=35){
pellets.push(new dots(162,i));
 }
 for(let i=478;i<536;i+=35){
pellets.push(new dots(135,i));
 }
 for(let i=478;i<536;i+=35){
pellets.push(new dots(107,i));
 }
pellets.push(new powerDot(70,628));
pellets.push(new powerDot(70,138));
pellets.push(new powerDot(602,138));
pellets.push(new powerDot(602,628));
dotcount=pellets.length;
ghost.push(new ghosts(1));
ghost.push(new ghosts(2));
ghost.push(new ghosts(3));
ghost.push(new ghosts(4));
}else if(lives>0){
  if(dotcount==0){
for(let x of pellets){
x.eatReset();
x.checkReset();
dotcount=pellets.length;
  }
  }
pac.resetXY();
for(let x of ghost){
x.resetXY();
x.escapeSet();
}
}
if(lives<=0){
for(let x of pellets){
x.eatReset();
x.checkReset();
}
pac.resetXY();
for(let x of ghost){
x.resetXY();
x.escapeSet();
}
dotcount=pellets.length;
score=0;
livesscore=0;
lives=3;
start=false;
show=false;
}
}
function draw(){
    window.addEventListener("keydown", function(e) {
    // space and arrow keys
    if([32, 37, 38, 39, 40].indexOf(e.keyCode) > -1) {
        e.preventDefault();
    }
}, false);
  startGame();
background(maze);
//fill(255,255,255);
//text("Score: "+score,590,26);
 if(start){
   show=true;
   if(!gameStart){
   restart();
   start=false;
   }
   if(lives<=0){
   restart();
   }
 }
 if (pac.pacDeath()==false&&show){
   if(lives==3){
   image(pacright,45,45,25,25);
   image(pacright,70,45,25,25);
   image(pacright,95,45,25,25);
   }else if(lives==2){
   image(pacright,45,45,25,25);
   image(pacright,70,45,25,25);
   }else if(lives==1){
   image(pacright,45,45,25,25);
   }
    if(score>9999999){
    score=9999999;
    }
    if(livesscore>=57900){
    livesscore-=57900;
    lives++;
    if(lives>3){
    lives=3;
    }
    }
    fill(255,255,255);
    text("Score: "+score,590,26);
    pac.display();
    for(let x of pellets){
     x.display();
     if(x.getPower()){
     powerTime=millis()+4000;
     x.setpower();
     for(let z of ghost){
     z.setPowertru();
     }
    }
    }
    if(dotcount==0){
    restart();
    }
if(millis()>=powerTime){ 
       for(let z of ghost){
z.setPowerfal();
}
}
  for(let x of ghost){
  x.display();
   x.eaten(); 
  }
}else if(pac.pacDeath()){
pac.resetXY();
for(let x of ghost){
x.resetXY();
x.escapeSet();
}
text( "You Died", 310, 366 );
}
}
