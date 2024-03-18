class FoodSpawner extends GBase {
    public ArrayList<Food> Foods = new ArrayList<Food>();
    public float speed = 5;
    public int direction = 1;
    public int spawnRate = 250;

    private final int SPACING = 80;

    private int lastFoodSpawn;
    private int x = width / 2;
    private int spawnCount = 0;

    public FoodSpawner() {
        lastFoodSpawn = millis();
    }

    public void draw() {
        super.draw();

        x += speed * direction;

        if (floor(random(100)) == 1) {
            direction *= -1;
        }

        if (x < SPACING) {
            direction = 1;
        }
        else if (x > width - SPACING) {
            direction = -1;
        }
        
        if (millis() - lastFoodSpawn > spawnRate) {
            lastFoodSpawn = millis();

            spawnCount++;

            if (spawnCount % 4 == 0) {
                Foods.add(new FoodBig(x, 0));
            } else {
                Foods.add(new FoodSmall(x, 0));
            }
        }

        ArrayList<Food> foodsToDel = new ArrayList<Food>();
        for (Food food : Foods) {
            if (food.Coords.y < height + 100) continue;
            foodsToDel.add(food);
        }

        for (Food food : foodsToDel) {
            Foods.remove(food);
            food.destroy();
        }
    }
}
