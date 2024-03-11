class GShapeCircle extends GShape {
  public float Size;
  
  public GShapeCircle(GObject parent, float x1, float y1, float size) {
    super(parent, x1, y1);
    
    Size = size;
  }
  
  public void draw() {
    super.draw();
    
    stroke(0);
    strokeWeight(3);
    fill(color(0,0,0));
    circle(Parent.Coords.x + Coords1.x, Parent.Coords.y + Coords1.y, Size);
  }
}
