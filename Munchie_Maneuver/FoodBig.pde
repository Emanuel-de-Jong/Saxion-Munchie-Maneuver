class FoodBig extends Food {
    public FoodBig(float x, float y) {
        super(x, y, 15);
        
        setImg(Assets.FoodImgs.get(floor(random(9))), 75, 75);
    }
}
