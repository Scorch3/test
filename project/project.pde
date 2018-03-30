int v,h,gg,g1,g2,g3,g4,g5,g6,c1v,c1mv,c1h,c2v,c2mv,c2h,c2mh,c3v,c3mv,c3h,c3mh,c4v,c4mv,c4h,c4mh,c5v,c5mv,c5h,c5mh,c6v,c6mv,c6h,c6mh;
void setup(){
  size(500,500);
  v=250;
  h=250;
  gg=0;
  g1=1;
  g2=1;
  g3=1;
  g4=1;
  g5=1;
  g6=1;
  c1v=0;
  c1mv=2;
  c1h=(int)random(500);
  c2v=0;
  c2mv=3;
  c2h=height;
  c2mh=-2;
  c3v=0;
  c3mv=1;
  c3h=0;
  c3mh=2;
  c4v=499;
  c4mv=2;
  c4h=0;
  c4mh=1;
  c5v=499;
  c5mv=4;
  c5h=250;
  c5mh=1;
  c6v=0;
  c6h=(int)random(500);
  c6mv=2;
}
void draw(){
  background(126);
  fill(255);
  rect(v-25,h-25,50,50);
  if(key ==CODED){
   if(keyCode == ENTER){
      fill(126);
      rect(0,0,500,10);
      rect(0,0,10,500);
      rect(0,490,500,10);
      rect(490,0,10,500);
      if(key =='a'){
        v=v-2;
      }
      if(key =='d'){
        v=v+2;
      }
      if(key =='w'){
        h=h-2;
      }
      if(key =='s'){
        h=h+2;
      }
          g1=g1+1;
      fill(255,0,0);
      ellipse(c1v,c1h,50,50);
      c1v=c1v+c1mv;
      if(c1v>=500){
        c1mv=-c1mv;
        c1h=(int)random(500);
      }
      if(c1v<=0){
        c1mv=-c1mv;
        c1h=(int)random(500);
      }
      
      
      if(g1>=1000){
        fill(0,252,0);
        ellipse(c2v,c2h,50,50);
        c2v=c2v+c2mv;
        c2h=c2h+c2mh;
        if(c2v>=500){
        c2mv=-c2mv;
      }
      if(c2v<=0){
        c2mv=-c2mv;
      }
      if(c2h>=500){
        c2mh=-c2mh;
      }
      if(c2h<=0){
        c2mh=-c2mh;
      }
      g2=g2+1;
   }
   if(g2>=1000){
      fill(0,0,255);
      ellipse(c3v,c3h,50,50);
      c3v=c3v+c3mv;
      c3h=c3h+c3mh;
  if(c3v>=500){
    c3mv=-c3mv;
  }
  if(c3v<=0){
    c3mv=-c3mv;
  }
  if(c3h>=500){
    c3mh=-c3mh;
  }
  if(c3h<=0){
    c3mh=-c3mh;
  }
  g3=g3+1;
  }
  if(g3>=1000){
    fill(255,255,0);
    ellipse(c4v,c4h,50,50);
    c4v=c4v+c4mv;
    c4h=c4h+c4mh;
    if(c4v>=500){
      c4mv=-c4mv;
    }
    if(c4v<=0){
      c4mv=-c4mv;
    }
    if(c4h>=500){
      c4mh=-c4mh;
    }
    if(c4h<=0){
      c4mh=-c4mh;
    }
    g4=g4+1;
  }
  if(g4>=1000){
    fill(0,255,255);
    ellipse(c5v,c5h,50,50);
    c5v=c5v+c5mv;
    c5h=c5h+c5mh;
    if(c5v>=height){
      c5mv=-c5mv;
    }
    if(c5v<=0){
      c5mv=-c5mv;
    }
    if(c5h>=height){
      c5mh=-c5mh;
    }
    if(c5h<=0){
      c5mh=-c5mh;
    }
    g5=g5+1;
  }
  if(g5>=1000){
    fill(255,0,255);
    ellipse(c6v,c6h,50,50);
    c6v=c6v+c6mv;
    c6h=c6h+c6mh;
    if(c6v>=500){
      c6mv=-c6mv;
      c6h=(int)random(500);
    }
    if(c6v<=0){
      c6mv=-c6mv;
      c6h=(int)random(500);
    }
    g6=g6+1;
  }
  if(c1v <=v+45 && c1v >=v-45 && c1h <=h+45 && c1h >=h-45){
    gg=255;
  }
  if(c2v <=v+45 && c2v >=v-45 && c2h <=h+45 && c2h >=h-45){
    gg=255;
  }
  if(c3v <=v+45 && c3v >=v-45 && c3h <=h+32 && c3h >=h-45){
    gg=255;
  }
  if(c4v <=v+45 && c4v >=v-45 && c4h <=h+32 && c4h >=h-45){
    gg=255;
  }
  if(c5v <=v+45 && c5v >=v-45 && c5h <=h+45 && c5h >=h-45){
    gg=255;
  }
  if(v-25<=10 || v+25>=490 || h-25<=10 || h+25>=490){
    gg=255;
  }
  fill(0);
  if(gg==255){
    background(255);
    textSize(42);
    text("You Lose",150,250);

  }
  fill(0);
  if(g6>=1000 && gg==0){
    background(255);
    textSize(42);
    text("You Win",150,250);
  }
  }
  }
}