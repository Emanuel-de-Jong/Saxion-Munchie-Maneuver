class Character extends GObject {
  public float Speed = 20;
  
  public Character(float x, float y) {
    super(x, y);
    
    setImg("character.png", 100, 100);
    GShapes.add(new GShapeCircle(5, 5, 10));
  }

  public void update() {
    super.update();

    if (KeyManager.KeysDown['A']) {
      X -= Speed;
    }
    if (KeyManager.KeysDown['D']) {
      X += Speed;
    }
  }
  
  public void handleKeyPressed() {
    super.handleKeyPressed();
  }
}
