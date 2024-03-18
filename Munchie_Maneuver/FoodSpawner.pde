class FoodSpawner extends GBase {
    public ArrayList<Food> Foods = new ArrayList<Food>();
    public float speed = 5;
    public int direction = 1;
    public int spawnRate = 200;

    private int lastFoodSpawn;
    private int x = width / 2;

    public FoodSpawner() {
        lastFoodSpawn = millis();
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
        
        if (millis() - lastFoodSpawn > spawnRate) {
            lastFoodSpawn = millis();
            Foods.add(new FoodSmall(x, 0));
        }

        ArrayList<Food> circlesToDel = new ArrayList<Food>();
        for (Food circle : Foods) {
            if (circle.Coords.y < height + 10) continue;
            circlesToDel.add(circle);
        }

        for (Food circle : circlesToDel) {
            Foods.remove(circle);
            circle.destroy();
        }
    }
}
