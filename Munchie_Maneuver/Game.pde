class Game extends GBase {
    public Thread GenerateFoodLineCircleThread;

    public Character MainCharacter;
    public ArrayList<FoodLineCircle> FoodLineCircles = new ArrayList<FoodLineCircle>();
    
    public Game() {
        GenerateFoodLineCircleThread = new Thread(() -> generateFoodLineCircle());
        GenerateFoodLineCircleThread.start();

        MainCharacter = new Character(width / 2, 0);
        MainCharacter.Coords.y = height - MainCharacter.ImgSize.y;
    }

    public void generateFoodLineCircle() {
        while (true) {
            FoodLineCircles.add(new FoodLineCircle(50, 50));
            delay(500);
        }
    }

    public void update() {
        ArrayList<FoodLineCircle> circlesToDel = new ArrayList<FoodLineCircle>();
        for (FoodLineCircle circle : FoodLineCircles) {
            if (circle.Coords.y < 400) continue;
            circlesToDel.add(circle);
        }

        // circlesToDel.forEach(circle -> FoodLineCircles.remove(circle));
    }
}
