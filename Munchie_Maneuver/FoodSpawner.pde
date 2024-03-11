class FoodSpawner extends GBase {
    public ArrayList<FoodLineCircle> FoodLineCircles = new ArrayList<FoodLineCircle>();
    public float speed = 5;
    public int direction = 1;
    public int spawnRate = 200;

    private int lastFoodLineCircleSpawn;
    private int x = 0;

    public FoodSpawner() {
        lastFoodLineCircleSpawn = millis();
    }

    public void draw() {
        super.draw();

        x += speed * direction;

        if (x < 0 || x > width) {
            direction *= -1;
        }
        
        if (millis() - lastFoodLineCircleSpawn > spawnRate) {
            lastFoodLineCircleSpawn = millis();
            FoodLineCircles.add(new FoodLineCircle(x, 0));
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
