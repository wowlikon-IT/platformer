Rain r1;

int numDrops = 40;
Rain[] drops = new Rain[numDrops];

PImage logo;
PImage background;
PImage buzz;
PImage l1;
PImage l2;
PFont font;
PFont name;
PFont buttons;

boolean play = false;
boolean options = false;
boolean about = false;
int x = 120;
int y = 1000;
int i;
float buzzX;
int bodyHeight = 200;
float neckHeight = 40;
int radius = 45;
float ny = y - bodyHeight - neckHeight - radius;
float easing = 0.02;
int direction = 1;
int energy = 100;
float enemy[] [];
boolean enemy_on_map = true;
boolean fog = random(0, 100) >= 75;
boolean rain = random(0, 100) >= 5 && fog == false;
boolean lightning = random(0, 100) >= 40 && rain == true;
byte score[];
int max_score;
int score_play;
String[] lines;
String line;

void setup(){
fullScreen(P2D);
smooth();
frameRate(60);
strokeWeight(2);
if(random(0, 100) >= 50){
background = loadImage("city.png");
}else{
background = loadImage("wood.png");
}
logo = loadImage("logo.png");
buzz = loadImage("buzz.png");
l1 = loadImage("1l.png");
l2 = loadImage("2l.png");
font = loadFont("font.vlw");
name = loadFont("name.vlw");
buttons = loadFont("Hand.vlw");
ellipseMode(RADIUS);
score = loadBytes("scores.dat");
frameRate(75);
lines = loadStrings("about.txt");
for (int i = 0; i < drops.length; i++) {

    drops[i] = new Rain(); // Create each object
    r1 = new Rain();
  }
}

void draw(){
 if(play){  
 //Курсор
 if(!mousePressed) cursor(CROSS);

 //Уровень
 background(background);
 fill(30);
 rect(0, 1000, width, height);
 create_buzz();
 if(fog){
 setGradient(0, height - 200, width, 200, color(255, 255, 255, 1), color(0, 0, 0, 250));
 }

 if(lightning){
   if(random(0, 100) <= 1){
     if(random(0, 100) > 50){
       image(l1, random(100, width - 100), 0);
     }else{
       image(l2, random(100, width - 100), 0);
     }
     background(222, 222, 222, 10);
   }
 }
 
 energy++;
 energy = constrain(energy, 0, 100);
 strokeWeight(2);
 if(energy >= 100){
  canTP();
 }

 if(mouseX > x){
    direction = 1;
  }
  if(mouseX < x){
    direction = -1;
  }
  
 if (y < 1000){
   y = y + 10;
 }
 
 //Движение
 x = move_var(mouseX, x, easing);
 x = constrain(x, 125, width - 100);
 
 //Робот
 bot(x, y, bodyHeight, radius, neckHeight);

 //Дождь
 if(rain){
  for (int i = 0; i < drops.length; i++) {
   drops[i].fall();
  }
 }

 //флекс
 neckHeight = neckHeight + get_timesin(0.005);
 ny = y - bodyHeight - neckHeight - radius;

 //Лазер
 if(mousePressed){
  if(mouseButton == LEFT){
   if(energy >= 1){
    shot(x, ny);
    }
   }
 }

 //Интерфейс
 GUI(energy);
 strokeWeight(2);
 
 if(dist(x, y, buzzX, 1000) <= 205){
   play = false;
  }

 //Сохранение данных
 if(score_play > max_score){
   max_score = score_play;
 }
 
 score[1] = byte(max_score % 13);
 saveBytes("scores.dat", score);
 }else{
   menu(options, about);
 }
}
