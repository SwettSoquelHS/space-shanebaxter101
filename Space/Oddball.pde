class Oddball {
  double x_pos;
  double y_pos;
  float speed;
  float targx;
  float dx;
  float targy;
  float dy;
  
  public Oddball(double x_pos, double y_pos, float speed){
    this.x_pos = x_pos;
    this.y_pos = y_pos;
    this.speed = speed;
  }
  
  void move() {
    targx = mouseX;
    dx = targx - (float)x_pos;
    
    targy = mouseY;
    dy = targy - (float)y_pos;
    
    x_pos = x_pos + (dx * speed);
    y_pos = y_pos + (dy * speed);
  }
  
  void show() {
    float x = (float)x_pos;
    float y = (float)y_pos;
    
    fill(12, 247, 26);
    
    rect(x, y, 20, 20, 5);
  }
}
