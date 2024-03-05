class Game extends GBase {
  public Character MainCharacter;
  
  public Game() {
    MainCharacter = new Character(width/2, 0);
    MainCharacter.Coords.y = height - MainCharacter.ImgSize.y;
  }
  
  public void display() {
    MainCharacter.display();
  }

  public void update() {
    MainCharacter.update();
  }
  
  public void handleKeyPressed() {
    MainCharacter.handleKeyPressed();
  }
}
