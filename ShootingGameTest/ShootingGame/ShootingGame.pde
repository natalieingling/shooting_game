Grid grid1;
Aliens alien1;
Ship ship1;
Bullet bullet1;

ArrayList<Aliens> alien;
int numOfA = 10;

boolean [] keys = new boolean[128];

int count = 0;
void setup() {
  size(700, 500);
  frameRate(60);

  grid1 = new Grid();
  ship1 = new Ship();
  alien1 = new Aliens();
  bullet1 = new Bullet();
  alien = new ArrayList <Aliens>();
  createAlien();
}

void draw() {
  
  background(0);
  
  grid1.drawGrid();
  ship1.createShip();
  bullet1.createBullet();

  

  for ( int i = 0; i <alien.size(); i++) {
    if (alien.get(i).alive()) {
      count++;
    } else {
      alien.get(i).createAlien();
    }
  }
}

void keyPressed() {
  keys[key]= true;
  ship1.createShip();
  ship1.move();
  bullet1.createBullet();
}

void keyReleased() {
  keys[key] = false;
}



void createAlien() {
  for (int i = 0; i < 10; i ++) {
    alien.add(new Aliens());
  }
  for (int i = 0; i < alien.size(); i++) {
    alien.get(i).createAlien();
  }
}
