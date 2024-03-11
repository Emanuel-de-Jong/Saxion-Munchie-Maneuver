class GBase {
    public GBase() {
        Globals.GBasses.add(this);
    }

    protected void finalize() {
        Globals.GBasses.remove(this);
    }

    public void draw() {}

    public void update() {}
  
    public void keyPressed() {}
  
    public void keyReleased() {}
}