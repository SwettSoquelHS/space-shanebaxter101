class Normal {
  double x_pos;
  double y_pos;
  double angle;
  double speed;
  float radius;
  int shade;
  
  public Normal(double x_pos, double y_pos, double angle, double speed, int shade, float radius){
    this.x_pos = x_pos;
    this.y_pos = y_pos;
    this.angle = angle;
    this.speed = speed;
    this.shade = shade;
    this.radius = radius;
  }
  
  void move(){
    x_pos = x_pos + (Math.cos(angle) * speed);
    
    y_pos = y_pos + (Math.cos(angle) * speed);
  }
  
  void show(){
    fill(shade, 67, 206);
    
    float x = (float)x_pos;
    float y = (float)y_pos;
    
    ellipse(x, y, radius, radius);
  }
}
