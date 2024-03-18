class GShape extends GBase {
    public GObject Parent;
    public PVector Coords1;
    public color Color;
    
    public GShape(GObject parent, float x1, float y1, color _color) {
        super();
        
        Parent = parent;
        Coords1 = new PVector(x1, y1);
        Color = _color;
    }
}
