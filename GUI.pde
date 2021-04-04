void GUI(int procent) {

  int guix = 20;
  
  stroke(255, 250, 250);
  strokeWeight(25);
  line(guix, 100, guix, height - 100);
  stroke(10);
  strokeWeight(20);
  if(procent > 0){
  line(guix, map(constrain(procent, 0, 100), 0, 100, 870, 0) + 100, guix, height - 100);
  }else{
    point(guix, height - 100);
  }
  fill(200);
  textSize(15);
  textFont(font);
  strokeWeight(2);
  text(procent, 5, height - 45);
  noStroke();
  strokeWeight(2);
}
