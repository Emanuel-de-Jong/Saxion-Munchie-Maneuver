class FoodBig extends Food {
    public FoodBig(float x, float y) {
        super(x, y, 15, 42.5);
        
        setImg(Assets.FoodImgs.get(floor(random(9))), 75, 75);

        GShapes.add(new GShapeCircle(this, ImgSize.x / 2, ImgSize.y / 2, color(255, 0, 0, 100), Radius * 2));
    }
}
