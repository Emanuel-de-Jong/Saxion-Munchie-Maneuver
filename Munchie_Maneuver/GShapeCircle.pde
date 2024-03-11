class GShapeCircle extends GShape {
  public float Size;
  
  public GShapeCircle(float x1, float y1, float size) {
    super(x1, y1);
    
    Size = size;
  }
  
  public void display(PVector baseCoords) {
    super.display();
    
    stroke(0);
    strokeWeight(3);
    fill(color(0,0,0));
    circle(baseCoords.x + Coords1.x, baseCoords.y + Coords1.y, Size);
  }
}
