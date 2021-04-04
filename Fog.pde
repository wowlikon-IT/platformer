void setGradient(int x, int y, float w, float h, color c1, color c2) {
  noFill();
    for (int i = y; i <= y+h; i++) {
    float inter = map(i, y, y+h, 0, 1);
    color c = lerpColor(c1, c2, inter);
    stroke(c);
    line(x, i, x+w, i);
   }
  }  
