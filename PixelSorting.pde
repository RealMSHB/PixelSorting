PImage img;
PImage sorted;
int count = 0;
<<<<<<< HEAD
String name = "image";


void setup() {
  size(800,400);

  img = loadImage("image2.png");
=======
String name = "blood";


void setup() {
  size(500,500);

  img = loadImage("blood.jpg");
>>>>>>> origin/master
  sorted = createImage(img.width, img.height, RGB);
  pixelate();
}

void draw() {
  println(frameRate);
  background(0);
  //image(img, 0, 0);
  image(sorted, 0, 0);
  
}


void mousePressed() {
  pixelate();
  redraw();
<<<<<<< HEAD
  save(name +"image"+count+".png");
=======
  save(name +"image"+count+".jpg");
>>>>>>> origin/master
  count++;
}

void pixelate() {
  sorted = img.get();
  sorted.loadPixels();

  // Selection sort!
  
<<<<<<< HEAD
    for (int j = 0; j < sorted.pixels.length; j+=2) {
      for(int i = 0;i < random(1, 10); i++)
=======
    for (int j = 0; j < sorted.pixels.length; j+=1) {
      for(int i = 0;i < random(1, 6); i++)
>>>>>>> origin/master
      {
        if((j-i) >  0)
        {
          sorted.pixels[j-i] = sorted.pixels[j];
        }
      }
    }
 
  sorted.updatePixels();
}