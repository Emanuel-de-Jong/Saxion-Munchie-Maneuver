class GShape extends GBase {
    public GObject Parent;
    public PVector Coords1;
    public float X1;
    public float Y1;
    
    public GShape(GObject parent, float x1, float y1) {
        super();
        
        Parent = parent;
        Coords1 = new PVector(x1, y1);
    }
}
