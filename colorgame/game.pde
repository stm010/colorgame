int rw; //randomWord = (int) random (1, 7); //(casting operator) chops off decimal so float -> int ; range is 1-6
int rc; //randomColor = (int) random (1, 7);
int p;

void game () {
  background (255);
  fill (0);
  rect (0, 0, 800, 1250);
  fill (255);
  text("MATCH", 200, 100);
  fill(0);
  textSize (60);
  text("DON'T MATCH", 600, 100);

  textSize (p);
  fill (colors [rc], p); //name of array [array]
  text (words [rw], width/2, height/2);


  //timer + score
  textSize (100);
  fill (255);
 // text (timer, 100, 200);
  text (score, 100, 250);

  if (mode==GAME) {
    timer = timer - 1;
    p = p-2;
  }

  if (timer<=0) {
    mode = GAMEOVER;
  }

  //game
}


void  gameClicks() {
  
}
