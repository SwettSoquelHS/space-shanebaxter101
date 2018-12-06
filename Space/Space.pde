//Declare variables

Normal firstPart = new Normal(450, 450, radians(150), 2, 100, 7);
Normal[] stars;
Oddball dude = new Oddball(450, 450, .05); 
int shade;

void setup() {
	size(1100, 900);
  background(0);
  
  stars = new Normal[900];
  
  for(int i=0; i<900; i++){
    shade = (int)(Math.random() * 255);
    stars[i] = new Normal(i, i, radians(i), 5, shade, 7);   
  }
} //end of setup
 

void draw() {
  background(0);
  
	firstPart.move();
  firstPart.show();
  
  dude.move();
  dude.show();
  
  for(int i=0; i<stars.length; i++){
    stars[i].move();
    stars[i].show();
  }
} //end of draw

void mousePressed() {
  for(int i=0; i<900; i++){
    shade = (int)(Math.random() * 255);
    stars[i] = new Normal(i, i, radians(i), 5, shade, 7);   
  }
}
