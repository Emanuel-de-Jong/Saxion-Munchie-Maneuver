class FoodSmall extends Food {
    public FoodSmall(float x, float y) {
        super(x, y, 5);
        
        GShapes.add(new GShapeCircle(this, 5, 5, color(255), 10));
    }
}
