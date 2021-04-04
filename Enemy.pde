//|1/2  |enemy|enemy|
//|type |  *  |  *  |
//|x    |  *  |  *  |
//|y    |  *  |  *  |
//|other|  *  |  *  |

void create_buzz (){
  float bx = get_timesin(0.001);
  buzzX = get_timesin(0.001) * width + width/2;
  pushMatrix();
  translate(bx * width + width/2, 1000);
  scale(0.25, 0.25);
  rotate(millis() * -0.05);
  imageMode(CENTER);
  image(buzz, 0, 0);
  imageMode(CORNER);
  popMatrix();
}
