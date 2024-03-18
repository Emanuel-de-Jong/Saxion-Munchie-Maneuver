import ddf.minim.*;

final float FRAME_RATE = 100;

KeyManager keyManager;
Minim minim;
AudioPlayer audioPlayer;
Game game;

void setup() {
    frameRate(FRAME_RATE);
    
    size(800, 600);

    Assets.init(this);
    keyManager = new KeyManager();
    
    minim = new Minim(this);
    audioPlayer = minim.loadFile(dataPath("/audio/BackgroundMusic.mp3"));
    audioPlayer.play();
    
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
