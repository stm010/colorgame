void gameover () {
  background(0);
  strokeWeight (2);
  line (100, 200, 700, 200);
  textSize (80);
  fill (p);
  text ("GAMEOVER", width/2, 120);

  textSize (60);
  text("HIGHSCORE:" + highscore, width/2, height/2);
  if (highscore<score) highscore=score;
  text ("SCORE:" + score, width/2, 450);

  //button
  tactileCircle (100, 500, 50, 0);
  fill (colors[rc]);

  ellipse (100, 500, 100, 100);
  fill (0);
  textSize (50);
  text ("GO", 100, 500);
  
}

void gameoverClicks() {
   if (dist(100, 500, mouseX, mouseY) < 50) {
      mode = INTRO;
    }
//   mode = INTRO;
}
