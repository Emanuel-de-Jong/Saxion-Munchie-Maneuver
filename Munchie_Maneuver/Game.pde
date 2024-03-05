class Game extends GBase {
  public Character MainCharacter;
  
  public Game() {
    MainCharacter = new Character(width/2, 0);
    MainCharacter.Y = height - MainCharacter.ImgHeight;
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
