class GBase {
    public GBase() {
        Globals.GBasses.add(this);
    }

    public void destroy() {
        Globals.GBasses.remove(this);
    }

    public void draw() {}
  
    public void keyPressed() {}
  
    public void keyReleased() {}

    public void mouseMoved() {}
}
