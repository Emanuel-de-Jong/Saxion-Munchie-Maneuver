class FoodSmall extends Food {
    public FoodSmall(float x, float y) {
        super(x, y, 5, 5);
        
        GShapes.add(new GShapeCircle(this, 0, 0, color(255), 10));
    }
}
