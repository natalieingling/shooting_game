class Aliens {
  int numOfA= 10;

  int alienPositionX;
  int alienPositionY;
  int alienSize;

  float alienPX;
  float alienPY;

  float gridLineW= 700/20;
  float gridLineH= 500/16;

  float speed ;

  Aliens() {

    alienPositionX=(int( random(50, 650)));
    alienPositionY =(int( random(10, 200)));

    alienSize = 30;

    alienPX = snapToGrid(alienPositionX);


    speed = 2;
  }
  void createAlien() {
    PVector alien = new PVector (alienPX, alienPositionY);
    stroke(150);
    fill(100);
    ellipse(alien.x, alien.y+5, alienSize+20, 15);

    fill(50, 50, 150);
    ellipse(alien.x, alien.y, alienSize, 10);

    alienPX = alienPX + speed ;

    float testMove = random(0, 1);

    if (testMove < 0.005) {
      speed = -speed;
    }

    if (alienPX < alienSize/2 || alienPX > 700 - alienSize/2) {
      speed = -speed;
    }
  }


  boolean alive () {
    for (int i = 0; i < alien.size(); i++) {
      if ((bullet1.bulletDamage-alien.get(i).alienPX < 10 && bullet1.bulletDamage-alien.get(i).alienPX >0 
        && bullet1.bulletY-alien.get(i).alienPositionY< 10 )||
        (bullet1.bulletDamage-alien.get(i).alienPX > - 10 &&bullet1.bulletDamage-alien.get(i).alienPX< 0 &&
        bullet1.bulletY-alien.get(i).alienPositionY< 10 )
        ) {
        count++;
        alien.remove(i);
        return true;
      }
    }
    return false;
  }
  float snapToGrid (int d) {
    float snap = 1.0/gridLineW;
    return round(d*snap)*gridLineW;
  }
}
