class Game extends GBase {
  public Character MainCharacter;
  public ArrayList<FoodLineCircle> FoodLineCircles;
  
  public Game() {
    MainCharacter = new Character(width/2, 0);
    MainCharacter.Coords.y = height - MainCharacter.ImgSize.y;

    FoodLineCircles = new ArrayList<FoodLineCircle>();
    FoodLineCircles.add(new FoodLineCircle(50, 0));
    FoodLineCircles.add(new FoodLineCircle(50, 20));
    FoodLineCircles.add(new FoodLineCircle(50, 40));
  }
  
  public void display() {
    MainCharacter.display();
    FoodLineCircles.forEach(flc -> flc.display());
  }

  public void update() {
    MainCharacter.update();
    FoodLineCircles.forEach(flc -> flc.update());
  }
  
  public void handleKeyPressed() {
    MainCharacter.handleKeyPressed();
  }
}
