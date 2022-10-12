void intro () {

  background (0);
  background (0);
  image (gif[f], 0, 0, width, height);
  f = f + 1;
  if (f == n) f = 0;
  reset ();
  tactileCircle (690, 500, 50, 0);
  fill (colors[rc]);
 textSize (100);
  textFont (F);
  text ("Color Game", width/2, height/2);
  ellipse (690, 500, 100, 100);
  fill (0);
  textSize (50);
  text ("GO", 690, 500);

  fill (colors[rc]);
 
}

void introClicks() {
  // mode = GAME;
  if (dist(690, 500, mouseX, mouseY) < 40) {
      mode = GAME;
  }
  score = 0;
  timer = 100;
  p =255;
}
