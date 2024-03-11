class FoodSpawner extends GBase {
    public ArrayList<FoodLineCircle> FoodLineCircles = new ArrayList<FoodLineCircle>();
    public float speed = 5;
    public int direction = 1;
    public int spawnRate = 200;

    private int lastFoodLineCircleSpawn;
    private int x = width / 2;

    public FoodSpawner() {
        lastFoodLineCircleSpawn = millis();
    }

    public void draw() {
        super.draw();

        x += speed * direction;

        if (floor(random(100)) == 1) {
            direction *= -1;
        }

        if (x < 10) {
            direction = 1;
        }
        else if (x > width - 10) {
            direction = -1;
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
