class Game extends GBase {
    public Character MainCharacter;

    private FoodSpawner foodSpawner;
    
    public Game() {
        MainCharacter = new Character(width / 2, 0);
        MainCharacter.Coords.y = height - MainCharacter.ImgSize.y;

        foodSpawner = new FoodSpawner();
    }

    public void draw() {
        super.draw();
        
        ArrayList<Food> foodsToDel = new ArrayList<Food>();

        float characterX1 = MainCharacter.Coords.x;
        float characterX2 = characterX1 + MainCharacter.ImgSize.x;
        for (Food food : foodSpawner.Foods) {
            if (food.Coords.y < MainCharacter.Coords.y) continue;

            boolean isSmallFood = false;
            if (food instanceof FoodSmall) {
                isSmallFood = true;
            }

            float foodX1 = food.Coords.x;
            if (isSmallFood) {
                foodX1 -= 10;
            }

            float foodX2 = foodX1;

            if (isSmallFood) {
                foodX2 += 20;
            } else {
                foodX2 += food.ImgSize.x;
            }

            if (foodX1 >= characterX1 && foodX1 <= characterX2 ||
                foodX1 >= characterX1 && foodX1 <= characterX2) {
                foodsToDel.add(food);
            }
        }

        for (Food food : foodsToDel) {
            foodSpawner.Foods.remove(food);
            food.destroy();
        }
    }
}
