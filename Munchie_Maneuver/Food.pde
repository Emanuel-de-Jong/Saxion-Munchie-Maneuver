class Food extends GObject {
    public int Points;
    public int Radius;
    
    public Food(float x, float y, int points, int radius) {
        super(x, y);

        Points = points;
        Radius = radius;
    }
    
    public void draw() {
        super.draw();
        
        Coords.y += Globals.GRAVITY;
    }
}
