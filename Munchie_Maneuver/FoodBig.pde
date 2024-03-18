class FoodBig extends Food {
    public FoodBig(float x, float y) {
        super(x, y, 15);
        
        GShapes.add(new GShapeCircle(this, 5, 5, 20, color(0, 0, 0)));
    }
}
