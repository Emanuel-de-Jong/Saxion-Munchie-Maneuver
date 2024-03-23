class GShapeRect extends GShape {
    public PVector Size;

    public GShapeRect(GObject parent, float x1, float y1, color _color, float width, float height) {
        super(parent, x1, y1, _color);

        Size = new PVector(width, height);
    }
    
    public void draw() {
        super.draw();
        
        stroke(0);
        strokeWeight(2);
        fill(Color);
        rect(Parent.Coords.x + Coords1.x, Parent.Coords.y + Coords1.y, Size.x, Size.y);
    }
}
