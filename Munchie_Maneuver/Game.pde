import ddf.minim.*;

class Game extends GBase {
    public Character MainCharacter;

    private FoodSpawner foodSpawner;
    private AudioSample coinCollectPlayer;
    private AudioSample EatPlayer;
    
    public Game() {
        coinCollectPlayer = Globals.minim.loadSample(dataPath("/audio/CoinCollect.mp3"), 512);
        EatPlayer = Globals.minim.loadSample(dataPath("/audio/Eat.mp3"), 512);

        MainCharacter = new Character(width / 2, 0);
        MainCharacter.Coords.y = height - MainCharacter.ImgSize.y;

        foodSpawner = new FoodSpawner();
    }

    public void draw() {
        super.draw();
        
        ArrayList<Food> foodsToDel = new ArrayList<Food>();

        float characterX = MainCharacter.Coords.x + MainCharacter.ImgSize.x / 2;
        float characterY = MainCharacter.Coords.y + MainCharacter.ImgSize.y / 2;
        for (Food food : foodSpawner.Foods) {
            if (food.Coords.y < MainCharacter.Coords.y) continue;

            float foodX = food.Coords.x;
            float foodY = food.Coords.y;

            if (food instanceof FoodBig) {
                foodX += food.ImgSize.x / 2;
                foodY += food.ImgSize.y / 2;
            }

            if (dist(characterX, characterY, foodX, foodY) < MainCharacter.Radius + food.Radius) {
                foodsToDel.add(food);

                MainCharacter.Points += food.Points;

                if (food instanceof FoodBig) {
                    EatPlayer.trigger();
                } else {
                    // coinCollectPlayer.trigger();
                }
            }
        }

        for (Food food : foodsToDel) {
            foodSpawner.Foods.remove(food);
            food.destroy();
        }
    }
}
