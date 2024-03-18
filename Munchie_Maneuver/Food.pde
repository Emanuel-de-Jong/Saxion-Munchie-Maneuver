class Food extends GObject {
    public int Points;
    
    public Food(float x, float y, int points) {
        super(x, y);

        Points = points;
    }
    
    public void draw() {
        super.draw();
        
        Coords.y += Globals.GRAVITY;
    }
}
