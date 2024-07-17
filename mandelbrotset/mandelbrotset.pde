float minVal = -2.5;
float maxVal = 2.5;
float minImag = -2.5;
float maxImag = 2.5;
int maxIterations = 100;
float zoomFactor = 1.5;

void setup() {
  size(800, 800);
  noLoop();
}

void draw() {
  background(0);
  loadPixels();

  for (int x = 0; x < width; x++) {
    for (int y = 0; y < height; y++) {
      float realPart = map(x, 0, width, minVal, maxVal);
      float imagPart = map(y, 0, height, minImag, maxImag);
      int iteration = calculateIterations(realPart, imagPart);

      float bright = map(iteration, 0, maxIterations, 0, 1);
      bright = map(sqrt(bright), 0, 1, 0, 255);
      int pix = x + y * width;
      pixels[pix] = color(bright);
    }
  }

  updatePixels();
}

int calculateIterations(float realPart, float imagPart) {
  float originalReal = realPart;
  float originalImag = imagPart;
  int maxIterations = 1000;
  int iteration = 0;
  
  while (iteration < maxIterations) {
    float realSquared = realPart * realPart - imagPart * imagPart;
    float imagTwice = 2 * realPart * imagPart;

    realPart = realSquared + originalReal;
    imagPart = imagTwice + originalImag;

    if (dist(realPart, imagPart, 0, 0) > 16) {
      break;
    }

    iteration++;
  }

  return iteration;
}
