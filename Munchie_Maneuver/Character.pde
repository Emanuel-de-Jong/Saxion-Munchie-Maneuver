class Character extends GObject {
    public int Points = 0;
    public float Speed = 6;
    public float Radius = 42.5;
    
    public Character(float x, float y) {
        super(x, y);
        
        setImg(Assets.CharacterImg, 150, 82.5);

        // Visualizes collision
        // GShapes.add(new GShapeCircle(this, ImgSize.x / 2, ImgSize.y / 2, color(0, 255, 0, 100), Radius * 2));
    }
    
    public void draw() {
        super.draw();
        
        if (KeyManager.KeysDown['A']) {
            Coords.x -= Speed;
        }
        if (KeyManager.KeysDown['D']) {
            Coords.x += Speed;
        }

        fill(0);
        textSize(36);
        text("Points: " + Points, 10, 40);
    }

    public void mouseMoved() {
        super.mouseMoved();
        
        Coords.x = mouseX - (ImgSize.x / 2);
    }
}
