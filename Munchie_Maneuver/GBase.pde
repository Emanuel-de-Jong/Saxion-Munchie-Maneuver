class GBase {
    public GBase() {
        Globals.GBasses.add(this);
    }

    protected void finalize() {
        Globals.GBasses.remove(this);
    }

    public void display() {}

    public void update() {}
  
    public void handleKeyPressed() {}
  
    public void handleKeyReleased() {}
}