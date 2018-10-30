class Grid {
  int w;
  int h ;
  int gridSpaceW;
  int gridSpaceH;
  float gridLineW;
  float gridLineH;

  Grid() {
    w = 700;
    h = 500;
    gridSpaceW= 20;
    gridSpaceH= 16;
    gridLineW= w/gridSpaceW;
    gridLineH= h/gridSpaceH;
  }
  void drawGrid() {
    stroke(80);
    for (int i = 0; i < w; i+=gridLineW) {
      line(i, 0, i, height);
    }
    for (int j = 0; j <h; j+=gridLineH) {
      line(0, j, width, j);
    }
  }
  float snapToGrid (int d) {
    float snap = 1.0/gridLineW;
    return round(d*snap)*gridLineW ;
  }
}
