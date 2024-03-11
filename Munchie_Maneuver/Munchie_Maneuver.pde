final float FRAME_RATE = 60;
final float UPDATE_RATE = 100;

Game game;

void setup() {
  frameRate(FRAME_RATE);
  thread("update");
  
  size(800, 600);
  fill(0, 0, 255);
  stroke(0, 255, 255);

  game = new Game();
}

void draw() {
  background(255);
  
  if (game != null) {
    game.display();
  }

  Globals.GBasses.forEach(gBase -> gBase.display());
}

void update() {
  while (true) {
    if (game != null) {
      game.update();
    }
    
    Globals.GBasses.forEach(gBase -> gBase.update());
    
    delay(int(1 / UPDATE_RATE * 1000));
  }
}

void keyPressed() {
  KeyManager.handleKeyPressed(keyCode);

  if (game != null) {
    game.handleKeyPressed();
  }

  Globals.GBasses.forEach(gBase -> gBase.handleKeyPressed());
} 

void keyReleased() {
  KeyManager.handleKeyReleased(keyCode);

  Globals.GBasses.forEach(gBase -> gBase.handleKeyReleased());
}