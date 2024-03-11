final float FRAME_RATE = 60;
final float UPDATE_RATE = 100;

KeyManager keyManager;
Game game;

void setup() {
  frameRate(FRAME_RATE);
  thread("update");
  
  size(800, 600);
  fill(0, 0, 255);
  stroke(0, 255, 255);

  keyManager = new KeyManager();
  game = new Game();
}

void draw() {
  background(255);

  Globals.GBasses.forEach(gBase -> gBase.draw());
}

void update() {
  while (true) {
    Globals.GBasses.forEach(gBase -> gBase.update());
    
    delay(int(1 / UPDATE_RATE * 1000));
  }
}

void keyPressed() {
  KeyManager.keyPressed(keyCode);

  Globals.GBasses.forEach(gBase -> gBase.keyPressed());
} 

void keyReleased() {
  KeyManager.keyReleased(keyCode);

  Globals.GBasses.forEach(gBase -> gBase.keyReleased());
}
