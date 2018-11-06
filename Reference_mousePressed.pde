// Add your Reference_mousePressed code here
Rain r1;

int numDrops = 40;
Rain[] drops = new Rain[numDrops]; // Declare and create the array

void setup() {
  size(500, 500);
  background(0, 0, 0, 99);
  smooth();
  noStroke();


  //Loop through array to create each object
  for (int i = 0; i < drops.length; i++) {

    drops[i] = new Rain(); // Create each object
    r1 = new Rain();
  }
}

void draw() {
  noStroke();
  fill(100,150,200);
  rect(0, 0, 500, 500);
  fill(100,100,100);
  rect(0,400,500,100);

  //Loop through array to use objects.
  for (int i = 0; i < drops.length; i++) {
    drops[i].fall();
  }
}


class Rain {
  float r = random(500);
  float y = random(-height);

  void fall() {
    y = y + 7;
    if (mousePressed) {
      fill(25, 25, 250, 180);
      stroke(25, 25, 250, 180);
      arc(r, y, 10, 20, radians(60), radians(120));
      noStroke();
      fill(255);
      ellipse(y,r-450,300,100);
      fill(255,0,0);
      rect(200,390,100,10);
      fill(100,100,100);
      rect(0,400,500,100);
    } else {
      fill(255,0,0);
      rect(200,375,100,25);
      fill(250,200,0,10);
      ellipse(0,0,200,200);
      ellipse(0,0,250,250);
      fill(255);
      ellipse(y,r-450,300,100);
    }
    if (y>height) {
      r = random(500);
      y = random(-200);
    }
  }
}
