/* 

  Pixel Sort
  Sadegh Broomand | 2016 
   
*/



//========================================================================
PImage img;
PImage sorted;
int count = 0;

int firstArg = 2;    // change this --------------------------------------
int secondArg = 10;  // change this --------------------------------------

String name = "image"; //put of image name here --------------------------

//========================================================================
void setup() {

  size(800,400);      //put of image size here ---------------------------
  img = loadImage("image2.png");     //put of image file name here -------
  sorted = createImage(img.width, img.height, RGB);
  pixelate();
  
}
//========================================================================

//========================================================================
//Redraw and save image
void draw() {
  
  println(frameRate);
  background(0);
  image(sorted, 0, 0);
  
}
//========================================================================

//========================================================================
//Redraw and save image
void mousePressed() {
  
  pixelate();
  redraw();
  save(name +"image"+count+".png");  // saving image file.
  count++;
  
}
//========================================================================

//========================================================================
void pixelate() {
  //Set Original image to a temp image
  sorted = img.get();
  sorted.loadPixels();
  // Pixel Sorting
    for (int j = 0; j < sorted.pixels.length; j+=firstArg) {
      for(int i = 0;i < random(1, secondArg); i++)
      {
        if((j-i) >  0)
        {
          sorted.pixels[j-i] = sorted.pixels[j];
        }
      }
    }
 
  sorted.updatePixels();
}