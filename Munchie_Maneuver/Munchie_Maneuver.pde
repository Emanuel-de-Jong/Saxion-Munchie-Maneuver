import ddf.minim.*;
import java.util.List;
import java.util.stream.Collectors;

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

    Globals.BackgroundMusicPlayer = Globals.minim.loadFile(dataPath("/audio/BackgroundMusic.mp3"));
    Globals.BackgroundMusicBoostModePlayer = Globals.minim.loadFile(dataPath("/audio/BackgroundMusicBoostMode.mp3"));

    Globals.BackgroundMusicPlayer.play();
    
    game = new Game();
}

void draw() {
    background(200);
    
    // Filter GBasses that are off.
    List<GBase> gBasses = Globals.GBasses
        .stream()
        .filter(gb -> gb.getOff() == false)
        .collect(Collectors.toList());
    
    // Sort by layer for drawing order.
    gBasses.sort((gb1, gb2) -> Integer.compare(gb1.Layer, gb2.Layer));

    for (GBase gBase : gBasses) {
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
