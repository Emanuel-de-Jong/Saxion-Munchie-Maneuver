static class Assets {
    private static PApplet pApplet;

    public static PImage FoodImgMap;
    public static PImage CharacterImg;

    public static void init(PApplet _pApplet) {
        pApplet = _pApplet;

        CharacterImg = pApplet.loadImage(pApplet.dataPath("/imgs/Character.png"));
        FoodImgMap = pApplet.loadImage(pApplet.dataPath("/imgs/Foods.png"));
        // FoodImgMap.copy(0, 0, 426, 415, 0, 0, 100, 100);
    }
}
