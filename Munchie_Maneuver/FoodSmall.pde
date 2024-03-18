class FoodSmall extends Food {
    public FoodSmall(float x, float y) {
        super(x, y, 5);
        
        GShapes.add(new GShapeCircle(this, 5, 5, 10, color(255, 0, 0)));
    }
}
