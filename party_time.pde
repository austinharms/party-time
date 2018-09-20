//confetiy Y position
int pice1 = 1;
int pice2 = 1;
int pice3 = 1;
int pice4 = 1;
int pice5 = 1;
int pice6 = 1;
int pice7 = 1;
//confetiy x position
int piceLR1 = 200;
int piceLR2 = 10;
int piceLR3 = 90;
int piceLR4 = 1;
int piceLR5 = 290;
int piceLR6 = 150;
int piceLR7 = 190;
//confetiy move speed
int picespeed1 = 1;
int picespeed2 = 2;
int picespeed3 = 1;
int picespeed4 = 3;
int picespeed5 = 1;
int picespeed6 = 2;
int picespeed7 = 2;
//number of clicks
int clnum = 0;
//start of code
void setup()
{
  //create screen size
  size(300, 300);
  //set background coulour to white
  background(255, 255, 255);
  //change whare to set position for rect
  rectMode(CENTER);
}

void draw()
{
  //change background coulour to white
  background(255, 255, 255);
  //change text size
  textSize(32);
  //set text coulour to black
  fill(0);
  //show text lets have a party
  text("Let's have a party", 13, 100);
  //change text size
  textSize(17);
  //set text coulour to black
  fill(0);
  // show text Click screen to give presents and show a secret message! number of presents
  text("Click screen to give presents and", 13, 150);
  text("show a secret message!", 50, 170);

  text("number of presents: " + clnum, 50, 190);
  //if the number of clicks is graator than zero
  if (clnum > 0)
  {
    //show text this party is the best
    text("This party is the best!", 50, 220);
  }
  //if confiety is off screen 
  if (pice1 > 300)
  {
    //get random number for x pozition
    piceLR1 = int(random(10, 290));
    //get random drop speed
    picespeed1 = int(random(1, 4));
    //reset hight of pice
    pice1 = 0;
  }
  //change coulour to red
  fill(255, 0, 0);
  //creat triangle using seprate function
  Simpletriangle(piceLR1, pice1, 10, 10);
  //move pice down
  pice1 = picespeed1 + pice1;

  //if the shape is off the screen 
  if (pice2 > 300)
  {

    //get randome number for the speed the shape falls 
    picespeed2 = int(random(1, 4));

    //get randome number for the x axis and whare the shape falls 
    piceLR2 = int(random(10, 290));
    //set pice2 to zero
    pice2 = 0;
  }
  fill(255, 100, 0);
  Simpletriangle(piceLR2, pice2, 10, 10);
  //get randome number for the speed the shape falls 
  pice2 = picespeed2 + pice2;
  //if the shape is off the screen 
  if (pice3 > 300)
  {
    //get randome number for the speed the shape falls 
    picespeed3 = int(random(1, 4));
    //get randome number for the x axis and whare the shape falls 
    piceLR3 = int(random(10, 290));
    //set pice3 to zero
    pice3 = 0;
  }
  fill(255, 0, 150);
  rect( piceLR3, pice3, 10, 10);
  //get randome number for the speed the shape falls 
  pice3 = picespeed3 + pice3;
  //if the shape is off the screen 
  if (pice4 > 300)
  {
    //get randome number for the speed the shape falls 
    picespeed4 = int(random(1, 4));
    //get randome number for the x axis and whare the shape falls 
    piceLR4 = int(random(10, 290));
    //set pice4 to zero
    pice4 = 0;
  }
  fill(255, 200, 70);
  rect( piceLR4, pice4, 10, 10);
  //get randome number for the speed the shape falls 
  pice4 = picespeed4 + pice4;
  //if the shape is off the screen 
  if (pice5 > 300)
  {
    //get randome number for the speed the shape falls 
    picespeed5 = int(random(1, 4));
    //get randome number for the x axis and whare the shape falls 
    piceLR5 = int(random(10, 290));
    //set pice5 to zero
    pice5 = 0;
  }
  fill(205, 50, 0);
  ellipse( piceLR5, pice5, 10, 10);
  //get randome number for the speed the shape falls 
  pice5 = picespeed5 + pice5;
  //if the shape is off the screen 
  if (pice6 > 300)
  {
    //get randome number for the speed the shape falls 
    picespeed6 = int(random(1, 4));
    //get randome number for the x axis and whare the shape falls 
    piceLR6 = int(random(10, 290));
    //set pice6 to zero
    pice6 = 0;
  }
  fill(20, 0, 255);
  rect( piceLR6, pice6, 10, 10);
  //get randome number for the speed the shape falls 
  pice6 = picespeed6 + pice6;
  //if the shape is off the screen 
  if (pice7 > 300)
  {
    //get randome number for the speed the shape falls 
    picespeed7 = int(random(1, 4));
    //get randome number for the x axis and whare the shape falls 
    piceLR7 = int(random(10, 290));
    //set pice7 to zero
    pice7 = 0;
  }
  fill(0, 0, 0);

  ellipse( piceLR7, pice7, 10, 10);
  //get randome number for the speed the shape falls 
  pice7 = picespeed7 + pice7;
}


void Simpletriangle(float x, float y, float w, float h)
{
  triangle(x, y, 
    x+w/2, y-h, 
    x+w, y);
}
void mouseClicked()
{
  clnum++;
}
