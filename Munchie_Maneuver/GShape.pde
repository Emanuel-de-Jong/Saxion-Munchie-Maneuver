class GShape extends GBase {
  public PVector Coords1;
  public float X1;
  public float Y1;
  
  public GShape(float x1, float y1) {
    super();
    
    Coords1 = new PVector(x1, y1);
  }
  
  public void display(PVector baseCoords) {}
}
