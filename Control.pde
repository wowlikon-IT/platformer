//Движение
int move_var(float target, int var, float easing){
  var += (target - var) * easing;
  return var;
}
