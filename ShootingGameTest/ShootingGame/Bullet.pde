class Bullet {

  float gridLineW= 700/20;
  float gridLineH= 500/16;

  float bulletX;
  int bulletY;
  float bulletDamage;

  int speed ;

  Bullet() {
    bulletX = snapToGrid(ship1.pointerX);
    bulletY = ship1.pointerY;
    bulletDamage = bulletX-10;
    speed = 12;
  }

  void createBullet () {
    bulletX = snapToGrid(ship1.pointerX);
    bulletDamage = bulletX-10;


    stroke(255, 0, 0);

    if (keys['w'] == true) {
      line(bulletX, bulletY, bulletX, bulletY-10);
      noFill();
      stroke(255);
      rect(bulletDamage, bulletY, 20, 20);
      bulletY = bulletY - speed;
      if ( bulletY <0 ) {
        bulletY =+450;
      }
    }
  }



  float snapToGrid (int d) {
    float snap = 1.0/gridLineW;
    return round(d*snap)*gridLineW;
  }
}
