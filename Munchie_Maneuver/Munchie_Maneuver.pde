import ddf.minim.*;

final float FRAME_RATE = 100;

KeyManager keyManager;
AudioPlayer musicPlayer;
Game game;

void setup() {
    frameRate(FRAME_RATE);
    
    size(800, 600);

    Assets.init(this);
    keyManager = new KeyManager();
    
    Globals.minim = new Minim(this);

    musicPlayer = Globals.minim.loadFile(dataPath("/audio/BackgroundMusic.mp3"));
    musicPlayer.play();
    
    game = new Game();
}

void draw() {
    background(200);
    
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

void mouseMoved() {
    for (GBase gBase : Globals.GBasses) {
        gBase.mouseMoved();
    }
}
