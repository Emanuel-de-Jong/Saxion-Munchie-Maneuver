final float FRAME_RATE = 60;
final int UPDATE_RATE = 60;

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
}

void update() {
  while (true) {
    if (game != null) {
      game.update();
    }
    
    delay(UPDATE_RATE);
  }
}

void keyPressed() {
  KeyManager.handleKeyPressed(keyCode);

  if (game != null) {
    game.handleKeyPressed();
  }
} 

void keyReleased() {
  KeyManager.handleKeyReleased(keyCode);
}