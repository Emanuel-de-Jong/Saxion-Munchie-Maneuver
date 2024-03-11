class Character extends GObject {
  public float Speed = 3;
  
  public Character(float x, float y) {
    super(x, y);
    
    setImg("Character.png", 100, 80);
    GShapes.add(new GShapeCircle(5, 5, 10));
  }

  public void update() {
    super.update();

    if (KeyManager.KeysDown['A']) {
      Coords.x -= Speed;
    }
    if (KeyManager.KeysDown['D']) {
      Coords.x += Speed;
    }
  }
  
  public void handleKeyPressed() {
    super.handleKeyPressed();
  }
}
