void shot(int centerX, float ny){
  if(energy >= 2){
if(direction == 1){
 centerX = centerX + 25;
 }else{
 centerX = centerX - 25; 
}
ny = ny - 6;
float dx = mouseX - centerX;
float dy = mouseY - ny;
float angle = atan2(dy, dx);
float radius = sqrt(dx * dx + dy * dy) + width * 1.5;
float x = radius * cos(angle);
float y = radius * sin(angle);
x = x + centerX;
y = y + ny;
strokeWeight(15);
stroke(255, 2, 2, 255);
strokeWeight(7);
line(centerX, ny, x, y);
stroke(300, 150, 150, 50);
line(centerX, ny, x, y);
strokeWeight(2);
energy-=2;
noCursor();
 }
energy--;
}
