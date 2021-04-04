class Rain {
  float r = random(abs(width));
  float y = random(-height);
  int rx;
  void fall() { 
if(direction == 1){
  rx = abs(width);
}else{
  scale(-1, 1);
}
    y = y + 10;
    fill(50,50,150,150);
    ellipse(r, y, 5, 5);

   if(y > 1001){
   r = random(rx);
   y = random(-200);
   }

  }
}
