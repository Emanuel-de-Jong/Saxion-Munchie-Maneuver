class Character extends GObject {
    public float Speed = 3;
    public float Radius = 85;
    
    public Character(float x, float y) {
        super(x, y);
        
        setImg(Assets.CharacterImg, 150, 82.5);
    }
    
    public void draw() {
        super.draw();
        
        if (KeyManager.KeysDown['A']) {
            Coords.x -= Speed;
        }
        if (KeyManager.KeysDown['D']) {
            Coords.x += Speed;
        }
    }

    public void mouseMoved() {
        Coords.x = mouseX - (ImgSize.x / 2);
    }
}
