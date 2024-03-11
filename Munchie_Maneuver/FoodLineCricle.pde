class FoodLineCircle extends GObject {
  public FoodLineCircle(float x, float y) {
    super(x, y);
    
    GShapes.add(new GShapeCircle(5, 5, 10));
  }

  public void update() {
    super.update();

    Coords.y += Globals.GRAVITY;
  }
}
