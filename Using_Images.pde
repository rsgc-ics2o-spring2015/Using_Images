/*
 * This program is meant to demonstrate how to use images in Processing.
 *
 * In short, we create _objects_ based on the PImage class.
 *
 * We load images into these objects (see setup() function, below).
 *
 * In the draw() function, we actually display the images on screen using the image
 * function.
 */

// Create image objects to store the image files in.
PImage mouse;
PImage food;

// Control position of the food on the screen
float x = 0;
float y = 0;

void setup() {
  
  // Make canvas
  size(500, 300);
  
  // Load an image into the 'mouse' object
  mouse = loadImage("mouse.png");
  
  // Load a different image into the 'food' object
  food = loadImage("cheese.png");
  
  // Pick a vertical position for the food to start at
  y = random(0, height);
  
}

void draw() {
  
  // Clear background
  background(0);
  
  // Animate the food movement
  x = x + 1;
  
  // Draw the food on screen
  image(food, x, y);
  
  // Draw the mouse on screen whereever... the mouse pointer is :)
  image(mouse, mouseX, mouseY);
  
}
