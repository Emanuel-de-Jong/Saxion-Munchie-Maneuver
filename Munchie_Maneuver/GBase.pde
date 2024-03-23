class GBase {
    public int Layer = 0;

    private boolean off = false;

    public boolean getOff() {
        return off;
    }

    public void setOff(boolean value) {
        off = value;
    }

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
