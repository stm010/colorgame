import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer ss, sm, sf;

//sidney ho
//9.29.22
//thecolorgame , final project - unit 1

PFont F;

//mode variables
int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;
int timer;
int score;
int highscore;
float eq;

//buttons
int circleX, circleY;

//gif
PImage[] gif;
int n; //numberOfFrames
int f; //frame

//target variables

//color pallette
color red = #ffadad;
color orange = #ffd6a5;
color yellow = #fdffb6;
color green = #caffbf;
color blue = #9bf6ff;
color purple = #bdb2ff;
color pink = #ffc6ff;

String [] words = {"RED", "ORANGE", "YELLOW", "GREEN", "BLUE", "PURPLE", "PINK"}; //stray array ; order is important to be able to see if we've gennerated a matching puzzle
color [] colors = {red, orange, yellow, green, blue, purple, pink}; //color array ; if array #s match then its a matching puzzle ^

void setup () { //initialize all variables here ; for all modes
  size (800, 600);
  textAlign (CENTER, CENTER);
  rectMode (CENTER);
  mode = INTRO;

  reset();
  highscore = 0;
  p = 255;

F = createFont ("Hellobaby.ttf", 100);


  //gif
  n = 46;
  gif = new PImage [n];

  int i = 0;
  while (i<n) {
    gif [i] = loadImage("frame_"+i+"_delay-0.04s.gif");
    i = i+1;
  }
  
   minim =new Minim(this);
  sf= minim.loadFile("FAILURE.wav");
  sm= minim.loadFile("MUSIC.mp3");
  ss= minim.loadFile("SUCCESS.wav");
  sm.play();
}





void draw () { //specific mode becomes draw function ; seperate mode channels (only one will run at a time) ; draw function is broken up into diff modes
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println ("Mode Error: Mode is" + mode);
  }
}

void reset () {
  score = 0;
  timer=100;
  rw=(int) random(0, 6);
  rc=(int) random(0, 6);
  p = 255;
}

//unexpected token void = missing brace (sometimes in a previous tab)
