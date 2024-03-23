class Background extends GObject {
    public EBackgroundScene CurrentScene;

    public Background() {
        super(0, 0);

        Layer = -100;
        CurrentScene = EBackgroundScene.SUN;
    }
    
    public void draw() {
        super.draw();

        switch (CurrentScene) {
            case SUN:
                background(200, 204, 75);
                break;
            case CLOUDS:
                background(57, 116, 184);
                break;
            case RAIN:
                background(178, 178, 178);
                break;
        }
    }
}
