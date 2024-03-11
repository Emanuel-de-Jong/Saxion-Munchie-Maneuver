class Game extends GBase {
    public Character MainCharacter;
    public ArrayList<FoodLineCircle> FoodLineCircles = new ArrayList<FoodLineCircle>();

    private int lastFoodLineCircleSpawn;
    
    public Game() {
        lastFoodLineCircleSpawn = millis();

        MainCharacter = new Character(width / 2, 0);
        MainCharacter.Coords.y = height - MainCharacter.ImgSize.y;
    }

    public void draw() {
        super.draw();
        
        if (millis() - lastFoodLineCircleSpawn > 750) {
            lastFoodLineCircleSpawn = millis();
            FoodLineCircles.add(new FoodLineCircle(50, 50));
        }

        ArrayList<FoodLineCircle> circlesToDel = new ArrayList<FoodLineCircle>();
        for (FoodLineCircle circle : FoodLineCircles) {
            if (circle.Coords.y < 300) continue;
            circlesToDel.add(circle);
        }

        for (FoodLineCircle circle : circlesToDel) {
            FoodLineCircles.remove(circle);
            circle.destroy();
        }
    }
}
