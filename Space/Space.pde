//Declare variables

Normal[] stars;
Normal[] reverseStars;

int shade;

void setup() {
	size(1100, 900);
  background(0);
  
  stars = new Normal[900];
  reverseStars = new Normal[900];
  
  for(int i=0; i<900; i++){
    shade = (int)(Math.random() * 255);
    if(i == 1)
      stars[i] = new Oddball(450, 450, 30, .1, 40);
    else if(i % 9 == 0)
      stars[i] = new Jumbo(i, i, radians(i), 5, shade);
    else
      stars[i] = new Normal(i, i, radians(i), 5, shade);   
  }
  
  for(int i=0; i<900; i++){
    shade = (int)(Math.random() * 255);
    if(i == 1)
      reverseStars[i] = new Oddball(100, 200, 30, .1, 40);
    else if(i % 9 == 0)
      reverseStars[i] = new Jumbo(i, i, -radians(i), 5, shade);
    else
      reverseStars[i] = new Normal(i, i, -radians(i), 5, shade);   
  }
} //end of setup
 

void draw() {
  background(0);
  
  for(int i=0; i<stars.length; i++){
    stars[i].move();
    stars[i].show();
  }
  
  for(int i=0; i<stars.length; i++){
    reverseStars[i].move();
    reverseStars[i].show();
  }
} //end of draw

void mousePressed() {
  // resets the field when mouse is pressed
  for(int i=0; i<900; i++){
    shade = (int)(Math.random() * 255);
    if(i == 1)
      stars[i] = new Oddball(mouseX, mouseY, 30, .05, 40);
    else if(i % 7 == 0)
      stars[i] = new Jumbo(i, i, radians(i), 5, shade);
    else
      stars[i] = new Normal(i, i, radians(i), 5, shade);
  }
  
  for(int i=0; i<900; i++){
    shade = (int)(Math.random() * 255);
    if(i == 1)
      reverseStars[i] = new Oddball(mouseX + 300, mouseY - 300, 30, .05, 40);
    else if(i % 7 == 0)
      reverseStars[i] = new Jumbo(i, i, -radians(i), 5, shade);
    else
      reverseStars[i] = new Normal(i, i, -radians(i), 5, shade);
  }
} // end of mousePressed
