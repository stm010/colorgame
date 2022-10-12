void mouseReleased () {
  if (mode == INTRO) {
    introClicks();
  } else if (mode == GAME) {
    gameClicks();
  } else if (mode == PAUSE) {
    pauseClicks();
  } else if (mode == GAMEOVER) {
    gameoverClicks();
  } else {
    println ("Mode error: " + mode);
  }
}

void keyPressed() {
  if (mode==GAME ) {

    if (key == 's' || key == 'S') {
      mode = PAUSE;
    }

    if (key=='a'||key=='A') { // key A/a == true 
      if (rw!=rc) {
       end ();
      }

      if (rw == rc) {
       score();
        p = 255;
        rw=(int) random(0, 6);
        rc=(int) random(0, 6);
        eq=(float) random(0, 1);
        timer=100;

        if (eq>0.5) {
          rw=rc;
        }

        if (eq<=0.5) {
          rw=rc+1;
        }
      }
    }
  }


  if (key=='d'||key=='D') {
    if (rw==rc) {
     end ();
    }

    if (rw!=rc) {
    score();
      p = 255;
      rw=(int) random(0, 6);
      rc=(int) random(0, 6);
      eq=(float) random(0, 1);
      timer=100;

      if (eq>0.5) {
        rw=rc;
      } else {
        if (eq<=0.5) {
          rw=rc+1;
        }
      }
    }
  }
}

void mousePressed () {


  //if (mode == INTRO) {
  //  if (dist(690, 500, mouseX, mouseY) < 50) {
  //    mode = GAME;
  //  }
  //}



  if (mode==GAME) {

    if (mouseX<width/2) {
      if (rw!=rc) {
        end ();
      }

      if (rw == rc) {
        score();
        p = 255;
        rw=(int) random(0, 6);
        rc=(int) random(0, 6);
        eq=(float) random(0, 1);
        timer=100;

        if (eq>0.5) {
          rw=rc;
        }

        if (eq<=0.5) {
          rw=rc+1;
        }
      }
    }
  }


  if (mouseX>width/2+1) {
    if (rw==rc) {
       end();
    }

    if (rw!=rc) {
      score();
      p = 255;
      rw=(int) random(0, 6);
      rc=(int) random(0, 6);
      eq=(float) random(0, 1);
      timer=100;

      if (eq>0.5) {
        rw=rc;
      } else {
        if (eq<=0.5) {
          rw=rc+1;
        }
      }
    }
  }
}

void tactileCircle (int x, int y, int r, color f) {
  fill (f); //fill w f color
  if (touchingCircle(x, y, r)) {
    strokeWeight (10);
    stroke (255);
  } else {
    strokeWeight (1);
    stroke (0);
  }
  circle (x, y, r);
}

boolean touchingCircle (int x, int y, int r) {
  if (dist(x, y, mouseX, mouseY) < r) {
    return true;
  } else {
    return false;
  }
}

void end() {
   sf.play();
        sf.rewind();
        mode=GAMEOVER;
}

void score() {
  ss.play();
      ss.rewind();
      score=score+1;
}
