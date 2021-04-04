void menu(boolean options, boolean about) {
  background(i);
  noCursor();
  if (millis() < 7500) {
    imageMode(CENTER);
    image(logo, width/2, height/2);
   }
    if (i < 220) {
     i++;
   }

  if (options == false && about == false && millis() > 9000) {
    rectMode(CENTER);
    textMode(CENTER);
    stroke(25);

    //Название
    textFont(name);
    textSize(75);
    text("Game", width/2.25, height/2.5);
    textSize(30);
    textFont(buttons);

    //Кнопка играть
    fill(160);
    rect(width/2, height - 500, 372, 60);
    fill(0);
    if (mouseX >= width/2 - 372/2 && mouseX <= width/2 + 372/2 && mouseY >= height - 530 && mouseY <= height - 470) {
      setGradient(width/2 - 372/2, height - 530, 372, 60, color(255, 255, 255, 1), color(0, 0, 0, 250));
    }
    text("Play", width/2.1, height - 487.5);

    //Кнопка настройки
    fill(140);
    textSize(30);
    rect(width/2, height - 400, 350, 50);
    fill(0);
    if (mouseX >= width/2  - 350/2 && mouseX <= width/2 + 350/2 && mouseY >= height - 425 && mouseY <= height - 375) {
      setGradient(width/2 - 350/2, height - 425, 350, 50, color(255, 255, 255, 1), color(0, 0, 0, 250));
    }
    text("options", width/2.125, height - 390);

    //Кнопка об
    fill(120);
    rect(width/2, height - 300, 350, 50);
    fill(0);
    if (mouseX >= width/2 - 350/2 && mouseX <= width/2 + 350/2 && mouseY >= height - 325 && mouseY <= height - 275) {
      setGradient(width/2 - 350/2, height - 325, 350, 50, color(255, 255, 255, 1), color(0, 0, 0, 250));
    }
    text("about", width/2.125, height - 290);

    //Кнопка выйти
    fill(100);
    textSize(30);
    rect(width/2, height - 200, 350, 50);
    fill(0);
    if (mouseX >= width/2 - 350/2 && mouseX <= width/2 + 350/2 && mouseY >= height - 225 && mouseY <= height - 175) {
      setGradient(width/2 - 350/2, height - 225, 350, 50, color(255, 255, 255, 1), color(0, 0, 0, 250));
    }
    text("exit", width/2.075, height - 190);

    rectMode(CORNER);
    textMode(CORNER);
  }
  
 if(millis() > 9000){
 strokeWeight(15);
 stroke(200, 10, 10);
 point(mouseX, mouseY);
 strokeWeight(2);
 }
  
  if (millis() > 9000) {
    if (options == false && about == false) {
      if (mousePressed) {
        if (mouseButton == LEFT) {
          //Играть
          if (mouseX >= width/2 - 372/2 && mouseX <= width/2 + 372/2 && mouseY >= height - 530 && mouseY <= height - 470) {
            play = true;
          }
          //Настройки
          if (mouseX >= width/2  - 350/2 && mouseX <= width/2 + 350/2 && mouseY >= height - 425 && mouseY <= height - 375) {
            options = true;
          }
          //Об
          if (mouseX >= width/2 - 350/2 && mouseX <= width/2 + 350/2 && mouseY >= height - 325 && mouseY <= height - 275) {
            about = true;
          }
          //Выйти
          if (mouseX >= width/2 - 350/2 && mouseX <= width/2 + 350/2 && mouseY >= height - 225 && mouseY <= height - 175) {
            exit();
          }
        }
      }
    }
  }
  if (about) {
    background(i);
    rectMode(CENTER);
    textMode(CENTER);
    fill(200);
    rect(width/2, height - 300, 400, 50);
    fill(0);
    text("Read", width/2.1, height - 290);
    textSize(48);
    line = lines[0];
    text(line, width/2.5, 250);
    textSize(36);
    line = lines[1];
    text(line, width/2.5, 400);
    textSize(24);
    line = lines[2];
    text(line, width/2.5, 550);
    rectMode(CORNER);
    textMode(CORNER);
    if (mousePressed && millis() > 9000) {
      if (mouseButton == LEFT) {
        if (mouseX >= width/2 - 400 && mouseX <= width/2 + 400 && mouseY >= height - 325 && mouseY <= height - 275) {
          about = false;
        }
      }
    }
  }
}
