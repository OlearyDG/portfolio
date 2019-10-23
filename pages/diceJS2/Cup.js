var Cup={
 x:0
,y:0
,plusy:-50,
 ctime:0,//=millis()+100;
 Cupc: function(x, y){
 this.x=x;
    this.y=y;
    ctime=millis()+100;
},

 show: function(){
  if(millis()>ctime){
     clear();
      background(0);
image(cup,x,y+plusy,300,300);
cTimer();
  }
},
 cTimer: function(){
ctime=millis()+100;
plusy*=-1;
}
};
