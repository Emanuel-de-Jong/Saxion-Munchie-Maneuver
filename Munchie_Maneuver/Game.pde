class Game extends GBase {
    public Character MainCharacter;

    private FoodSpawner foodSpawner;
    
    public Game() {
        MainCharacter = new Character(width / 2, 0);
        MainCharacter.Coords.y = height - MainCharacter.ImgSize.y;

        foodSpawner = new FoodSpawner();
    }
}
