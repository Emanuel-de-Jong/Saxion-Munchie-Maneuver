class FoodSpawner extends GBase {
    public ArrayList<FoodLineCircle> FoodLineCircles = new ArrayList<FoodLineCircle>();
    private int lastFoodLineCircleSpawn;

    public FoodSpawner() {
        lastFoodLineCircleSpawn = millis();
    }

    public void draw() {
        super.draw();
        
        if (millis() - lastFoodLineCircleSpawn > 500) {
            lastFoodLineCircleSpawn = millis();
            FoodLineCircles.add(new FoodLineCircle(50, 0));
        }

        ArrayList<FoodLineCircle> circlesToDel = new ArrayList<FoodLineCircle>();
        for (FoodLineCircle circle : FoodLineCircles) {
            if (circle.Coords.y < height + 10) continue;
            circlesToDel.add(circle);
        }

        for (FoodLineCircle circle : circlesToDel) {
            FoodLineCircles.remove(circle);
            circle.destroy();
        }
    }
}
