final float FRAME_RATE = 100;

KeyManager keyManager;
Game game;

void setup() {
    frameRate(FRAME_RATE);
    
    size(800, 600);
    fill(0, 0, 255);
    stroke(0, 255, 255);
    
    keyManager = new KeyManager();
    game = new Game();
}

void draw() {
    background(255);
    
    for (GBase gBase : Globals.GBasses) {
        gBase.draw();
    }
}

void keyPressed() {
    KeyManager.keyPressed(keyCode);
    
    for (GBase gBase : Globals.GBasses) {
        gBase.keyPressed();
    }
} 

void keyReleased() {
    KeyManager.keyReleased(keyCode);
    
    for (GBase gBase : Globals.GBasses) {
        gBase.keyReleased();
    }
}
