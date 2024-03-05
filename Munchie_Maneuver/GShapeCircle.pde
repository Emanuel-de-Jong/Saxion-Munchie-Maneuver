class GShapeCircle extends GShape {
  public float Size;
  
  public GShapeCircle(float x1, float y1, float size) {
    super(x1, y1);
    
    Size = size;
  }
  
  public void display(float baseX, float baseY) {
    stroke(0);
    strokeWeight(3);
    fill(color(0,0,0));
    circle(baseX + X1, baseY + Y1, Size);
  }
}
