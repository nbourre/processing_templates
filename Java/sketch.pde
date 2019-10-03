int currentTime;
int previousTime;
int deltaTime;

boolean saveVideo = false;

void setup () {
  size (800, 600);
  currentTime = millis();
  previousTime = millis();
  
}

void draw () {
  currentTime = millis();
  deltaTime = currentTime - previousTime;
  previousTime = currentTime;

  
  update(deltaTime);
  display();
  
  savingFrames(5, deltaTime);  
}

/***
  The calculations should go here
*/
void update(int delta) {
  
}

/***
  The rendering should go here
*/
void display () {

}

//Saving frames for video
//Put saveVideo to true;
int savingAcc = 0;
int nbFrames = 0;

void savingFrames(int forMS, int deltaTime) {
  
  if (!saveVideo) return;
  
  savingAcc += deltaTime;
  
  if (savingAcc < forMS) {
    saveFrame("frames/####.tiff");
	nbFrames++;
  } else {
	println("Saving frames done! " + nbFrames + " saved");
    saveVideo = false;
  }
}