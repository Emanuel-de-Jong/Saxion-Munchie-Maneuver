class GShapeCircle extends GShape {
    public float Size;

    public GShapeCircle(GObject parent, float x1, float y1, color _color, float size) {
        super(parent, x1, y1, _color);

        Size = size;
    }
    
    public void draw() {
        super.draw();
        
        stroke(0);
        strokeWeight(3);
        fill(Color);
        circle(Parent.Coords.x + Coords1.x, Parent.Coords.y + Coords1.y, Size);
    }
}
